
-----Tech
create table PT_Tech(
    tech_no NUMBER,
    member_no NUMBER,
    tech_title VARCHAR2(100),
    tech_content VARCHAR2(500),
    tech_readcount NUMBER,
    tech_date DATE
);

create SEQUENCE PT_Tech_seq;

--------Tech Comment
create table Tech_Comment(
    Tcomment_no number,
    tech_no number,
    member_no number,
    Tcomment_content varchar2(200),
    Tcomment_date date
);

create SEQUENCE Tech_Comment_seq;


-- Tech 좋아요 쿼리
CREATE TABLE Tech_Like(
    like_no NUMBER,
    member_no NUMBER,
    tech_no NUMBER
);
create SEQUENCE Tech_Like_seq;

--Tech 이미지 테이블
create table Tech_BoardImage(
    image_no number,
    tech_no number,
    image_url varchar2(300),
    image_ori varchar2(300)
);
create sequence Tech_BoardImage_seq;

CREATE TABLE Tech_Skill_Category(
    skill_category_no NUMBER,
    skill_category_name VARCHAR2(20)
);
CREATE SEQUENCE Tech_Skill_Category_seq;

--Tech skill
CREATE TABLE Tech_Skill(
    skill_no NUMBER,
    tech_no NUMBER,
    skill_category_no NUMBER
);

CREATE SEQUENCE Tech_Skill_seq;

INSERT INTO Tech_Skill_Category VALUES(Tech_Skill_Category_seq.NEXTVAL,'HTML');
INSERT INTO Tech_Skill_Category VALUES(Tech_Skill_Category_seq.NEXTVAL,'JAVA');
INSERT INTO Tech_Skill_Category VALUES(Tech_Skill_Category_seq.NEXTVAL,'JAVASCRIPT');
INSERT INTO Tech_Skill_Category VALUES(Tech_Skill_Category_seq.NEXTVAL,'SQL');

--QnA board
DROP TABLE qa_Board;
CREATE TABLE qa_Board(
    board_no NUMBER,
    member_no NUMBER,
    board_title VARCHAR2(400),
    board_content VARCHAR2(4000),
    board_readcount NUMBER,
    board_writedate DATE
);

SELECT * FROM qa_Board;


DROP SEQUENCE qa_Board_seq;
CREATE SEQUENCE qa_Board_seq;

--QnA 이미지 T
DROP TABLE qa_Image;
CREATE TABLE qa_Image(
    image_no NUMBER,
    board_no NUMBER,
    image_url VARCHAR2(300),
    image_ori VARCHAR2(300)
);

DROP SEQUENCE qa_Image_seq;
CREATE SEQUENCE qa_Image_seq;


--QnA comment 댓글
DROP TABLE qa_comment;
CREATE TABLE qa_comment(
    qacomment_no NUMBER,
    member_no NUMBER,
    board_no NUMBER,
    qacomment_content VARCHAR2(1000),
    qacomment_date DATE
);

DROP SEQUENCE qa_comment_seq;
CREATE SEQUENCE qa_comment_seq;

SELECT * FROM qa_comment;

--QnA like
DROP TABLE qa_like;
CREATE TABLE qa_like(
    like_no NUMBER,
    member_no NUMBER,
    board_no NUMBER
);
DROP SEQUENCE qa_like_seq;
CREATE SEQUENCE qa_like_seq;

--message
DROP TABLE PG_message;
CREATE TABLE PG_message(
    message_no NUMBER,
    member_no NUMBER,
    member_receive_name VARCHAR(50),
    member_send_name VARCHAR(50),
    message_title VARCHAR2(50),
    message_content VARCHAR2(1000),
    message_receivedelete NUMBER,
    message_senddelete NUMBER,
    message_readcount NUMBER,
    message_writedate DATE 
);
DROP SEQUENCE PG_message_seq;
CREATE SEQUENCE PG_message_seq;

--member T
drop TABLE PT_MEMBER;
CREATE TABLE PT_MEMBER (
    MEMBER_NO  NUMBER, 
	MEMBER_ID VARCHAR2(100 BYTE), 
	MEMBER_PW VARCHAR2(100 BYTE), 
	MEMBER_NAME VARCHAR2(20 BYTE), 
	MEMBER_DATE DATE
   );

CREATE SEQUENCE PT_member_seq;

--To_Do
create table do_person(
DOP_NO number,
ROOM_NO number,
MEMBER_NO number,
TDBOARD_NO number
);

CREATE SEQUENCE do_person_seq;

--프로젝트 보트 댓글
create table PR_BOARD_COMMENT(
PR_COMMENT_NO number,
BOARD_NO number,
MEMBER_NO number,
CONTENT varchar2(500),
PR_DATE DATE
);

--프로젝트 보드 테이블
create table PROJECT_BOARD(
BOARD_NO number,
CATEGORY_NO number,
MEMBER_NO number,
TITLE varchar2(300),
CONTENT varchar2(4000),
CONTENT_DATE DATE
);
CREATE SEQUENCE BOARD_NO_seq;

--프로젝트 보드 카테고리
create table PROJECTBOARD_CATEGORY(
CATEGORY_NO number,
ROOM_NO number,
CA_NAME varchar2(300)
);
CREATE SEQUENCE CATEGORY_NO_seq;

--프로젝트 채널
create table pt_channel(
CHANNEL_NO number,
ROOM_NO number,
CHANNEL_NAME varchar2(300)
);
CREATE SEQUENCE pt_channel_seq;


-- 채팅
drop table pt_chatting;
CREATE TABLE pt_chatting(
    chatting_no number,
    channel_no number,
    member_no number,
    content varchar2(1000),
    content_date varchar2(100)
);

drop SEQUENCE pt_chatting_seq;
CREATE SEQUENCE pt_chatting_seq;

--심사
create table pt_approve(
    approve_no number,
    room_no number,
    member_no number,
    application_content varchar2(500),
    examination varchar2(20),
    approve_date date
);

create SEQUENCE pt_approve_seq;

--멤버 레이팅
create table PT_MEMBER_RATING(
RATING_NO number,
ROOM_NO number,
SENDER_NO number,
RECEIVER_NO number,
RATING_SCORE number,
ONE_LINE_REVIEW varchar2(4000)
);

create SEQUENCE RATING_NO_seq;

--프로그램 스택
create table PT_PROGRAMSTACK(
STACK_NO number,
ROOM_NO number,
STACKCATEGORY_NO number
);
create SEQUENCE PT_PROGRAMSTACK_seq;

--프로젝트 룸
create table PT_PROJECTROOM(
ROOM_NO number,
MEMBER_NO number,
TITLE varchar2(200),
SIMPLECONTENT varchar2(3000),
PEOPLE number,
STARTDATE date,
LASTDATE date,
ADDRESS VARCHAR2(255 BYTE),
STATUS VARCHAR2(20 BYTE)
);

create SEQUENCE PT_PROJECTROOM_seq;

--프로젝트 룸 멤버 테이블
create table PT_RELATIONSHIP(
RS_NO number,
ROOM_NO number,
MEMBER_NO number
);

create SEQUENCE PT_RELATIONSHIP_seq;

--프로젝트 기술 테이블
create table PT_STACKCATEGORY(
STACK_CATEGORY_NO number,
CATEGORY_NAME varchar2(30 byte)
);

create SEQUENCE PT_STACKCATEGORY_seq;

INSERT INTO PT_STACKCATEGORY VALUES(PT_STACKCATEGORY_seq.NEXTVAL,'HTML');
INSERT INTO PT_STACKCATEGORY VALUES(PT_STACKCATEGORY_seq.NEXTVAL,'JAVA');
INSERT INTO PT_STACKCATEGORY VALUES(PT_STACKCATEGORY_seq.NEXTVAL,'SPRING');
INSERT INTO PT_STACKCATEGORY VALUES(PT_STACKCATEGORY_seq.NEXTVAL,'SQL');

--프로젝트 기술 리스트
create table PT_STACKLIST(
STACKLIST_NO number,
STACK_CATEGORY_NO number,
ROOM_NO number
);

create SEQUENCE PT_STACKLIST_seq;

--Todo_board table
create table pt_todo_board(
TDBOARD_NO	NUMBER,
ROOM_NO	NUMBER,
CONTENT	VARCHAR2(255 BYTE),
DETAILCONTENT	VARCHAR2(3000 BYTE),
STARTDATE	DATE,
FINISHDATE	DATE,
WRITEDATE	DATE,
COMPLETE	VARCHAR2(20 BYTE)
);
create SEQUENCE pt_todo_board_seq;


-------타미

CREATE TABLE PT_Bulletinboard(
    board_no NUMBER,
    member_no NUMBER,
    board_title VARCHAR2(400),
    board_content VARCHAR2(4000),   
    board_readcount NUMBER,
    board_writedate DATE    
);

CREATE SEQUENCE PT_Bulletinboard_seq;

CREATE TABLE PT_Comment(
    comment_no NUMBER,
    board_no NUMBER,
    member_no NUMBER,
    comment_content VARCHAR2(1000),
    comment_writedate DATE
);


CREATE SEQUENCE PT_Comment_seq;


CREATE TABLE PT_Like(
    like_no NUMBER,
    member_no NUMBER,
    board_no NUMBER
);


CREATE SEQUENCE PT_Like_seq;


CREATE TABLE PT_BoardImage(
    image_no NUMBER,
    board_no NUMBER,
    image_url VARCHAR2(100),
    image_ori VARCHAR2(100)
);


CREATE SEQUENCE PT_BoardImage_seq;


select * from PT_Bulletinboard;



-------------상점 테이블
create table toy_shop(
    shop_no number,--pk 
    member_no number,--fk
    shop_name varchar2(30),
    shop_image_url varchar2(300),
    shop_content varchar2(100),
    shop_date date
);

create sequence toy_shop_seq;


-------------물품 테이블

create table toy_product(
    product_no number,--pk
    shop_no number,--fk
    product_name varchar2(50),
    product_price number,
    product_image_url varchar2(300),
    product_count number,
    product_content varchar2(100),
    product_date date
);
create sequence toy_product_seq;


-------------구매 테이블
create table toy_buy(
    buy_no number, --pk
    member_no number,--fk
    product_no number,--fk
    buy_address varchar2(300),
    buy_count number,
    buy_date date
);

create sequence toy_buy_seq;


--찜하기---------------
CREATE TABLE toy_shoplike(
    like_no NUMBER,
    member_no NUMBER,
    shop_no NUMBER
);

create SEQUENCE toy_shoplike_seq;

--todo 
create table pt_todo_board(
TDBOARD_NO	NUMBER,
ROOM_NO	NUMBER,
CONTENT	VARCHAR2(255 BYTE),
DETAILCONTENT	VARCHAR2(3000 BYTE),
STARTDATE	DATE,
FINISHDATE	DATE,
WRITEDATE	DATE,
COMPLETE	VARCHAR2(20 BYTE)
);

create SEQUENCE pt_todo_board_seq;


commit;
