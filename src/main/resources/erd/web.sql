SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS BOARD_INFO;
DROP TABLE IF EXISTS USER_INFO;




/* Create Tables */

CREATE TABLE BOARD_INFO
(
	BI_NUM int NOT NULL AUTO_INCREMENT,
	BI_TITLE varchar(200) NOT NULL,
	BI_CONTENT text NOT NULL,
	CREDAT char(8) DEFAULT 'DATE_FORMAT(NOW(),''%Y%m%d'')',
	CRETIM char(6) DEFAULT 'DATE_FORMAT(NOW(),''%H%i%s'')',
	-- 유저 번호
	UI_NUM int NOT NULL COMMENT '유저 번호',
	PRIMARY KEY (BI_NUM)
);


CREATE TABLE USER_INFO
(
	-- 유저 번호
	UI_NUM int NOT NULL AUTO_INCREMENT COMMENT '유저 번호',
	-- 유저 아이디
	UI_ID varchar(20) NOT NULL COMMENT '유저 아이디',
	-- 유저 이름
	UI_NAME varchar(20) NOT NULL COMMENT '유저 이름',
	-- 유저 비밀번호
	UI_PWD varchar(50) NOT NULL COMMENT '유저 비밀번호',
	UI_AGE tinyint DEFAULT 0,
	-- 유저 핸드폰
	UI_PHONE char(11) COMMENT '유저 핸드폰',
	UI_ADDRESS varchar(200),
	UI_TRANS char(1) DEFAULT '1',
	PRIMARY KEY (UI_NUM),
	UNIQUE (UI_ID)
);



/* Create Foreign Keys */

ALTER TABLE BOARD_INFO
	ADD FOREIGN KEY (UI_NUM)
	REFERENCES USER_INFO (UI_NUM)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



