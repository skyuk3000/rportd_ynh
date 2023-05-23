CREATE TABLE users (
  username VARCHAR(150) NOT NULL,
  password VARCHAR(255) NOT NULL,
  token VARCHAR(36) DEFAULT NULL,
  two_fa_send_to VARCHAR(150),
  totp_secret VARCHAR(255) DEFAULT '',
  password_expired BOOL DEFAULT 0
);

CREATE UNIQUE INDEX main_username ON users (username);

CREATE TABLE groups (
  username VARCHAR(150) NOT NULL,
  `group` VARCHAR(150) NOT NULL
);

CREATE UNIQUE INDEX main_username_group ON groups (username,`group`);

INSERT INTO users VALUES('__ADMIN__','__PASSWORD_HASH__',null,'__ADMIN_MAIL__','',0);
INSERT INTO groups VALUES('__ADMIN__','Administrators');

CREATE TABLE `clients_auth` (
  `id` varchar(100) PRIMARY KEY,
  `password` varchar(100) NOT NULL
);
