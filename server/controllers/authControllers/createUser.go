package authcontrollers

import (
	"context"
	"encoding/json"
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/harsh082ip/Foodibles_India/tree/main/server/database"
	"github.com/harsh082ip/Foodibles_India/tree/main/server/helpers"
	"github.com/harsh082ip/Foodibles_India/tree/main/server/models"
	"go.mongodb.org/mongo-driver/bson/primitive"
)

func CreateUser(c *gin.Context) {

	var jsonData models.User
	collName := "Users"
	coll := database.OpenCollection(database.Client, collName)
	if err := json.NewDecoder(c.Request.Body).Decode(&jsonData); err != nil {

		c.JSON(http.StatusBadRequest, gin.H{
			"status": "Error in decoding the body",
			"error":  err.Error(),
		})
		return
	}

	emailExists, err := helpers.CheckIfDocumentExists("email", jsonData.Email, "Users", false)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"status": "Error looking for email",
			"error":  err.Error(),
		})
		return
	}

	phoneExists, err := helpers.CheckIfDocumentExists("phone", jsonData.Phone, "Users", false)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"status": "Error looking for phone",
			"error":  err.Error(),
		})
		return
	}

	if jsonData.Name != "" && jsonData.Email != "" && jsonData.Password != "" && jsonData.Role != "" && jsonData.Phone != "" {
		if !emailExists && !phoneExists {

			// Verify email
			res, err := helpers.VerifyEmail(jsonData.Email)
			if !res {
				c.JSON(http.StatusInternalServerError, gin.H{
					"status": "Email Verification Failed",
					"error":  err.Error(),
				})
				return
			}

			// Check password validity
			if !helpers.CheckPasswordValidity(jsonData.Password) {
				c.JSON(http.StatusBadRequest, gin.H{
					"Error":  "password constraints not fulfilled",
					"detail": "Password does not meet the required criteria: it must be at least 8 characters long, contain at least one lowercase letter, one uppercase letter, one special character, and one numeric digit.",
				})
				return
			}

			// Generate ID for user
			jsonData.ID = primitive.NewObjectID()
			jsonData.UserID = jsonData.ID.Hex()

			// Hash password
			password, err := helpers.HashPassword(jsonData.Password)
			if err != nil {
				c.JSON(http.StatusInternalServerError, gin.H{
					"status": "Hashing Failed",
					"Error":  err.Error(),
				})
				return
			}

			jsonData.Password = password

			// Insert user data into database
			_, err = coll.InsertOne(context.TODO(), jsonData)
			if err != nil {
				c.JSON(http.StatusInternalServerError, gin.H{
					"status": "Error is attempting to SignUp",
					"error":  err.Error(),
				})
				return
			}

			c.JSON(http.StatusOK, gin.H{
				"status": "User SignUp Successful",
			})
			return

		} else {
			c.JSON(http.StatusBadRequest, gin.H{
				"status": "User Already Exists",
				"error":  "A user with given email or phone already exists",
			})
			return
		}
	} else {
		c.JSON(http.StatusBadRequest, gin.H{
			"status": "Missing Details",
			"error":  "Fill fill out all the details to proceed",
		})
		return
	}
}
