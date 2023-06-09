
CREATE TABLE ADDRESS_CODE
(
  ADDRESS         VARCHAR(500) NOT NULL COMMENT '주소',
  ADDRESS_CODE_ID VARCHAR(50)  NOT NULL COMMENT '주소 ID',
  PRIMARY KEY (ADDRESS_CODE_ID)
) COMMENT '주소';

CREATE TABLE GENDER_CODE
(
  GENDER         VARCHAR(50) NOT NULL COMMENT '성별',
  GENDER_CODE_ID VARCHAR(50) NOT NULL COMMENT '성별 ID',
  PRIMARY KEY (GENDER_CODE_ID)
) COMMENT '성별코드';

CREATE TABLE HOBBY_CODE
(
  HOBBY         VARCHAR(50) NOT NULL COMMENT '취미',
  HOBBY_CODE_ID VARCHAR(50) NOT NULL COMMENT '취미 ID',
  PRIMARY KEY (HOBBY_CODE_ID)
) COMMENT '회원_취미';

CREATE TABLE MEMBERS
(
  AGE             INTEGER     NOT NULL COMMENT '나이',
  NAME            VARCHAR(50) NOT NULL COMMENT '이름',
  TELEPHONE       VARCHAR(50) NOT NULL COMMENT '전화번호',
  MEMBERS_ID      VARCHAR(50) NOT NULL COMMENT '유니크 ID',
  GENDER_CODE_ID  VARCHAR(50) NOT NULL COMMENT '성별 ID',
  ADDRESS_CODE_ID VARCHAR(50) NOT NULL COMMENT '주소 ID',
  PRIMARY KEY (MEMBERS_ID)
) COMMENT '회원정보 ';

CREATE TABLE MEMBERS_HOBBY
(
  MEMBERS_ID    VARCHAR(50) NOT NULL COMMENT '유니크 ID',
  HOBBY_CODE_ID VARCHAR(50) NOT NULL COMMENT '취미 ID'
) COMMENT '취미 코드';

CREATE TABLE MEMBERS_LOGIN
(
  EMAIL            VARCHAR(50) NOT NULL COMMENT '이메일',
  MEMBERS_ID       VARCHAR(50) NOT NULL COMMENT '유니크 ID',
  MEMBERS_LOGIN_ID VARCHAR(50) NOT NULL COMMENT '회원_로그인 ID'
) COMMENT '회원_로그인';

ALTER TABLE MEMBERS_LOGIN
  ADD CONSTRAINT FK_MEMBERS_TO_MEMBERS_LOGIN
    FOREIGN KEY (MEMBERS_ID)
    REFERENCES MEMBERS (MEMBERS_ID);

ALTER TABLE MEMBERS_HOBBY
  ADD CONSTRAINT FK_MEMBERS_TO_MEMBERS_HOBBY
    FOREIGN KEY (MEMBERS_ID)
    REFERENCES MEMBERS (MEMBERS_ID);

ALTER TABLE MEMBERS_HOBBY
  ADD CONSTRAINT FK_HOBBY_CODE_TO_MEMBERS_HOBBY
    FOREIGN KEY (HOBBY_CODE_ID)
    REFERENCES HOBBY_CODE (HOBBY_CODE_ID);

ALTER TABLE MEMBERS
  ADD CONSTRAINT FK_GENDER_CODE_TO_MEMBERS
    FOREIGN KEY (GENDER_CODE_ID)
    REFERENCES GENDER_CODE (GENDER_CODE_ID);

ALTER TABLE MEMBERS
  ADD CONSTRAINT FK_ADDRESS_CODE_TO_MEMBERS
    FOREIGN KEY (ADDRESS_CODE_ID)
    REFERENCES ADDRESS_CODE (ADDRESS_CODE_ID);