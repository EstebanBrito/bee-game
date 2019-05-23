CREATE DATABASE beegame;
USE beegame;
CREATE TABLE users(
	id_user SERIAL NOT NULL,
    name_user VARCHAR(40) NOT NULL,
    password_user VARCHAR(10) NOT NULL,
    PRIMARY KEY (id_user)
);
CREATE TABLE scores (
    score_sc INTEGER(10) NOT NULL,
    date_sc varchar(50) NOT NULL,
    id_user bigint unsigned,
    FOREIGN KEY (id_user)
        REFERENCES users (id_user)
        ON DELETE CASCADE
);
