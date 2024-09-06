-- criar schema "Card Organizer"
    CREATE schema card_organizer

-- usar database
USE card_organizer

-- criar tabela
CREATE TABLE users(
id_user INT AUTO_INCREMENT,
username VARCHAR(100),
email VARCHAR(50),
password VARCHAR(20),
created_at DATETIME,
updated_at DATETIME, 
sent_verification_email BOOL,
account_validated BOOL,
active BOOL,
PRIMARY KEY(id_user)
);
   
CREATE TABLE lists(
id_list INT AUTO_INCREMENT,
id_user INT,
title VARCHAR(100),
description VARCHAR(50),
FOREIGN KEY (id_user) REFERENCES users(id_user),
PRIMARY KEY(id_list)
);

CREATE TABLE activities(
id_activities INT AUTO_INCREMENT,
id_list INT,
name VARCHAR(100),
description VARCHAR(50),
due_date DATE,
completed BOOL,
FOREIGN KEY (id_list) REFERENCES lists(id_list),
PRIMARY KEY(id_activities)
);

CREATE TABLE log(
id_log INT AUTO_INCREMENT,
id_user INT,
id_list INT,
id_actvities INT,
state_change VARCHAR(200),
date_time DATETIME, 
FOREIGN KEY (id_user) REFERENCES users(id_user),
FOREIGN KEY (id_list) REFERENCES lists(id_list),
FOREIGN KEY (id_actvities) REFERENCES activities(id_activities),
PRIMARY KEY(id_log)
);

-- show database
SHOW DATABASES

-- show tables
SHOW TABLES