

GRANT ALL privileges ON BOOKMANAGER.* TO aubmgecb_manager@localhost;
GRANT usage ON *.* TO aubmgecb_manager@localhost identified BY 'manager123';
CREATE DATABASE IF NOT EXISTS aubmgecb_hodovka;



CREATE TABLE BOOKMANAGER.BOOK (
  ID INT NOT NULL AUTO_INCREMENT,
  BOOK_TITLE VARCHAR(255) NOT NULL,
  BOOK_AUTHOR VARCHAR(255) NOT NULL,
  BOOK_PRICE INT NOT NULL,
  PRIMARY KEY (ID));
