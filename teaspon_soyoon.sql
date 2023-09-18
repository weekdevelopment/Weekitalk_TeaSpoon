CREATE DATABASE teaspoon;
USE teaspoon;


CREATE table sample (
	NO INTEGER AUTO_INCREMENT PRIMARY KEY,
	NAME VARCHAR(100)
);

INSERT INTO sample VALUES (DEFAULT, 'doyouni');
INSERT INTO sample VALUES (DEFAULT, '한선');
INSERT INTO sample VALUES (DEFAULT, '이은영');
INSERT INTO sample VALUES (DEFAULT, '서광');
INSERT INTO sample VALUES (DEFAULT, '이소윤');

COMMIT;

CREATE TABLE board (
	seq INT AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	content VARCHAR(1000) NOT NULL ,
	nickname VARCHAR(20),
	regdate DATETIME DEFAULT CURRENT_TIMESTAMP(),
	visited INT DEFAULT 0
);

INSERT INTO board VALUES (DEFAULT, "더미 1이욜~!", "게시판 더미 1욜", "doyouni", DEFAULT, 0);
INSERT INTO board VALUES (DEFAULT, "더미 2이욜~!", "게시판 더미 2욜", "doyouni", DEFAULT, 0);
INSERT INTO board VALUES (DEFAULT, "더미 3이욜~!", "게시판 더미 3욜", "doyouni", DEFAULT, 0);
INSERT INTO board VALUES (DEFAULT, "더미 4이욜~!", "게시판 더미 4욜", "doyouni", DEFAULT, 0);

CREATE TABLE MEMBER (
	id VARCHAR(20) PRIMARY KEY,
	pw VARCHAR(300) NOT NULL,
	NAME VARCHAR(50),
	email VARCHAR(100) NOT NULL,
	tel VARCHAR(20) NOT NULL,
	addr1 VARCHAR(200),
	addr2 VARCHAR(100),
	postcode VARCHAR(10),
	regdate DATETIME DEFAULT CURRENT_TIMESTAMP(),
	birth DATE,
	pt INT DEFAULT 0,
	visited INT DEFAULT 0
);

INSERT INTO MEMBER VALUES ('admin', '1234', '관리자','admin@buddy.com', '01012341234', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT); 
INSERT INTO MEMBER VALUES ('kang', '1234', '강영현','kang@buddy.com', '01011112222', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT); 
INSERT INTO MEMBER VALUES ('park', '1234', '박정우','park@buddy.com', '01033334444', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT); 

UPDATE member SET pw='$2a$10$B1eSQwtXQMZIht3sHOWS7.a/wOmnXT9T3EqYwl7qBbOfAuj8YuKvW' WHERE id='admin';
UPDATE member SET pw='$2a$10$B1eSQwtXQMZIht3sHOWS7.a/wOmnXT9T3EqYwl7qBbOfAuj8YuKvW' WHERE id='kang';
UPDATE member SET pw='$2a$10$B1eSQwtXQMZIht3sHOWS7.a/wOmnXT9T3EqYwl7qBbOfAuj8YuKvW' WHERE id='park';

INSERT INTO MEMBER VALUES ('so', '1234', '소정환','so@buddy.com', '01033334444', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT); 

COMMIT;

CREATE TABLE free (
	bno INT AUTO_INCREMENT PRIMARY KEY ,
	title VARCHAR(100) NOT NULL,
	content VARCHAR(1500) NOT NULL,
	regdate DATETIME DEFAULT CURRENT_TIMESTAMP(),
	visited INT DEFAULT 0,
	id VARCHAR(20),
	rec INT
)

update sample set NAME='dododoyouni' where NO=3;


CREATE TABLE faq (
                     fno int PRIMARY KEY AUTO_INCREMENT,
                     question VARCHAR(1000) NOT NULL,
                     answer VARCHAR(1000) NOT NULL,
                     cnt INT DEFAULT 0 NOT NULL
);

COMMIT;

select * from faq;

INSERT INTO faq VALUES (DEFAULT, '우짜면 좋을까요?', '그러게요~', DEFAULT);
INSERT INTO faq VALUES (DEFAULT, '여기가 faq인가요~?', '맞습니동~', DEFAULT);
INSERT INTO faq VALUES (DEFAULT, '왜 아직 목요일', ',,,군만두', DEFAULT);
INSERT INTO faq VALUES (DEFAULT, '아 힘드러', '그러게요~', DEFAULT);
INSERT INTO faq VALUES (DEFAULT, '집에 가고싶덩', '그러게요~', DEFAULT);

select * from faq order by fno DESC;

create table notice(
                       nno int primary KEY AUTO_INCREMENT,
                       title varchar(200) not NULL,
                       content varchar(1000),
                       resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                       visit int DEFAULT 0
);

-- 커뮤니티 전용 공지사항 더미글 추가 10건

commit;

select * from notice;
INSERT INTO notice VALUES(DEFAULT, "공지사항 1번", "금주의 공지 전달드립니다~!", DEFAULT, DEFAULT);
INSERT INTO notice VALUES(DEFAULT, "공지사항 2번", "금주의 공지 전달드립니다~!", DEFAULT, DEFAULT);
INSERT INTO notice VALUES(DEFAULT, "공지사항 3번", "금주의 공지 전달드립니다~!", DEFAULT, DEFAULT);
INSERT INTO notice VALUES(DEFAULT, "공지사항 4번", "금주의 공지 전달드립니다~!", DEFAULT, DEFAULT);
INSERT INTO notice VALUES(DEFAULT, "공지사항 5번", "금주의 공지 전달드립니다~!", DEFAULT, DEFAULT);

INSERT INTO notice VALUES(DEFAULT, "공지사항 6번", "금주의 공지 전달드립니다~!", DEFAULT, DEFAULT);
INSERT INTO notice VALUES(DEFAULT, "공지사항 7번", "금주의 공지 전달드립니다~!", DEFAULT, DEFAULT);
INSERT INTO notice VALUES(DEFAULT, "공지사항 8번", "금주의 공지 전달드립니다~!", DEFAULT, DEFAULT);
INSERT INTO notice VALUES(DEFAULT, "공지사항 9번", "금주의 공지 전달드립니다~!", DEFAULT, DEFAULT);
INSERT INTO notice VALUES(DEFAULT, "공지사항 10번", "금주의 공지 전달드립니다~!", DEFAULT, DEFAULT);

INSERT INTO notice VALUES(DEFAULT, "공지사항 11번", "금주의 공지 전달드립니다~!", DEFAULT, DEFAULT);
INSERT INTO notice VALUES(DEFAULT, "공지사항 12번", "금주의 공지 전달드립니다~!", DEFAULT, DEFAULT);
INSERT INTO notice VALUES(DEFAULT, "공지사항 13번", "금주의 공지 전달드립니다~!", DEFAULT, DEFAULT);
INSERT INTO notice VALUES(DEFAULT, "공지사항 14번", "금주의 공지 전달드립니다~!", DEFAULT, DEFAULT);
INSERT INTO notice VALUES(DEFAULT, "공지사항 15번", "금주의 공지 전달드립니다~!", DEFAULT, DEFAULT);

-- 묻고 답하기(질문, 답변) 테이블 생성
CREATE TABLE qna(
                    qno int PRIMARY KEY AUTO_INCREMENT,   			            -- 번호
                    title VARCHAR(100) NOT NULL,   					-- 제목
                    content VARCHAR(1000) NOT NULL,   				-- 내용
                    author VARCHAR(16),   							-- 작성자
                    resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,    -- 등록일
                    visit INT DEFAULT 0,   							-- 조회수
                    lev INT DEFAULT 0, 								-- 질문(0), 답변(1)
                    par INT DEFAULT 0,										-- 질문(자신 레코드의 qno), 답변(질문의 글번호)
                    secret BOOLEAN DEFAULT false,				    -- 비밀글 유무
                    FOREIGN KEY(author) REFERENCES member(id) ON DELETE CASCADE
);

-- 더미 데이터 작성
INSERT INTO qna(title, content, author, lev, secret) VALUES('질문1', '질문입니다. 1', 'park', 0, false);

UPDATE qna SET par=qno WHERE lev=0 AND qno=1;

INSERT INTO qna(title, content, author, lev, secret) VALUES('질문2', '질문입니다. 2', 'park', 0, true);

UPDATE qna SET par=qno WHERE lev=0 AND qno=2;

INSERT INTO qna(title, content, author, lev, secret) VALUES('질문3', '질문입니다. 3', 'park', 0, false);

UPDATE qna SET par=qno WHERE lev=0 AND qno=3;

INSERT INTO qna(title, content, author, lev, secret) VALUES('질문4', '질문입니다. 4', 'park', 0, false);

UPDATE qna SET par=qno WHERE lev=0 AND qno=4;

INSERT INTO qna(title, content, author, lev, secret) VALUES('질문5', '질문입니다. 5', 'park', 0, false);

UPDATE qna SET par=qno WHERE lev=0 AND qno=5;

INSERT INTO qna(title, content, author, lev, secret) VALUES('질문6', '질문입니다. 6', 'park', 0, false);

UPDATE qna SET par=qno WHERE lev=0 AND qno=6;

INSERT INTO qna(title, content, author, lev, secret) VALUES('질문7', '질문입니다. 7', 'park', 0, false);

UPDATE qna SET par=qno WHERE lev=0 AND qno=7;

INSERT INTO qna(title, content, author, lev, secret) VALUES('질문8', '질문입니다. 8', 'park', 0, false);

UPDATE qna SET par=qno WHERE lev=0 AND qno=8;

INSERT INTO qna(title, content, author, lev, secret) VALUES('질문9', '질문입니다. 9', 'park', 0, false);

UPDATE qna SET par=qno WHERE lev=0 AND qno=9;

INSERT INTO qna(title, content, author, lev, secret) VALUES('질문10', '질문입니다. 10', 'park', 0, false);

UPDATE qna SET par=qno WHERE lev=0 AND qno=10;

-- 답변

INSERT INTO qna(title, content, author, lev, par, secret) VALUES ('질문1에 대한 답변', '답변입니다. 1', 'admin', 1, 1, false);

INSERT INTO qna(title, content, author, lev, par, secret) VALUES ('질문2에 대한 답변', '답변입니다. 2.', 'admin', 1, 2, true);

INSERT INTO qna(title, content, author, lev, par, secret) VALUES ('질문3에 대한 답변', '답변입니다. 3', 'admin', 1, 3, false);

INSERT INTO qna(title, content, author, lev, par, secret) VALUES ('질문4에 대한 답변', '답변입니다. 4', 'admin', 1, 4, false);

INSERT INTO qna(title, content, author, lev, par, secret) VALUES ('질문5에 대한 답변', '답변입니다. 5', 'admin', 1, 5, false);

INSERT INTO qna(title, content, author, lev, par, secret) VALUES ('질문6에 대한 답변', '답변입니다. 6', 'admin', 1, 6, false);

INSERT INTO qna(title, content, author, lev, par, secret) VALUES ('질문7에 대한 답변', '답변입니다. 7', 'admin', 1, 7, false);

INSERT INTO qna(title, content, author, lev, par, secret) VALUES ('질문8에 대한 답변', '답변입니다. 8', 'admin', 1, 8, false);

INSERT INTO qna(title, content, author, lev, par, secret) VALUES ('질문9에 대한 답변', '답변입니다. 9', 'admin', 1, 9, false);

INSERT INTO qna(title, content, author, lev, par, secret) VALUES ('질문10에 대한 답변', '답변입니다. 10', 'admin', 1, 10, false);

COMMIT;

select * from qna;

        select qno from qnalist1 limit 1


-- QnA 리스트
create view qnalist1 AS  (SELECT a.qno AS qno, a.title AS title, a.content AS content, a.author AS author, a.resdate AS resdate, a.visit AS visit, a.lev AS lev,
       a.par AS par, b.name AS name FROM qna a, member b WHERE a.author=b.id ORDER BY a.par DESC, a.lev ASC, a.qno ASC);

-- qna JOIN & VIEW 생성 ( 내가 쓴 글에 이용)
CREATE VIEW qnalist2 AS (SELECT a.qno AS qno, a.title AS title, a.content AS content, a.author AS author, a.resdate AS resdate, a.visit AS visit, a.lev AS lev,
                                a.par AS par, b.id AS id FROM qna a, member b WHERE a.author=b.id ORDER BY a.par DESC, a.lev ASC, a.qno ASC);

SELECT * FROM qnalist1;

select qno from qnalist1 limit 1