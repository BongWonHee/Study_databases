
-- GENDER_CODE

INSERT INTO gender
(GENDER_CODE,GENDER)
VALUES
('G-01','남'),
('G-02','여');


-- ADDRESS_CODE
INSERT INTO address
(ADDRESS,ADDRESS_CODE)
VALUES
('서울시','A-01'),
('부산시','A-02'),
('경기도','A-03'),
('대전시','A-04'),
('인천시','A-05');


-- MEMBERS_INFO
INSERT INTO members_info
(NAME,AGE,PHONENUMBER,UNIQUE_ID,GENDER_CODE,ADDRESS_CODE)
VALUES
('홍길동',30,'010-1234-5678','M-01','G-01','A-01'),
('박영희',25,'010-9876-5432','M-02','G-02','A-02'),
('김철수',35,'010-1111-2222','M-03','G-01','A-03'),
('이영미',28,'010-3333-4444','M-04','G-02','A-04'),
('정민호',32,'010-5555-6666','M-05','G-01','A-05');



-- HOBBY_CODE
INSERT INTO hobby_code
(UNIQUE_ID,HOBBY_NAME_ID)
VALUES
('M-01','H-01'),
('M-01','H-02'),
('M-02','H-03'),
('M-02','H-04'),
('M-03','H-05'),
('M-03','H-06'),
('M-03','H-07'),
('M-04','H-08'),
('M-05','H-02'),
('M-05','H-09');

-- MEMBERS_HOBBY
INSERT INTO members_hobby
(HOBBY_NAME,HOBBY_NAME_ID)
VALUES
('요리','H-01'),
('등산','H-02'),
('독서','H-03'),
('영화 감상','H-04'),
('요가','H-05'),
('음악 감상','H-06'),
('여행','H-07'),
('사진촬영','H-08'),
('수영',	'H-09');

-- MEBERS_LOGIN
INSERT INTO members_login
(E_MAIL,UNIQUE_ID,MEMBERS_LOGIN_ID)
VALUES
('hong@gmail.com','M-01','E-01'),
('park.younghee@naver.com','M-02','E-02'),
('kimchulsu@gmail.com','M-03','E-03'),
('leeyoungmi@naver.com','M-04',	'E-04'),
('jmh123@gmail.com','M-05',	'E-05');

