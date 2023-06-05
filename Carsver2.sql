
CREATE TABLE BRAND_NAME_CODE
(
  BRAND_NAME      VARCHAR(500) NOT NULL COMMENT '회사이름',
  BRAND_NAME_CODE VARCHAR(500) NOT NULL COMMENT '회사이름_코드',
  PRIMARY KEY (BRAND_NAME_CODE)
) COMMENT '회사이름코드';

CREATE TABLE CARS
(
  CARS_CODE       VARCHAR(500) NOT NULL COMMENT '차_코드',
  CARS            VARCHAR(500) NOT NULL COMMENT '차',
  CARS_NAME_CODE  VARCHAR(500) NOT NULL COMMENT '차량이름코드',
  MAKE_YEARS_CODE VARCHAR(500) NOT NULL COMMENT '연식코드',
  BRAND_NAME_CODE VARCHAR(500) NOT NULL COMMENT '회사이름_코드',
  PRIMARY KEY (CARS_CODE)
) COMMENT '차';

CREATE TABLE CARS_NAME_CODE
(
  CARS_NAME      VARCHAR(500) NOT NULL COMMENT '차량이름',
  CARS_NAME_CODE VARCHAR(500) NOT NULL COMMENT '차량이름코드',
  PRIMARY KEY (CARS_NAME_CODE)
) COMMENT '차량이름코드';

CREATE TABLE CARS_OPTION
(
  CARS_OPTION       VARCHAR(500) NOT NULL COMMENT '차량옵션',
  CARS_OPTION_CODE  VARCHAR(500) NOT NULL COMMENT '차량옵션_코드',
  OPTION_CODE       VARCHAR(500) NOT NULL COMMENT '옵션_코드',
  CARS_CODE         VARCHAR(500) NOT NULL COMMENT '차',
  PRIMARY KEY (CARS_OPTION_CODE )
) COMMENT '차량옵션_코드';

CREATE TABLE MAKE_YEARS_CODE
(
  MAKE_YEARS      VARCHAR(500) NOT NULL COMMENT '연식',
  MAKE_YEARS_CODE VARCHAR(500) NOT NULL COMMENT '연식코드',
  PRIMARY KEY (MAKE_YEARS_CODE)
) COMMENT '연식코드';

CREATE TABLE OPTION_CODE
(
  OPTION_VALUE VARBINARY(500) NOT NULL COMMENT '옵션',
  OPTION_CODE  VARCHAR(500)   NOT NULL COMMENT '옵션_코드',
  PRIMARY KEY (OPTION_CODE)
) COMMENT '옵션_코드';

ALTER TABLE CARS_OPTION
  ADD CONSTRAINT FK_OPTION_CODE_TO_CARS_OPTION
    FOREIGN KEY (OPTION_CODE)
    REFERENCES OPTION_CODE (OPTION_CODE);

ALTER TABLE CARS
  ADD CONSTRAINT FK_CARS_NAME_CODE_TO_CARS
    FOREIGN KEY (CARS_NAME_CODE)
    REFERENCES CARS_NAME_CODE (CARS_NAME_CODE);

ALTER TABLE CARS
  ADD CONSTRAINT FK_MAKE_YEARS_CODE_TO_CARS
    FOREIGN KEY (MAKE_YEARS_CODE)
    REFERENCES MAKE_YEARS_CODE (MAKE_YEARS_CODE);

ALTER TABLE CARS
  ADD CONSTRAINT FK_BRAND_NAME_CODE_TO_CARS
    FOREIGN KEY (BRAND_NAME_CODE)
    REFERENCES BRAND_NAME_CODE (BRAND_NAME_CODE);

ALTER TABLE CARS_OPTION
  ADD CONSTRAINT FK_CARS_TO_CARS_OPTION
    FOREIGN KEY (CARS_CODE)
    REFERENCES CARS (CARS_CODE);