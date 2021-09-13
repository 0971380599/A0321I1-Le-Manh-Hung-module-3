USE my_database;
CREATE TABLE my_database.contacts(
	contact_id INT NOT NULL AUTO_INCREMENT,
	last_name VARCHAR(50) NOT NULL,
	first_name VARCHAR(25),
	birthday DATE,
	PRIMARY KEY (contact_id)
);
SELECT * FROM contacts;
DROP TABLE contacts;
ALTER TABLE contacts 
	ADD address varchar(40) NOT NULL
    AFTER contact_id;
ALTER TABLE contacts
  MODIFY last_name varchar(50) NULL;
