CREATE DATABASE `yaho`;

USE `yaho`;

CREATE TABLE `mountain` (
    id int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name char(100) NOT NULL UNIQUE,
    features text NOT NULL,
    course text NOT NULL
);

CREATE TABLE `member`(
    id int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userId char(100) NOT NULL UNIQUE,
    `password` char(100) NOT NULL,
    nowDateTime datetime NOT NULL,
    gender char(100) NOT null
);

CREATE TABLE `review`(
    id int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title text NOT NULL,
    content text NOT NULL,
    memberId char(100) NOT NULL,
    regDate DATETIME NOT NULL,
    score int UNSIGNED NOT NULL
);


--회원
INSERT INTO `member`
SET nowDateTime = NOW(),
userId = '경현잉',
`password` = '11',
gender = '남자';

INSERT INTO `member`
SET nowDateTime = NOW(),
userId = '병근잉',
`password` = '11',
gender = '남자';

INSERT INTO `member`
SET nowDateTime = NOW(),
userId = '조은잉',
`password` = '11',
gender = '여자';

--산
INSERT INTO `mountain`
SET name = '청계산',
features = '청계산 좋아요',
course = '잘나옴';

INSERT INTO `mountain`
SET name = '불장산',
features = '확인2',
course = '잘나옴2';