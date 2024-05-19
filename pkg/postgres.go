package database

import (
	"database/sql"
	_ "github.com/lib/pq"
)

func NewPostgresDBPool(driver string, uri string) (*sql.DB, error) {
	db, err := sql.Open(driver, uri)
	if err != nil {
		return nil, err
	}

	return db, err
}
