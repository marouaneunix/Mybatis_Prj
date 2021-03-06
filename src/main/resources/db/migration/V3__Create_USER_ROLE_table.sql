CREATE TABLE USER (
  id BIGINT AUTO_INCREMENT NOT NULL,
  name VARCHAR(50),
  username VARCHAR(50) UNIQUE,
  password VARCHAR(128),
  enabled BOOLEAN,
  PRIMARY KEY (id)
);

CREATE TABLE ROLE (
  id BIGINT AUTO_INCREMENT NOT NULL,
  user_id BIGINT,
  name VARCHAR(20),
    	PRIMARY KEY(id)
);

ALTER TABLE ROLE
ADD CONSTRAINT fk_user_id FOREIGN  KEY (user_id) REFERENCES USER(id) ON DELETE CASCADE;