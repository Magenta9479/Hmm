DROP TABLE WEEKSUBJECT CASCADE CONSTRAINTS;
DROP TABLE PROLIST CASCADE CONSTRAINTS;
DROP TABLE CONLIST CASCADE CONSTRAINTS;
DROP SEQUENCE NEWTECH_SEQ;

CREATE SEQUENCE NEWTECH_SEQ
START WITH 1
INCREMENT BY 1
NOMAXVALUE;

CREATE TABLE WEEKSUBJECT
(
    WSCODE NUMBER PRIMARY KEY,
    TITLE VARCHAR2(100) NOT NULL,
    STARTDATE DATE NOT NULL    
);

INSERT INTO WEEKSUBJECT VALUES
(
	NEWTECH_SEQ.NEXTVAL,'첫번째 주제 : 반장의 연애는 30대 전까지 가능하다?',SYSDATE-10
);

INSERT INTO WEEKSUBJECT VALUES
(
	NEWTECH_SEQ.NEXTVAL,'두번째 주제 : 반장의 연애는 40대 전까지 가능하다?',SYSDATE-3
);

CREATE TABLE PROLIST
(
    WSCODE NUMBER PRIMARY KEY,
    ID VARCHAR2(11),
    CONSTRAINT PL_ID FOREIGN KEY (ID) REFERENCES MEMBER(ID)
);

CREATE TABLE CONLIST
(
    WSCODE NUMBER PRIMARY KEY,
    ID VARCHAR2(11),
    CONSTRAINT CL_ID FOREIGN KEY (ID) REFERENCES MEMBER(ID)
);

COMMIT;
