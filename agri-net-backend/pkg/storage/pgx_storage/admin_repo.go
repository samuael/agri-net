package pgx_storage

import (
	"context"
	"errors"
	"fmt"

	"github.com/jackc/pgx/v4/pgxpool"
	"github.com/samuael/agri-net/agri-net-backend/pkg/admin"
	"github.com/samuael/agri-net/agri-net-backend/pkg/constants/model"
)

type AdminRepo struct {
	DB *pgxpool.Pool
}

func NewAdminRepo(conn *pgxpool.Pool) admin.IAdminRepo {
	return &AdminRepo{
		DB: conn,
	}
}

func (repo *AdminRepo) GetAdminByEmail(ctx context.Context, email string) (*model.Admin, error) {
	admin := &model.AdminNullable{}

	er := repo.DB.QueryRow(ctx, `select id,firstname,lastname,phone,email,imageurl,created_at,password,lang,merchants_created,
	stores_created,address_id,created_by from admin where email=$1`, email).
		Scan(&(admin.ID), &(admin.Firstname), &(admin.Lastname), &(admin.Phone), &(admin.Email), &(admin.Imgurl), &(admin.CreatedAt), &(admin.Password), &(admin.Lang), &(admin.MerchantsCreated),
			&(admin.StorsCreated), &(admin.FieldAddressRef), &(admin.CreatedBy),
		)
	if er != nil {
		return nil, er
	}
	return admin.GetAdmin(), nil
}
func (repo *AdminRepo) CreateAdmin(ctx context.Context, admin *model.Admin) (int, int, error) {
	addressID := 0
	adminID := 0
	if admin.FieldAddress == nil {
		admin.FieldAddress = &model.Address{}
	}
	er := repo.DB.QueryRow(ctx, `select * from createAdminInstance($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15)`,
		admin.Firstname, admin.Lastname, admin.Phone, admin.Email, admin.Password, admin.Lang, admin.CreatedBy,
		admin.FieldAddress.Kebele, admin.FieldAddress.Woreda, admin.FieldAddress.City, admin.FieldAddress.Region, admin.FieldAddress.Zone,
		admin.FieldAddress.UniqueAddressName, fmt.Sprint(admin.FieldAddress.Latitude), fmt.Sprint(admin.FieldAddress.Longitude),
	).Scan((&adminID), &(addressID))
	if er != nil {
		return adminID, addressID, er
	}
	if adminID < -1 {
		return adminID, 0, errors.New("unauthorized admin instance creation")
	} else if adminID == -2 {
		return adminID, 0, errors.New("error while creating address")
	} else if adminID == -3 {
		return adminID, 0, errors.New("error while creating the admin instance")
	}
	admin.ID = uint64(adminID)
	if admin.FieldAddress != nil {
		admin.FieldAddress.ID = uint(addressID)
	}
	return int(admin.ID), int(admin.FieldAddress.ID), nil
}
func (repo *AdminRepo) GetAdmins(ctx context.Context, offset, limit int) ([]*model.Admin, error) {
	return nil, nil
}
func (repo *AdminRepo) DeleteAdminByID(ctx context.Context, id uint64) (int, error) {
	return 0, nil
}
