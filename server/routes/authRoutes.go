package routes

import (
	"github.com/gin-gonic/gin"
	authcontrollers "github.com/harsh082ip/Foodibles_India/tree/main/server/controllers/authControllers"
)

func AuthRoutes(incomingRoutes *gin.RouterGroup) {

	incomingRoutes.POST("/auth/reguserandsentotp", authcontrollers.CreateUser)
}
