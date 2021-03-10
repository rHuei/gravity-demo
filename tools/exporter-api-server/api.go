package main

import (
	"github.com/gin-gonic/gin"
	log "github.com/sirupsen/logrus"
)

func main() {
	r := gin.Default()
	r.POST("/ex", func(c *gin.Context) {
		data, _ := c.GetRawData()
		log.Info(string(data))
		c.JSON(200, gin.H{
			"message": "done",
		})
	})
	r.Run() // listen and serve on 0.0.0.0:8080 (for windows "localhost:8080")
}
