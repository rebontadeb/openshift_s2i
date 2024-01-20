package controllers

import (
	"github.com/gofiber/fiber/v2"
)

func CreateTask(c *fiber.Ctx) error {
	return c.Status(200).JSON(fiber.Map{
		"header":  "Sample Header",
		"body":    "Sample Body",
		"status":  "success",
		"message": "Task Created",
	})

}
