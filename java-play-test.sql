CREATE TABLE `User` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `hashedPassword` char(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE Memo (
    id int NOT NULL,
    fUserID int(15),
    InsertDateTime DATETIME,
    ClientName varchar(255) NOT NULL,
    Memo varchar(255) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (fUserID) REFERENCES User(id)
)