package rest

import (
	"context"
	"encoding/json"
	"net/http"
	"strconv"
	"time"

	"github.com/gin-gonic/gin"
	"github.com/samuael/agri-net/agri-net-backend/pkg/constants/model"
	"github.com/samuael/agri-net/agri-net-backend/pkg/constants/state"
	"github.com/samuael/agri-net/agri-net-backend/pkg/product"
	"github.com/samuael/agri-net/agri-net-backend/platforms/translation"
)

type IProductHandler interface {
	CreateProductInstance(c *gin.Context)
	GetProducts(c *gin.Context)
	GetProductByID(c *gin.Context)
	SubscribeForProduct(c *gin.Context)
	UnsubscriberForProduct(c *gin.Context)
}

type ProductHandler struct {
	Service product.IProductService
}

func NewProductHandler(service product.IProductService) IProductHandler {
	return &ProductHandler{
		Service: service,
	}
}

func (phandler *ProductHandler) CreateProductInstance(c *gin.Context) {
	ctx := c.Request.Context()
	session := ctx.Value("session").(*model.Session)

	in := &struct {
		UnitID         uint    `json:"unit_id"`
		Name           string  `json:"name"`
		ProductionArea string  `json:"production_area"`
		CurrentPrice   float64 `json:"current_price"`
	}{}
	res := &struct {
		Errors     map[string]string `json:"errors,omitempty"`
		Msg        string            `json:"msg"`
		Product    *model.Product    `json:"product,omitempty"`
		StatusCode int               `json:"status_code"`
	}{}
	jsonDecoder := json.NewDecoder(c.Request.Body)
	er := jsonDecoder.Decode(in)
	if er != nil || in.UnitID > 14 || in.UnitID <= 0 || in.Name == "" || in.CurrentPrice < 0 {
		res.StatusCode = http.StatusBadRequest
		res.Msg = translation.Translate(session.Lang, "bad request input")
		if in.UnitID > 14 || in.UnitID < 0 {
			res.Errors["unit"] = translation.Translate(session.Lang, "invalid unit of measurement selection")
		}
		_, er := strconv.Atoi(in.Name)
		if in.Name == "" || er == nil {
			res.Errors["name"] = "invalid product name"
		}
		_, er = strconv.Atoi(in.ProductionArea)
		if in.ProductionArea == "" || er == nil {
			res.Errors["name"] = translation.Translate(session.Lang, "invalid product production name")
		}
		if in.CurrentPrice < 0 {
			res.Errors["currentPrice"] = translation.Translate(session.Lang, "the price of a prduct can not be less than 0")
		}
		res.StatusCode = http.StatusBadRequest
		c.JSON(res.StatusCode, res)
		return
	}
	// checking the existance of the product with this ID.
	ctx = context.WithValue(ctx, "name", in.Name)
	ctx = context.WithValue(ctx, "production_area", in.ProductionArea)
	ctx = context.WithValue(ctx, "unit_id", uint8(in.UnitID))
	exists := phandler.Service.CheckTheExistanceOfProductInformation(ctx)
	if exists {
		res.Msg = translation.Translate(session.Lang, "product with simlar information already exist")
		res.StatusCode = http.StatusConflict
		c.JSON(res.StatusCode, res)
		return
	}
	product := &model.Product{
		Name:           in.Name,
		ProductionArea: in.ProductionArea,
		UnitID:         uint8(in.UnitID),
		CurrentPrice:   in.CurrentPrice,
		CreatedAt:      uint64(time.Now().Unix()),
		CreatedBy:      session.ID,
		LastUpdateTime: uint64(time.Now().Unix()),
	}
	var status int
	ctx = context.WithValue(ctx, "product", product)
	product, status, er = phandler.Service.CreateNewProduct(ctx)
	if er != nil || status != state.STATUS_OK {
		if er != nil {
			println(er.Error())
		}
		if status == state.STATUS_DUPLICATE_RECORD {
			res.StatusCode = http.StatusConflict
			res.Msg = translation.Translate(session.Lang, "product with similar information already exist")
			c.JSON(res.StatusCode, res)
			return
		} else {
			res.StatusCode = http.StatusInternalServerError
			res.Msg = translation.Translate(session.Lang, "internal problem, please try again later!")
			c.JSON(res.StatusCode, res)
			return
		}
	}
	res.Product = product
	res.StatusCode = http.StatusCreated
	res.Msg = translation.Translate(session.Lang, "product created succesfuly")
	c.JSON(res.StatusCode, res)
	println(ctx)
}
func (phandler *ProductHandler) GetProductByID(c *gin.Context) {
	ctx := c.Request.Context()
	// session := ctx.Value("session").(*model.Session)
	res := &struct {
		StatusCode int            `json:"status_code"`
		Product    *model.Product `json:""product,omitempty`
		Msg        string         `json:"msg,omitempty"`
	}{}
	productID, er := strconv.Atoi(c.Query("id"))
	if er != nil {
		res.StatusCode = http.StatusBadRequest
		res.Msg = translation.TranslateIt("bad request")
		c.JSON(res.StatusCode, res)
		return
	}
	ctx = context.WithValue(ctx, "product_id", uint8(productID))
	product, status, er := phandler.Service.GetProductByID(ctx)
	if status != state.STATUS_OK || product == nil || er != nil {
		res.StatusCode = http.StatusNotFound
		res.Msg = translation.TranslateIt("record not found")
		c.JSON(res.StatusCode, res)
		return
	}
	res.Product = product
	res.StatusCode = http.StatusOK
	res.Msg = translation.TranslateIt("product found")
	c.JSON(res.StatusCode, res)
}

func (phandler *ProductHandler) GetProducts(c *gin.Context) {
	ctx := c.Request.Context()
	res := &struct {
		StatusCode int              `json:"status_code"`
		Products   []*model.Product `json:""products,omitempty`
		Msg        string           `json:"msg,omitempty"`
	}{}

	// ctx = context.WithValue(ctx, "product_id", uint8(productID))
	products, status, er := phandler.Service.GetProducts(ctx)
	if status != state.STATUS_OK || products == nil || er != nil {
		res.StatusCode = http.StatusNotFound
		res.Msg = translation.TranslateIt("record not found")
		c.JSON(res.StatusCode, res)
		return
	}
	res.Products = products
	res.StatusCode = http.StatusOK
	res.Msg = translation.TranslateIt("product found")
	c.JSON(res.StatusCode, res)
}

// SubscribeForProduct ...
func (phandler *ProductHandler) SubscribeForProduct(c *gin.Context) {
	ctx := c.Request.Context()
	res := &struct {
		StatusCode int    `json:"status_code"`
		Msg        string `json:"msg,omitempty"`
	}{}
	session := ctx.Value("session").(*model.SubscriberSession)
	productID, er := strconv.Atoi(c.Query("product_id"))
	if er != nil || productID <= 0 {
		res.StatusCode = http.StatusBadRequest
		res.Msg = translation.Translate(session.Lang, "invalid product id")
		c.JSON(res.StatusCode, res)
		return
	}
	ctx = context.WithValue(ctx, "subscriber_id", session.ID)
	ctx = context.WithValue(ctx, "product_id", uint8(productID))
	status := phandler.Service.CreateSubscriptions(ctx)
	if status == -1 {
		res.StatusCode = http.StatusNotFound
		res.Msg = translation.Translate(session.Lang, "subscriber with this id doesn't exist")
	} else if status == -2 {
		res.StatusCode = http.StatusNotFound
		res.Msg = translation.Translate(session.Lang, "product with this id doesn't exist")
	} else if status == -3 {
		res.StatusCode = http.StatusConflict
		res.Msg = translation.Translate(session.Lang, "you have already subscribed for a product")
	}
	if status < 0 {
		c.JSON(res.StatusCode, res)
		return
	}
	res.Msg = translation.Translate(session.Lang, "subscription created succesfuly")
	res.StatusCode = http.StatusOK
	c.JSON(res.StatusCode, res)
}

func (phandler *ProductHandler) UnsubscriberForProduct(c *gin.Context) {
	ctx := c.Request.Context()
	res := &struct {
		StatusCode int    `json:"status_code"`
		Msg        string `json:"msg,omitempty"`
	}{}
	session := ctx.Value("session").(*model.SubscriberSession)
	productID, er := strconv.Atoi(c.Query("product_id"))
	if er != nil || productID <= 0 {
		res.StatusCode = http.StatusBadRequest
		res.Msg = translation.Translate(session.Lang, "invalid product id")
		c.JSON(res.StatusCode, res)
		return
	}
	ctx = context.WithValue(ctx, "subscriber_id", session.ID)
	ctx = context.WithValue(ctx, "product_id", uint8(productID))
	status := phandler.Service.UnsubscribeProduct(ctx)
	if status == -1 {
		res.StatusCode = http.StatusNotFound
		res.Msg = translation.Translate(session.Lang, "subscriber with this id doesn't exist")
	} else if status == -2 {
		res.StatusCode = http.StatusNotFound
		res.Msg = translation.Translate(session.Lang, "product with this id doesn't exist")
	} else if status == -3 {
		res.StatusCode = http.StatusNotFound
		res.Msg = translation.Translate(session.Lang, "you have not subscribed for this product yet")
	}
	if status < 0 {
		c.JSON(res.StatusCode, res)
		return
	}
	res.Msg = translation.Translate(session.Lang, "un-subscribed succesfuly")
	res.StatusCode = http.StatusOK
	c.JSON(res.StatusCode, res)
}