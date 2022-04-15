package rest

import (
	"log"
	"net/http"
	"os"
	"strings"

	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
	"github.com/julienschmidt/httprouter"
	_ "github.com/samuael/agri-net/agri-net-backend/api"
	"github.com/samuael/agri-net/agri-net-backend/cmd/server/service/message_broadcast_service"
	"github.com/samuael/agri-net/agri-net-backend/pkg/http/rest/middleware"
)

// Route returns an http handler for the api.
func Route(
	rules middleware.Rules,
	subscriberhandler ISubscriberHandler,
	superadminhandler ISuperadminHandler,
	producthandler IProductHandler,
	communicationHandler message_broadcast_service.IClientConnetionHandler,
) *gin.Engine {
	router := gin.Default()
	router.Use(cors.New(cors.Config{
		AllowMethods:     []string{"GET", "PUT", "POST", "DELETE", "OPTIONS"},
		AllowOrigins:     []string{"http://localhost:3000", "http://localhost:3001", "http://localhost:8080", "https://facebook.com"},
		AllowHeaders:     []string{"Content-type", "*"},
		AllowCredentials: true,
	}))

	router.POST("/api/info/register", subscriberhandler.RegisterSubscriber)
	router.POST("/api/subscription/registration/confirm", subscriberhandler.ConfirmRegistrationSubscription)
	router.POST("/api/subscription/login", subscriberhandler.SubscriberLoginWithPhone)
	router.POST("/api/subscription/confirm", subscriberhandler.ConfirmLoginSubscription)
	// -------------------------------------------------------------------------------
	router.POST("/api/superadmin/login", superadminhandler.SuperadminLogin)

	router.POST("/api/superadmin/product/new", rules.Authenticated(), rules.Authorized(), producthandler.CreateProductInstance)
	router.GET("/api/product", producthandler.GetProductByID)
	router.GET("/api/products", producthandler.GetProducts)
	router.GET("/api/product/subscribe", rules.AuthenticatedSubscriber(), producthandler.SubscribeForProduct)
	router.GET("/api/product/unsubscribe", rules.AuthenticatedSubscriber(), producthandler.UnsubscriberForProduct)

	// router.GET("/api/connections/", rules.Authenticated(), func(c *gin.Context) gin.HandlerFunc {
	// })

	router.RouterGroup.Use(FilterDirectory())
	{
		router.StaticFS("/images/", http.Dir(os.Getenv("ASSETS_DIRECTORY")+"images/"))
	}
	return router
}

// AccessControl ... a method.
func AccessControl(h httprouter.Handle) httprouter.Handle {
	return httprouter.Handle(func(w http.ResponseWriter, r *http.Request, params httprouter.Params) {
		w.Header().Set("Access-Control-Allow-Origin", "*")
		w.Header().Set("Access-Control-Allow-Methods", "GET, POST, OPTIONS,PUT, DELETE")
		w.Header().Set("Access-Control-Allow-Headers", "Origin, Content-Type")

		if r.Method == "OPTIONS" {
			return
		}
		h(w, r, params)
	})
}
func FilterDirectory() gin.HandlerFunc {
	return func(c *gin.Context) {
		log.Println(" Filter Directory ")
		if strings.HasSuffix(c.Request.URL.Path, "/") {
			c.AbortWithStatus(http.StatusUnauthorized)
			return
		}
		c.Next()
	}
}