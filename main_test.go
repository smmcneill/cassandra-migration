package main

import (
	"fmt"
	"testing"

	"github.com/gocql/gocql"
)

func TestMe(t *testing.T) {
	cluster := gocql.NewCluster("127.0.0.1")
	cluster.Keyspace = "herbie"
	session, err := cluster.CreateSession()
	if err != nil {
		t.Fatal(err)
	}
	defer session.Close()

	if err := session.Query(`INSERT INTO shannon (shannon_id, emp_city, emp_name) VALUES (?, ?, ?)`,
		1, "Hoboken", "Shannon").Exec(); err != nil {
		t.Fatal(err)
	}

	scanner := session.Query(`SELECT shannon_id, emp_city FROM shannon WHERE shannon_id = ?`, 1).Iter().Scanner()
	for scanner.Next() {
		var (
			id   int
			text string
		)
		err = scanner.Scan(&id, &text)
		if err != nil {
			t.Fatal(err)
		}
		fmt.Println("Details:", id, text)
	}
	// scanner.Err() closes the iterator, so scanner nor iter should be used afterwards.
	if err := scanner.Err(); err != nil {
		t.Fatal(err)
	}
}
