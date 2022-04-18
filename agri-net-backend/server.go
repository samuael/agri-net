package main

import (
	"fmt"
	"log"
	"net/http"
	"os"

	"github.com/belayhun-arage/Agri-Net/agri-net-backend/controller"
	router "github.com/belayhun-arage/Agri-Net/agri-net-backend/http"
)

var (
	httpRouter                               = router.NewMuxrouter()
	port                                     = os.Getenv("PORT")
	controllee controller.IProductController = controller.NewProductController()
)

func main() {

	log.Printf("Server Running on port: %v", port)

	httpRouter.GET("/product", controllee.getProducts(http.ResponseWriter, *http.Request))
	httpRouter.POST("/product", controllee.postNewProduct)
	// serve on the TCP network
	httpRouter.SERVE(fmt.Sprintf(":%v", port))
}
