
--------------------------------------------------------
--  파일이 생성됨 - 목요일-4월-01-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence CHAPTER_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##TEAM4"."CHAPTER_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence ORDERS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##TEAM4"."ORDERS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 301 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence ORDERS_ORDER_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##TEAM4"."ORDERS_ORDER_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence QNA_NUM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##TEAM4"."QNA_NUM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence REVIEW_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##TEAM4"."REVIEW_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 381 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence VIDEO_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##TEAM4"."VIDEO_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 141 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table AUCODE
--------------------------------------------------------

  CREATE TABLE "C##TEAM4"."AUCODE" 
   (	"CODE" VARCHAR2(20)
   ) ;

   COMMENT ON COLUMN "C##TEAM4"."AUCODE"."CODE" IS '6자리 인증코드';
--------------------------------------------------------
--  DDL for Table BASKET
--------------------------------------------------------

  CREATE TABLE "C##TEAM4"."BASKET" 
   (	"LECTURE_TITLE" VARCHAR2(90), 
	"MEMBER_ID" VARCHAR2(90), 
	"CDATE" TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table CALENDAR
--------------------------------------------------------

  CREATE TABLE "C##TEAM4"."CALENDAR" 
   (	"CALENDAR_ID" NUMBER, 
	"RDATE" VARCHAR2(40), 
	"RTIME" VARCHAR2(40), 
	"LECTURE_TITLE" VARCHAR2(90)
   ) ;
--------------------------------------------------------
--  DDL for Table CHAPTER
--------------------------------------------------------

  CREATE TABLE "C##TEAM4"."CHAPTER" 
   (	"CHAPTER_TITLE" VARCHAR2(100), 
	"LECTURE_TITLE" VARCHAR2(90), 
	"CHAPTER_ID" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table LECTURE
--------------------------------------------------------

  CREATE TABLE "C##TEAM4"."LECTURE" 
   (	"KINDS" VARCHAR2(10), 
	"LECTURE_TITLE" VARCHAR2(90), 
	"TEACHER_NICKNAME" VARCHAR2(100), 
	"PRICE" NUMBER, 
	"OPENDATE" DATE, 
	"TEACHER_INTRO" VARCHAR2(300), 
	"LECTURE_INTRO" VARCHAR2(300), 
	"RATING" NUMBER DEFAULT 0, 
	"TYPE" VARCHAR2(20), 
	"MEMBER_ID" VARCHAR2(90), 
	"CLOSEDATE" VARCHAR2(20), 
	"HOURS" VARCHAR2(20), 
	"COUNT" VARCHAR2(20) DEFAULT 0, 
	"LOCATION" VARCHAR2(90), 
	"INTRO" CLOB, 
	"AMOUNT" NUMBER DEFAULT 999999999, 
	"THUMBNAIL" VARCHAR2(100), 
	"STARTDATE" DATE, 
	"ENDDATE" DATE
   ) ;

   COMMENT ON COLUMN "C##TEAM4"."LECTURE"."KINDS" IS '강의카테고리';
   COMMENT ON COLUMN "C##TEAM4"."LECTURE"."LECTURE_TITLE" IS '강의이름';
   COMMENT ON COLUMN "C##TEAM4"."LECTURE"."TEACHER_NICKNAME" IS '강사닉네임';
   COMMENT ON COLUMN "C##TEAM4"."LECTURE"."PRICE" IS '강의가격';
   COMMENT ON COLUMN "C##TEAM4"."LECTURE"."OPENDATE" IS '오픈일(시작일시)';
   COMMENT ON COLUMN "C##TEAM4"."LECTURE"."TEACHER_INTRO" IS '강사소개';
   COMMENT ON COLUMN "C##TEAM4"."LECTURE"."LECTURE_INTRO" IS '강의소개';
   COMMENT ON COLUMN "C##TEAM4"."LECTURE"."RATING" IS '별점';
   COMMENT ON COLUMN "C##TEAM4"."LECTURE"."TYPE" IS '강의타입(on,off)';
   COMMENT ON COLUMN "C##TEAM4"."LECTURE"."MEMBER_ID" IS '강사아이디';
   COMMENT ON COLUMN "C##TEAM4"."LECTURE"."CLOSEDATE" IS '종료일시';
   COMMENT ON COLUMN "C##TEAM4"."LECTURE"."HOURS" IS '강의시간';
   COMMENT ON COLUMN "C##TEAM4"."LECTURE"."COUNT" IS '인원';
   COMMENT ON COLUMN "C##TEAM4"."LECTURE"."LOCATION" IS '강의지역';
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "C##TEAM4"."MEMBER" 
   (	"MEMBER_ID" VARCHAR2(40), 
	"NAME" VARCHAR2(20), 
	"PW" VARCHAR2(10), 
	"TEL" VARCHAR2(13), 
	"NICKNAME" VARCHAR2(30), 
	"GENDER" CHAR(3), 
	"JOB" VARCHAR2(30), 
	"REGION" VARCHAR2(160), 
	"BIRTH" DATE, 
	"CDATE" TIMESTAMP (6), 
	"UDATE" TIMESTAMP (6), 
	"TYPE" VARCHAR2(9), 
	"THUMBNAIL" VARCHAR2(100)
   ) ;
--------------------------------------------------------
--  DDL for Table ORDERS
--------------------------------------------------------

  CREATE TABLE "C##TEAM4"."ORDERS" 
   (	"ORDER_ID" NUMBER, 
	"STATUS" VARCHAR2(20), 
	"UDATE" TIMESTAMP (6), 
	"MEMBER_ID" VARCHAR2(40), 
	"LECTURE_TITLE" VARCHAR2(90), 
	"PROGRESSBAR" NUMBER DEFAULT 0, 
	"STUDYDATE" TIMESTAMP (6), 
	"ORDERDATE" TIMESTAMP (6), 
	"CANCELDATE" TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table PROGRESS
--------------------------------------------------------

  CREATE TABLE "C##TEAM4"."PROGRESS" 
   (	"LECTURE_TITLE" VARCHAR2(90), 
	"MEMBER_ID" VARCHAR2(90), 
	"VIDEO_ID" NUMBER, 
	"PROGRESS" NUMBER DEFAULT 0, 
	"STUDYDATE" TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "C##TEAM4"."QNA" 
   (	"QNA_NUM" NUMBER(10,0), 
	"TITLE" VARCHAR2(150), 
	"CONTENT" CLOB, 
	"QGROUP" NUMBER(5,0), 
	"QSTEP" NUMBER(5,0), 
	"QINDENT" NUMBER(5,0), 
	"LECTURE_TITLE" VARCHAR2(90), 
	"NICKNAME" VARCHAR2(40), 
	"CDATE" TIMESTAMP (6), 
	"UDATE" TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table QNA_UPLOAD_FILE
--------------------------------------------------------

  CREATE TABLE "C##TEAM4"."QNA_UPLOAD_FILE" 
   (	"FID" NUMBER, 
	"FSIZE" VARCHAR2(45), 
	"FTYPE" VARCHAR2(50), 
	"FNAME" VARCHAR2(20), 
	"CDATE" TIMESTAMP (6), 
	"UDATE" TIMESTAMP (6), 
	"PIC" BLOB, 
	"QNA_NUM" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table RESERVATION
--------------------------------------------------------

  CREATE TABLE "C##TEAM4"."RESERVATION" 
   (	"RESERVE_ID" VARCHAR2(40), 
	"STATUS" VARCHAR2(40), 
	"CDATE" VARCHAR2(20), 
	"CANCELDATE" VARCHAR2(20), 
	"MEMBER_ID" VARCHAR2(40), 
	"CALENDAR_ID" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "C##TEAM4"."REVIEW" 
   (	"REVIEW_ID" NUMBER, 
	"RCONTENT" VARCHAR2(800), 
	"RATING" NUMBER, 
	"CDATE" TIMESTAMP (6), 
	"UDATE" TIMESTAMP (6), 
	"MEMBER_ID" VARCHAR2(40), 
	"LECTURE_TITLE" VARCHAR2(90)
   ) ;
--------------------------------------------------------
--  DDL for Table VIDEO
--------------------------------------------------------

  CREATE TABLE "C##TEAM4"."VIDEO" 
   (	"VIDEO_ID" NUMBER, 
	"TITLE" VARCHAR2(90), 
	"CONTENT" VARCHAR2(500), 
	"CDATE" TIMESTAMP (6), 
	"UDATE" TIMESTAMP (6), 
	"LECTURE_TITLE" VARCHAR2(90), 
	"FILENAME" VARCHAR2(100), 
	"SECRET" CHAR(1), 
	"CHAPTER_ID" NUMBER(*,0)
   ) 
  NO INMEMORY ("CHAPTER_ID") ;
--------------------------------------------------------
--  DDL for Table WISH
--------------------------------------------------------

  CREATE TABLE "C##TEAM4"."WISH" 
   (	"MEMBER_ID" VARCHAR2(90), 
	"LECTURE_TITLE" VARCHAR2(90), 
	"UDATE" TIMESTAMP (6)
   ) ;
REM INSERTING into C##TEAM4.AUCODE
SET DEFINE OFF;
REM INSERTING into C##TEAM4.BASKET
SET DEFINE OFF;
Insert into C##TEAM4.BASKET (LECTURE_TITLE,MEMBER_ID,CDATE) values ('자바','teacher3@test.com',to_timestamp('2021/03/26 13:15:11.000000000','RRRR/MM/DD HH24:MI:SSXFF'));
Insert into C##TEAM4.BASKET (LECTURE_TITLE,MEMBER_ID,CDATE) values ('데이터베이스 입문','teacher3@test.com',to_timestamp('2021/03/26 16:06:20.000000000','RRRR/MM/DD HH24:MI:SSXFF'));
Insert into C##TEAM4.BASKET (LECTURE_TITLE,MEMBER_ID,CDATE) values ('림쑤홍의 커피철학','teacher3@test.com',to_timestamp('2021/03/26 16:06:27.000000000','RRRR/MM/DD HH24:MI:SSXFF'));
Insert into C##TEAM4.BASKET (LECTURE_TITLE,MEMBER_ID,CDATE) values ('자바','admin1@test.com',to_timestamp('2021/03/26 17:35:49.000000000','RRRR/MM/DD HH24:MI:SSXFF'));
Insert into C##TEAM4.BASKET (LECTURE_TITLE,MEMBER_ID,CDATE) values ('자바 머신러닝 웨카 초급','teacher26@test.com',to_timestamp('2021/03/29 13:07:50.000000000','RRRR/MM/DD HH24:MI:SSXFF'));
Insert into C##TEAM4.BASKET (LECTURE_TITLE,MEMBER_ID,CDATE) values ('파이썬 입문 오리지널','teacher3@test.com',to_timestamp('2021/03/26 12:32:14.000000000','RRRR/MM/DD HH24:MI:SSXFF'));
Insert into C##TEAM4.BASKET (LECTURE_TITLE,MEMBER_ID,CDATE) values ('자바 머신러닝 웨카 초급','student1@test.com',to_timestamp('2021/03/30 17:29:49.000000000','RRRR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into C##TEAM4.CALENDAR
SET DEFINE OFF;
REM INSERTING into C##TEAM4.CHAPTER
SET DEFINE OFF;
Insert into C##TEAM4.CHAPTER (CHAPTER_TITLE,LECTURE_TITLE,CHAPTER_ID) values ('자바머신러닝 weka(웨카) 초급사용법(how)','자바 머신러닝 웨카 초급',3);
Insert into C##TEAM4.CHAPTER (CHAPTER_TITLE,LECTURE_TITLE,CHAPTER_ID) values ('자바머신러닝 weka(웨카) 인트로(why)','자바 머신러닝 웨카 초급',1);
Insert into C##TEAM4.CHAPTER (CHAPTER_TITLE,LECTURE_TITLE,CHAPTER_ID) values ('자바머신러닝 weka(웨카) 강의대상(what)','자바 머신러닝 웨카 초급',2);
REM INSERTING into C##TEAM4.LECTURE
SET DEFINE OFF;
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('it','ㅇㅁㅇ','ㅁㄴㅇ',260000,null,'ㅇㅁㄴㅇ','ㅁㄴㅇㄴㅁㅇ',0,'on',null,null,null,'0',null,999999999,null,null,null);
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('fitness','샤크코치의 근력 운동','샤크코치',339000,to_date('2021/03/28','RRRR/MM/DD'),'크로스핏 선수 겸 코치로 8년 간 활동해 왔습니다. <br> 여성 운동 전문가인 제가 누구보다 가장 확실하게 여성의 근력 운동을 알려드리겠습니다. ','왜 항상 얇고 가는 몸을 선호하시나요? 여자에게도 탄탄한 근육은 필수입니다. 생존을 위해 그리고 신체를 단련하기 위해 근력 운동은 해야 하는 필수 운동 중 하나입니다.',0,'on','teacher22@test.com',null,null,'0',null,999999999,'313sdasd.jpg',null,null);
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('fitness','PT 도움 없이 집에서 운동하기','윤성bro',260000,to_date('2021/03/26','RRRR/MM/DD'),'안녕하세요. 운동 크리에이터 윤성bro입니다. <br> 2016년에 생활체육지도자 2급 보디빌딩 자격증을 딴 이후부터 지금까지 운동 트레이너로 활동하고 있습니다.','퇴근하고 집에 오면 헬스장 가는게 너무 귀찮고 힘드셨던 분들, 다른 사람이 신경쓰여 제대로 운동하지 못하셨던 분들, PT 비용이 부담되셨던 분들에게 강력 추천합니다. ',0,'on',null,null,null,'0',null,999999999,null,null,null);
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('it','파이썬 입문 오리지널','테스트2',200000,to_date('2021/02/17','RRRR/MM/DD'),'테스트2','파이썬파이썬파이썬파이썬파이썬파이썬파이썬파이썬파이썬',3,'on','teacher2@test.com',null,null,'0',null,9999999,'파이썬 입문 오리지널.jpg',null,null);
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('it','자바','투슬리스',20000,to_date('2021/01/03','RRRR/MM/DD'),'안녕','안녕',3.5,'on','teacher3@test.com',null,null,'0',null,9999999,'자바.jpg',null,null);
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('it2','자바2','투슬리스2',20000,to_date('2021/01/03','RRRR/MM/DD'),'안녕2','안녕2',2.5,'off','teacher4@test.com',null,null,'1',null,10,'자바2.jpg',null,null);
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('it','dsa','d',10000,to_date('2021/02/11','RRRR/MM/DD'),'d','d',1,'on','teacher5@test.com',null,null,'0',null,9999999,'dsa.jpg',null,null);
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('it','dasd','asdad',10000,to_date('2021/02/12','RRRR/MM/DD'),'d','d',0,'on','teacher6@test.com',null,null,'0',null,9999999,'dasd.jpg',null,null);
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('it','asd','asd',10000,to_date('2021/02/11','RRRR/MM/DD'),'asd','asd',5,'on','teacher7@test.com',null,null,'0',null,9999999,'asd.jpg',null,null);
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('it','자바 실전','asdad',20000,to_date('2021/02/18','RRRR/MM/DD'),'sad','실무에서 자주 쓰이는 실전 자바 강의입니다.',4,'on','teacher6@test.com',null,null,'0',null,9999999,'자바 실전.jpg',null,null);
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('it','HTML/CSS 1','d',10000,to_date('2021/02/11','RRRR/MM/DD'),'d','d',1,'off','kimilsung@test.com',null,null,'4','서울',50,null,null,null);
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('it','HTML/CSS 2','asdad',10000,to_date('2021/02/12','RRRR/MM/DD'),'d','d',0,'off','kimilsung@test.com',null,null,'1','서울',10,null,null,null);
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('it','데이터베이스 입문','asd',10000,to_date('2021/02/11','RRRR/MM/DD'),'asd','asd',5,'off','hoondong@test.com',null,null,'1','울산',10,'asd.jpg',null,null);
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('it','실전 자바 스터디','정동훈',20000,to_date('2021/02/18','RRRR/MM/DD'),'KH정보교육원 출신 스타강사','실무에서 자주 쓰이는 실전 자바 강의입니다.',4,'off','hoondong@test.com',null,null,'30','부산',30,null,null,null);
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('art','림쑤홍의 커피철학','림쑤홍',50000000,to_date('2021/03/15','RRRR/MM/DD'),'부경대 바리스타학과','그대의 커피향기 속으로 ...',5,'off','limsuhong@test.com',null,null,'1','울산광역시 옥동',15,'커피사진.jpg',null,null);
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('art','팽수의 그림교실','김명중',350000,to_date('2021/03/01','RRRR/MM/DD'),'EBS 사장','팽수가 한국에서 그림을 그립니다 참 쉽죠 ?',5,'off','pangpang@test.com',null,null,'20','울산',25,null,null,null);
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('art','팽수의 노래교실','김명중',150000,to_date('2021/03/08','RRRR/MM/DD'),'EBS 사장','팽수가 남극의 추위에서 소리 지르며 터득한 고음 발라드 !',2,'off','pangpang@test.com',null,null,'15','서울',15,null,null,null);
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('it','데이터베이스 기초','정동훈',20000,to_date('2021/02/18','RRRR/MM/DD'),'KH정보교육원 출신 스타강사','데이터 베이스의 기초',5,'off','hoondong@test.com',null,null,'30','울산 남구 삼산로35번길 19',30,null,null,null);
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('art','주식 투자','김명중',150000,to_date('2021/03/08','RRRR/MM/DD'),'EBS 사장','주식 투자의 기초에 대하여 ~',3,'off','pangpang@test.com',null,null,'8','서울',10,null,null,null);
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('it','자바 마스터 과정','정동훈',20000,to_date('2021/02/18','RRRR/MM/DD'),'KH정보교육원 출신 스타강사','자바 기초부터 취업까지 ~ ',5,'off','hoondong@test.com',null,null,'30','울산 남구 삼산로35번길 19',50,null,null,null);
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('it','웹개발 입문자 과정','김강사',500000,to_date('2021/03/01','RRRR/MM/DD'),'서울대학교 컴퓨터공학부 졸업 마이크로소프트 개발자입니다.','자바로 개발된 웹서비스가 많습니다 스프링으로 모두 같이 웹 개발합시다.',4,'on','gangsa@test.com',null,null,'0','인천',999999999,null,null,null);
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('it','안드로이드 앱 개발','김강사',1200000,to_date('2021/03/01','RRRR/MM/DD'),'서울대학교 컴퓨터공학부 졸업 마이크로소프트 개발자입니다.','코틀린으로 안드로이드 어플 개발',5,'on','gangsa@test.com',null,null,'0',null,999999999,null,null,null);
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('it','임수홍의 웹클론코딩','림쑤홍',500000,to_date('2021/03/15','RRRR/MM/DD'),'부경대 바리스타학과','임수홍의 실전 웹 클론코딩 ',5,'off','limsuhong@test.com',null,null,'0','인천',15,null,null,null);
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('it','자바 머신러닝 웨카 초급','자바라머신러닝',26000,to_date('2021/03/28','RRRR/MM/DD'),'정보화 기획/구축/진단 업무를 수행하였고 스몰데이터분석을 실무에 적용하고 있습니다.','머신러닝을 무시하거나 무서워 할 필요가 없습니다. 머신러닝은 쉽지만 머신러닝을 어디에 적용할지를 고민합시다. ',0,'on','teacher26@test.com',null,null,'0',null,999999999,'자바라.jpg',null,null);
Insert into C##TEAM4.LECTURE (KINDS,LECTURE_TITLE,TEACHER_NICKNAME,PRICE,OPENDATE,TEACHER_INTRO,LECTURE_INTRO,RATING,TYPE,MEMBER_ID,CLOSEDATE,HOURS,COUNT,LOCATION,AMOUNT,THUMBNAIL,STARTDATE,ENDDATE) values ('fitness','개설테스트',null,200000,to_date('2021/03/30','RRRR/MM/DD'),'개설테스트2','개설테스트3',0,'on','teacher3@test.com',null,null,'0',null,999999999,'main.png',null,null);
REM INSERTING into C##TEAM4.MEMBER
SET DEFINE OFF;
Insert into C##TEAM4.MEMBER (MEMBER_ID,NAME,PW,TEL,NICKNAME,GENDER,JOB,REGION,BIRTH,CDATE,UDATE,TYPE,THUMBNAIL) values ('teacher26@test.com','정가희','1234','010-1111-1111','자바라머신러닝',null,null,'울산광역시 울주군 범서읍 장검길 86, 205호',null,null,null,'강사',null);
Insert into C##TEAM4.MEMBER (MEMBER_ID,NAME,PW,TEL,NICKNAME,GENDER,JOB,REGION,BIRTH,CDATE,UDATE,TYPE,THUMBNAIL) values ('teacher2@test.com','테스트2','1234','010-2222-2223','테스트2',null,null,'울산광역시 울주군 범서읍 장검길 86, 205호',null,null,null,'강사',null);
Insert into C##TEAM4.MEMBER (MEMBER_ID,NAME,PW,TEL,NICKNAME,GENDER,JOB,REGION,BIRTH,CDATE,UDATE,TYPE,THUMBNAIL) values ('teacher22@test.com','김떙떙','1234','010-1111-1112','샤크코치',null,null,'서울특별시',null,null,null,'강사',null);
Insert into C##TEAM4.MEMBER (MEMBER_ID,NAME,PW,TEL,NICKNAME,GENDER,JOB,REGION,BIRTH,CDATE,UDATE,TYPE,THUMBNAIL) values ('student1@test.com','정가희','1234','010-1111-1111','학생1',null,null,'울산광역시 울주군 범서읍 장검길 86, 205호',null,null,null,'수강생',null);
Insert into C##TEAM4.MEMBER (MEMBER_ID,NAME,PW,TEL,NICKNAME,GENDER,JOB,REGION,BIRTH,CDATE,UDATE,TYPE,THUMBNAIL) values ('teacher1@test.com','김민수','1234','010-1111-1112','민수씌',null,null,'울산광역시 울주군 범서읍 장검길 86, 205호',null,null,null,'강사',null);
Insert into C##TEAM4.MEMBER (MEMBER_ID,NAME,PW,TEL,NICKNAME,GENDER,JOB,REGION,BIRTH,CDATE,UDATE,TYPE,THUMBNAIL) values ('test@test.com','정가희','1234','010-1111-1119','가희',null,null,'부산광역시',null,null,null,'수강생',null);
Insert into C##TEAM4.MEMBER (MEMBER_ID,NAME,PW,TEL,NICKNAME,GENDER,JOB,REGION,BIRTH,CDATE,UDATE,TYPE,THUMBNAIL) values ('admin1@test.com','안재길','admin1234','010-1111-1113','관리자1','남',null,'울산 ',null,null,null,'관리자',null);
Insert into C##TEAM4.MEMBER (MEMBER_ID,NAME,PW,TEL,NICKNAME,GENDER,JOB,REGION,BIRTH,CDATE,UDATE,TYPE,THUMBNAIL) values ('teacher3@test.com','선생','1234','010-2222-2222','선생3',null,null,'부산광역시',null,null,null,'강사',null);
REM INSERTING into C##TEAM4.ORDERS
SET DEFINE OFF;
Insert into C##TEAM4.ORDERS (ORDER_ID,STATUS,UDATE,MEMBER_ID,LECTURE_TITLE,PROGRESSBAR,STUDYDATE,ORDERDATE,CANCELDATE) values (263,'구매취소',to_timestamp('2021/03/26 19:24:23.000000000','RRRR/MM/DD HH24:MI:SSXFF'),'student1@test.com','데이터베이스 입문',0,null,to_timestamp('2021/03/26 18:31:45.231000000','RRRR/MM/DD HH24:MI:SSXFF'),null);
Insert into C##TEAM4.ORDERS (ORDER_ID,STATUS,UDATE,MEMBER_ID,LECTURE_TITLE,PROGRESSBAR,STUDYDATE,ORDERDATE,CANCELDATE) values (261,'구매취소',to_timestamp('2021/03/26 17:37:04.000000000','RRRR/MM/DD HH24:MI:SSXFF'),'student1@test.com','데이터베이스 입문',0,null,to_timestamp('2021/03/26 16:07:11.608000000','RRRR/MM/DD HH24:MI:SSXFF'),null);
Insert into C##TEAM4.ORDERS (ORDER_ID,STATUS,UDATE,MEMBER_ID,LECTURE_TITLE,PROGRESSBAR,STUDYDATE,ORDERDATE,CANCELDATE) values (266,'구매취소',to_timestamp('2021/03/26 19:35:38.000000000','RRRR/MM/DD HH24:MI:SSXFF'),'student1@test.com','림쑤홍의 커피철학',0,null,to_timestamp('2021/03/26 19:35:12.864000000','RRRR/MM/DD HH24:MI:SSXFF'),null);
Insert into C##TEAM4.ORDERS (ORDER_ID,STATUS,UDATE,MEMBER_ID,LECTURE_TITLE,PROGRESSBAR,STUDYDATE,ORDERDATE,CANCELDATE) values (281,'구매완료',to_timestamp('2021/03/30 16:33:32.705000000','RRRR/MM/DD HH24:MI:SSXFF'),'student1@test.com','데이터베이스 입문',0,null,to_timestamp('2021/03/30 16:33:32.705000000','RRRR/MM/DD HH24:MI:SSXFF'),null);
Insert into C##TEAM4.ORDERS (ORDER_ID,STATUS,UDATE,MEMBER_ID,LECTURE_TITLE,PROGRESSBAR,STUDYDATE,ORDERDATE,CANCELDATE) values (264,'구매취소',to_timestamp('2021/03/26 19:31:30.000000000','RRRR/MM/DD HH24:MI:SSXFF'),'student1@test.com','파이썬 입문 오리지널',0,null,to_timestamp('2021/03/26 11:53:17.405000000','RRRR/MM/DD HH24:MI:SSXFF'),null);
Insert into C##TEAM4.ORDERS (ORDER_ID,STATUS,UDATE,MEMBER_ID,LECTURE_TITLE,PROGRESSBAR,STUDYDATE,ORDERDATE,CANCELDATE) values (225,'구매완료',to_timestamp('2021/03/26 11:53:17.405000000','RRRR/MM/DD HH24:MI:SSXFF'),'student1@test.com','자바',60,to_timestamp('2021/03/26 17:00:45.000000000','RRRR/MM/DD HH24:MI:SSXFF'),to_timestamp('2021/03/26 11:53:17.405000000','RRRR/MM/DD HH24:MI:SSXFF'),null);
Insert into C##TEAM4.ORDERS (ORDER_ID,STATUS,UDATE,MEMBER_ID,LECTURE_TITLE,PROGRESSBAR,STUDYDATE,ORDERDATE,CANCELDATE) values (267,'구매완료',to_timestamp('2021/03/26 19:36:18.759000000','RRRR/MM/DD HH24:MI:SSXFF'),'student1@test.com','림쑤홍의 커피철학',0,null,to_timestamp('2021/03/26 19:36:18.759000000','RRRR/MM/DD HH24:MI:SSXFF'),null);
Insert into C##TEAM4.ORDERS (ORDER_ID,STATUS,UDATE,MEMBER_ID,LECTURE_TITLE,PROGRESSBAR,STUDYDATE,ORDERDATE,CANCELDATE) values (300,'구매완료',to_timestamp('2021/03/26 19:36:18.759000000','RRRR/MM/DD HH24:MI:SSXFF'),'student1@test.com','샤크코치의 근력 운동',0,null,to_timestamp('2021/03/26 19:36:18.759000000','RRRR/MM/DD HH24:MI:SSXFF'),null);
Insert into C##TEAM4.ORDERS (ORDER_ID,STATUS,UDATE,MEMBER_ID,LECTURE_TITLE,PROGRESSBAR,STUDYDATE,ORDERDATE,CANCELDATE) values (301,'구매완료',to_timestamp('2021/03/26 19:36:18.759000000','RRRR/MM/DD HH24:MI:SSXFF'),'test@test.com','샤크코치의 근력 운동',0,null,to_timestamp('2021/03/26 19:36:18.759000000','RRRR/MM/DD HH24:MI:SSXFF'),null);
Insert into C##TEAM4.ORDERS (ORDER_ID,STATUS,UDATE,MEMBER_ID,LECTURE_TITLE,PROGRESSBAR,STUDYDATE,ORDERDATE,CANCELDATE) values (302,'구매완료',to_timestamp('2021/03/26 19:36:18.759000000','RRRR/MM/DD HH24:MI:SSXFF'),'test@test.com','자바 머신러닝 웨카 초급',0,null,to_timestamp('2021/03/26 19:36:18.759000000','RRRR/MM/DD HH24:MI:SSXFF'),null);
Insert into C##TEAM4.ORDERS (ORDER_ID,STATUS,UDATE,MEMBER_ID,LECTURE_TITLE,PROGRESSBAR,STUDYDATE,ORDERDATE,CANCELDATE) values (303,'구매완료',to_timestamp('2021/03/26 19:31:30.000000000','RRRR/MM/DD HH24:MI:SSXFF'),'test@test.com','파이썬 입문 오리지널',0,null,to_timestamp('2021/03/26 11:53:17.405000000','RRRR/MM/DD HH24:MI:SSXFF'),null);
REM INSERTING into C##TEAM4.PROGRESS
SET DEFINE OFF;
REM INSERTING into C##TEAM4.QNA
SET DEFINE OFF;
REM INSERTING into C##TEAM4.QNA_UPLOAD_FILE
SET DEFINE OFF;
REM INSERTING into C##TEAM4.RESERVATION
SET DEFINE OFF;
REM INSERTING into C##TEAM4.REVIEW
SET DEFINE OFF;
Insert into C##TEAM4.REVIEW (REVIEW_ID,RCONTENT,RATING,CDATE,UDATE,MEMBER_ID,LECTURE_TITLE) values (321,'초급 과정을 구매할까 말까 많이 망설였습니다. 목차를 봤을 때 대부분 아는 내용이라서 굳이 들을 필요가 있을까 싶었지만 좋은 사람님과 인프런에 대한 의리로 구매했습니다. (일부러 할인 끝나길 기다렸다 샀어여...)

결과적으로 사길 잘했습니다. 아는 내용이지만 복습 차원에서 점검할 수 있었고, 몰랐던 내용을 4~ 5가지 정도 획득했습니다. 충분히 값을 하는 인강이었습니다. 기초부터 탄탄하게 알려주셔서 너무 좋고, 향후 개발 업무에서 어떻게 활용될 수 있는지 까지 알려주는 강의는 아마 국내에서 유일하지 않을까 싶습니다.

지금 중급 과정 들으러 갑니다!',3,to_timestamp('2021/03/16 16:06:26.000000000','RRRR/MM/DD HH24:MI:SSXFF'),null,null,'자바');
Insert into C##TEAM4.REVIEW (REVIEW_ID,RCONTENT,RATING,CDATE,UDATE,MEMBER_ID,LECTURE_TITLE) values (323,'초급 과정을 구매할까 말까 많이 망설였습니다. 목차를 봤을 때 대부분 아는 내용이라서 굳이 들을 필요가 있을까 싶었지만 좋은 사람님과 인프런에 대한 의리로 구매했습니다. (일부러 할인 끝나길 기다렸다 샀어여...)

결과적으로 사길 잘했습니다. 아는 내용이지만 복습 차원에서 점검할 수 있었고, 몰랐던 내용을 4~ 5가지 정도 획득했습니다. 충분히 값을 하는 인강이었습니다. 기초부터 탄탄하게 알려주셔서 너무 좋고, 향후 개발 업무에서 어떻게 활용될 수 있는지 까지 알려주는 강의는 아마 국내에서 유일하지 않을까 싶습니다.

지금 중급 과정 들으러 갑니다!',4,to_timestamp('2021/03/16 16:17:55.000000000','RRRR/MM/DD HH24:MI:SSXFF'),null,null,'자바');
Insert into C##TEAM4.REVIEW (REVIEW_ID,RCONTENT,RATING,CDATE,UDATE,MEMBER_ID,LECTURE_TITLE) values (341,'초급 과정을 구매할까 말까 많이 망설였습니다. 목차를 봤을 때 대부분 아는 내용이라서 굳이 들을 필요가 있을까 싶었지만 좋은 사람님과 인프런에 대한 의리로 구매했습니다. (일부러 할인 끝나길 기다렸다 샀어여...)

결과적으로 사길 잘했습니다. 아는 내용이지만 복습 차원에서 점검할 수 있었고, 몰랐던 내용을 4~ 5가지 정도 획득했습니다. 충분히 값을 하는 인강이었습니다. 기초부터 탄탄하게 알려주셔서 너무 좋고, 향후 개발 업무에서 어떻게 활용될 수 있는지 까지 알려주는 강의는 아마 국내에서 유일하지 않을까 싶습니다.

지금 중급 과정 들으러 갑니다!',3,to_timestamp('2021/03/17 10:58:57.000000000','RRRR/MM/DD HH24:MI:SSXFF'),null,'test@test.com','자바');
Insert into C##TEAM4.REVIEW (REVIEW_ID,RCONTENT,RATING,CDATE,UDATE,MEMBER_ID,LECTURE_TITLE) values (327,'초급 과정을 구매할까 말까 많이 망설였습니다. 목차를 봤을 때 대부분 아는 내용이라서 굳이 들을 필요가 있을까 싶었지만 좋은 사람님과 인프런에 대한 의리로 구매했습니다. (일부러 할인 끝나길 기다렸다 샀어여...)

결과적으로 사길 잘했습니다. 아는 내용이지만 복습 차원에서 점검할 수 있었고, 몰랐던 내용을 4~ 5가지 정도 획득했습니다. 충분히 값을 하는 인강이었습니다. 기초부터 탄탄하게 알려주셔서 너무 좋고, 향후 개발 업무에서 어떻게 활용될 수 있는지 까지 알려주는 강의는 아마 국내에서 유일하지 않을까 싶습니다.

지금 중급 과정 들으러 갑니다!',3,to_timestamp('2021/03/16 16:30:04.000000000','RRRR/MM/DD HH24:MI:SSXFF'),null,'student1@test.com','자바');
Insert into C##TEAM4.REVIEW (REVIEW_ID,RCONTENT,RATING,CDATE,UDATE,MEMBER_ID,LECTURE_TITLE) values (189,'초급 과정을 구매할까 말까 많이 망설였습니다. 목차를 봤을 때 대부분 아는 내용이라서 굳이 들을 필요가 있을까 싶었지만 좋은 사람님과 인프런에 대한 의리로 구매했습니다. (일부러 할인 끝나길 기다렸다 샀어여...)

결과적으로 사길 잘했습니다. 아는 내용이지만 복습 차원에서 점검할 수 있었고, 몰랐던 내용을 4~ 5가지 정도 획득했습니다. 충분히 값을 하는 인강이었습니다. 기초부터 탄탄하게 알려주셔서 너무 좋고, 향후 개발 업무에서 어떻게 활용될 수 있는지 까지 알려주는 강의는 아마 국내에서 유일하지 않을까 싶습니다.

지금 중급 과정 들으러 갑니다!',3,to_timestamp('2021/02/14 19:54:46.000000000','RRRR/MM/DD HH24:MI:SSXFF'),null,null,'자바 실전');
REM INSERTING into C##TEAM4.VIDEO
SET DEFINE OFF;
Insert into C##TEAM4.VIDEO (VIDEO_ID,TITLE,CONTENT,CDATE,UDATE,LECTURE_TITLE,FILENAME,SECRET,CHAPTER_ID) values (121,'why 자바머신러닝','안녕하세요',to_timestamp('2021/03/29 11:52:10.000000000','RRRR/MM/DD HH24:MI:SSXFF'),to_timestamp('2021/03/29 13:04:37.000000000','RRRR/MM/DD HH24:MI:SSXFF'),'자바 머신러닝 웨카 초급','weka1수정본.mp4','n',1);
REM INSERTING into C##TEAM4.WISH
SET DEFINE OFF;
Insert into C##TEAM4.WISH (MEMBER_ID,LECTURE_TITLE,UDATE) values ('teacher3@test.com','자바',to_timestamp('2021/03/26 13:15:15.000000000','RRRR/MM/DD HH24:MI:SSXFF'));
Insert into C##TEAM4.WISH (MEMBER_ID,LECTURE_TITLE,UDATE) values ('student1@test.com','자바 실전',to_timestamp('2021/03/26 14:35:53.000000000','RRRR/MM/DD HH24:MI:SSXFF'));
Insert into C##TEAM4.WISH (MEMBER_ID,LECTURE_TITLE,UDATE) values ('teacher3@test.com','파이썬 입문 오리지널',to_timestamp('2021/03/26 12:32:15.000000000','RRRR/MM/DD HH24:MI:SSXFF'));
Insert into C##TEAM4.WISH (MEMBER_ID,LECTURE_TITLE,UDATE) values ('admin1@test.com','자바',to_timestamp('2021/03/30 12:54:46.000000000','RRRR/MM/DD HH24:MI:SSXFF'));
--------------------------------------------------------
--  DDL for Index ONLINE_REVIEW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##TEAM4"."ONLINE_REVIEW_PK" ON "C##TEAM4"."REVIEW" ("REVIEW_ID") 
  ;
--------------------------------------------------------
--  DDL for Index RESERVATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##TEAM4"."RESERVATION_PK" ON "C##TEAM4"."RESERVATION" ("RESERVE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index QNA_UPLOAD_FILE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##TEAM4"."QNA_UPLOAD_FILE_PK" ON "C##TEAM4"."QNA_UPLOAD_FILE" ("FID") 
  ;
--------------------------------------------------------
--  DDL for Index LECTURE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##TEAM4"."LECTURE_PK" ON "C##TEAM4"."LECTURE" ("LECTURE_TITLE") 
  ;
--------------------------------------------------------
--  DDL for Index CALENDAR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##TEAM4"."CALENDAR_PK" ON "C##TEAM4"."CALENDAR" ("CALENDAR_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CHAPTER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##TEAM4"."CHAPTER_PK" ON "C##TEAM4"."CHAPTER" ("LECTURE_TITLE", "CHAPTER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index VIDEO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##TEAM4"."VIDEO_PK" ON "C##TEAM4"."VIDEO" ("VIDEO_ID") 
  ;
--------------------------------------------------------
--  DDL for Index STUDENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##TEAM4"."STUDENT_PK" ON "C##TEAM4"."MEMBER" ("MEMBER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ORDERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##TEAM4"."ORDERS_PK" ON "C##TEAM4"."ORDERS" ("ORDER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index QNA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##TEAM4"."QNA_PK" ON "C##TEAM4"."QNA" ("QNA_NUM") 
  ;
--------------------------------------------------------
--  Constraints for Table LECTURE
--------------------------------------------------------

  ALTER TABLE "C##TEAM4"."LECTURE" MODIFY ("LECTURE_TITLE" NOT NULL ENABLE);
  ALTER TABLE "C##TEAM4"."LECTURE" ADD CONSTRAINT "LECTURE_PK" PRIMARY KEY ("LECTURE_TITLE")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "C##TEAM4"."MEMBER" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "C##TEAM4"."MEMBER" MODIFY ("PW" NOT NULL ENABLE);
  ALTER TABLE "C##TEAM4"."MEMBER" MODIFY ("TEL" NOT NULL ENABLE);
  ALTER TABLE "C##TEAM4"."MEMBER" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
  ALTER TABLE "C##TEAM4"."MEMBER" ADD CONSTRAINT "MEMBER_PK" PRIMARY KEY ("MEMBER_ID")
  USING INDEX (CREATE UNIQUE INDEX "C##TEAM4"."STUDENT_PK" ON "C##TEAM4"."MEMBER" ("MEMBER_ID") 
  )  ENABLE;
  ALTER TABLE "C##TEAM4"."MEMBER" MODIFY ("NICKNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table QNA_UPLOAD_FILE
--------------------------------------------------------

  ALTER TABLE "C##TEAM4"."QNA_UPLOAD_FILE" MODIFY ("FID" NOT NULL ENABLE);
  ALTER TABLE "C##TEAM4"."QNA_UPLOAD_FILE" ADD CONSTRAINT "QNA_UPLOAD_FILE_PK" PRIMARY KEY ("FID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "C##TEAM4"."ORDERS" MODIFY ("ORDER_ID" NOT NULL ENABLE);
  ALTER TABLE "C##TEAM4"."ORDERS" ADD CONSTRAINT "ORDERS_PK" PRIMARY KEY ("ORDER_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table WISH
--------------------------------------------------------

  ALTER TABLE "C##TEAM4"."WISH" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
  ALTER TABLE "C##TEAM4"."WISH" MODIFY ("LECTURE_TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "C##TEAM4"."QNA" MODIFY ("QNA_NUM" NOT NULL ENABLE);
  ALTER TABLE "C##TEAM4"."QNA" ADD CONSTRAINT "QNA_PK" PRIMARY KEY ("QNA_NUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "C##TEAM4"."RESERVATION" MODIFY ("RESERVE_ID" NOT NULL ENABLE);
  ALTER TABLE "C##TEAM4"."RESERVATION" ADD CONSTRAINT "RESERVATION_PK" PRIMARY KEY ("RESERVE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table BASKET
--------------------------------------------------------

  ALTER TABLE "C##TEAM4"."BASKET" MODIFY ("LECTURE_TITLE" NOT NULL ENABLE);
  ALTER TABLE "C##TEAM4"."BASKET" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VIDEO
--------------------------------------------------------

  ALTER TABLE "C##TEAM4"."VIDEO" MODIFY ("VIDEO_ID" NOT NULL ENABLE);
  ALTER TABLE "C##TEAM4"."VIDEO" ADD CONSTRAINT "VIDEO_PK" PRIMARY KEY ("VIDEO_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CHAPTER
--------------------------------------------------------

  ALTER TABLE "C##TEAM4"."CHAPTER" MODIFY ("CHAPTER_ID" NOT NULL ENABLE);
  ALTER TABLE "C##TEAM4"."CHAPTER" MODIFY ("LECTURE_TITLE" NOT NULL ENABLE);
  ALTER TABLE "C##TEAM4"."CHAPTER" ADD CONSTRAINT "CHAPTER_PK" PRIMARY KEY ("LECTURE_TITLE", "CHAPTER_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "C##TEAM4"."REVIEW" MODIFY ("REVIEW_ID" NOT NULL ENABLE);
  ALTER TABLE "C##TEAM4"."REVIEW" ADD CONSTRAINT "REVIEW_PK" PRIMARY KEY ("REVIEW_ID")
  USING INDEX (CREATE UNIQUE INDEX "C##TEAM4"."ONLINE_REVIEW_PK" ON "C##TEAM4"."REVIEW" ("REVIEW_ID") 
  )  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROGRESS
--------------------------------------------------------

  ALTER TABLE "C##TEAM4"."PROGRESS" MODIFY ("PROGRESS" NOT NULL ENABLE);
  ALTER TABLE "C##TEAM4"."PROGRESS" MODIFY ("LECTURE_TITLE" NOT NULL ENABLE);
  ALTER TABLE "C##TEAM4"."PROGRESS" MODIFY ("VIDEO_ID" NOT NULL ENABLE);
  ALTER TABLE "C##TEAM4"."PROGRESS" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CALENDAR
--------------------------------------------------------

  ALTER TABLE "C##TEAM4"."CALENDAR" MODIFY ("CALENDAR_ID" NOT NULL ENABLE);
  ALTER TABLE "C##TEAM4"."CALENDAR" ADD CONSTRAINT "CALENDAR_PK" PRIMARY KEY ("CALENDAR_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BASKET
--------------------------------------------------------

  ALTER TABLE "C##TEAM4"."BASKET" ADD CONSTRAINT "BASKET_FK1" FOREIGN KEY ("LECTURE_TITLE")
	  REFERENCES "C##TEAM4"."LECTURE" ("LECTURE_TITLE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CALENDAR
--------------------------------------------------------

  ALTER TABLE "C##TEAM4"."CALENDAR" ADD CONSTRAINT "CALENDAR_FK1" FOREIGN KEY ("LECTURE_TITLE")
	  REFERENCES "C##TEAM4"."LECTURE" ("LECTURE_TITLE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CHAPTER
--------------------------------------------------------

  ALTER TABLE "C##TEAM4"."CHAPTER" ADD CONSTRAINT "CHAPTER_FK1" FOREIGN KEY ("LECTURE_TITLE")
	  REFERENCES "C##TEAM4"."LECTURE" ("LECTURE_TITLE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "C##TEAM4"."ORDERS" ADD CONSTRAINT "ORDERS_FK1" FOREIGN KEY ("LECTURE_TITLE")
	  REFERENCES "C##TEAM4"."LECTURE" ("LECTURE_TITLE") ENABLE;
  ALTER TABLE "C##TEAM4"."ORDERS" ADD CONSTRAINT "ORDERS_FK2" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "C##TEAM4"."MEMBER" ("MEMBER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROGRESS
--------------------------------------------------------

  ALTER TABLE "C##TEAM4"."PROGRESS" ADD CONSTRAINT "PROGRESS_FK1" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "C##TEAM4"."MEMBER" ("MEMBER_ID") ENABLE;
  ALTER TABLE "C##TEAM4"."PROGRESS" ADD CONSTRAINT "PROGRESS_FK2" FOREIGN KEY ("VIDEO_ID")
	  REFERENCES "C##TEAM4"."VIDEO" ("VIDEO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "C##TEAM4"."QNA" ADD CONSTRAINT "QNA_FK1" FOREIGN KEY ("LECTURE_TITLE")
	  REFERENCES "C##TEAM4"."LECTURE" ("LECTURE_TITLE") ENABLE;
  ALTER TABLE "C##TEAM4"."QNA" ADD CONSTRAINT "QNA_FK2" FOREIGN KEY ("TITLE")
	  REFERENCES "C##TEAM4"."MEMBER" ("MEMBER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table QNA_UPLOAD_FILE
--------------------------------------------------------

  ALTER TABLE "C##TEAM4"."QNA_UPLOAD_FILE" ADD CONSTRAINT "QNA_UPLOAD_FILE_FK1" FOREIGN KEY ("QNA_NUM")
	  REFERENCES "C##TEAM4"."QNA" ("QNA_NUM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "C##TEAM4"."REVIEW" ADD CONSTRAINT "REVIEW_FK1" FOREIGN KEY ("LECTURE_TITLE")
	  REFERENCES "C##TEAM4"."LECTURE" ("LECTURE_TITLE") ENABLE;
  ALTER TABLE "C##TEAM4"."REVIEW" ADD CONSTRAINT "REVIEW_FK2" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "C##TEAM4"."MEMBER" ("MEMBER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VIDEO
--------------------------------------------------------

  ALTER TABLE "C##TEAM4"."VIDEO" ADD CONSTRAINT "VIDEO_FK1" FOREIGN KEY ("LECTURE_TITLE")
	  REFERENCES "C##TEAM4"."LECTURE" ("LECTURE_TITLE") ENABLE;
  ALTER TABLE "C##TEAM4"."VIDEO" ADD CONSTRAINT "VIDEO_FK2" FOREIGN KEY ("LECTURE_TITLE", "CHAPTER_ID")
	  REFERENCES "C##TEAM4"."CHAPTER" ("LECTURE_TITLE", "CHAPTER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table WISH
--------------------------------------------------------

  ALTER TABLE "C##TEAM4"."WISH" ADD CONSTRAINT "WISH_FK1" FOREIGN KEY ("LECTURE_TITLE")
	  REFERENCES "C##TEAM4"."LECTURE" ("LECTURE_TITLE") ENABLE;
  ALTER TABLE "C##TEAM4"."WISH" ADD CONSTRAINT "WISH_FK2" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "C##TEAM4"."MEMBER" ("MEMBER_ID") ENABLE;
