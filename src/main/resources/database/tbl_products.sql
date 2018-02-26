CREATE TABLE aubmgecb_hodovka.tbl_products (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL,
  compatibility VARCHAR(255),
  id_category INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (id_category) REFERENCES tbl_categories(id)
  );