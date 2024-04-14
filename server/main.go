package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/harsh082ip/Foodibles_India/tree/main/server/routes"
)

const (
	WEBPORT = "0.0.0.0:8006"
)

func main() {

	router := gin.Default()

	api := router.Group("/v1")

	{
		routes.AuthRoutes(api)

	}

	router.GET("/", func(ctx *gin.Context) {
		ctx.JSON(http.StatusOK, gin.H{
			"message": "Welcome to Foodibles India",
		})
	})

	router.Run(WEBPORT)
}
