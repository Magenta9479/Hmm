DROP TABLE MEMBER CASCADE CONSTRAINTS;
DROP TABLE ITEM CASCADE CONSTRAINTS;
DROP TABLE PURCHASEDITEM CASCADE CONSTRAINTS;
DROP TABLE BOARDCODE CASCADE CONSTRAINTS;
DROP TABLE BOARD CASCADE CONSTRAINTS;
DROP TABLE BOARDPOINT CASCADE CONSTRAINTS;
DROP TABLE ATTACHFILE CASCADE CONSTRAINTS;
DROP TABLE COMMENTS CASCADE CONSTRAINTS;
DROP TABLE COMMENTSPOINT CASCADE CONSTRAINTS;


CREATE TABLE MEMBER
(
    MEMBERCODE NUMBER PRIMARY KEY,
    ID VARCHAR2(11) UNIQUE,
    PASSWORD VARCHAR2(20) NOT NULL,
    EMAIL VARCHAR2(30) UNIQUE NOT NULL,
    PHOTO VARCHAR2(100),
    MEDAL NUMBER DEFAULT 0 NOT NULL,
    EXP NUMBER DEFAULT 0 NOT NULL,
    CHASH NUMBER DEFAULT 0 NOT NULL,
    DDARU NUMBER DEFAULT 0 NOT NULL,
    JOB VARCHAR2(24),
    ENROLLDATE DATE DEFAULT SYSDATE NOT NULL,
    QUITDATE DATE
);

CREATE TABLE ITEM
(
    ITEMCODE NUMBER PRIMARY KEY,
    NAME VARCHAR2(30) NOT NULL,
    USAGEDATE NUMBER NOT NULL,
    FILELINK VARCHAR2(100) NOT NULL,
    PRICE NUMBER NOT NULL
);

CREATE TABLE PURCHASEDITEM
(
    MEMBERCODE NUMBER,
    ITEMCODE NUMBER,
    PURCHASEDATE DATE NOT NULL,
    CONSTRAINT PK_MEMBER_ITEM PRIMARY KEY(MEMBERCODE,ITEMCODE),
    CONSTRAINT FK_MEMBER FOREIGN KEY (MEMBERCODE) REFERENCES MEMBER (MEMBERCODE),
    CONSTRAINT FK_ITEM FOREIGN KEY (ITEMCODE) REFERENCES ITEM (ITEMCODE)
);

CREATE TABLE BOARDCODE
(
    DISCODE NUMBER PRIMARY KEY,
    NAME VARCHAR2(20)
);

CREATE TABLE BOARD
(
    BCODE NUMBER PRIMARY KEY,
    TITLE VARCHAR2(200) NOT NULL,
    CONTENT  VARCHAR2(4000),
    DISTINGUISH  NUMBER NOT NULL,
    WRITERID  VARCHAR2(11) NOT NULL,
    POSTDATE DATE DEFAULT SYSDATE NOT NULL ,
    ISDELETE CHAR(1),
    HASFILE CHAR(1),
    CONSTRAINT FK_ID_BOARD FOREIGN KEY (WRITERID) REFERENCES MEMBER (ID),
    CONSTRAINT FK_DISTINGUISH FOREIGN KEY (DISTINGUISH) REFERENCES BOARDCODE (DISCODE)
);

CREATE TABLE BOARDPOINT
(
    BCODE NUMBER PRIMARY KEY,
    VIEWNUM NUMBER DEFAULT 0 NOT NULL,
    BEST NUMBER DEFAULT 0 NOT NULL,
    GOOD NUMBER DEFAULT 0 NOT NULL,
    BAD NUMBER DEFAULT 0 NOT NULL,
    WORST NUMBER DEFAULT 0 NOT NULL,
    CAL NUMBER DEFAULT 0 NOT NULL,
    CONSTRAINT FK_BOARDPOINT FOREIGN KEY (BCODE) REFERENCES BOARD (BCODE)
);

CREATE TABLE ATTACHFILE
(
    ATCODE NUMBER PRIMARY KEY,
    ORIGINNAME VARCHAR2(1000) NOT NULL,
    CHANGEDNAME  VARCHAR2(1000) NOT NULL,
    BCODE NUMBER,
    FILELINK  VARCHAR2(2000) NOT NULL,
    CONSTRAINT FK_ATTA_BOARD FOREIGN KEY (BCODE) REFERENCES BOARD (BCODE)    
);

CREATE TABLE COMMENTS
(
    CCODE NUMBER PRIMARY KEY,
    CONTENT VARCHAR2(600),
    WRITERID VARCHAR2(11) NOT NULL,
    POSTDATE DATE DEFAULT SYSDATE NOT NULL,
    LEV NUMBER NOT NULL,
    UPPER NUMBER,
    BCODE NUMBER NOT NULL,
    CONSTRAINT FK_COMMENT_BOARD FOREIGN KEY (BCODE) REFERENCES BOARD (BCODE),
    CONSTRAINT FK_COMMENT FOREIGN KEY (UPPER) REFERENCES COMMENTS (CCODE),
    CONSTRAINT FK_COMMENT_ID FOREIGN KEY (WRITERID) REFERENCES MEMBER (ID)  
);

CREATE TABLE COMMENTSPOINT
(
    CCODE NUMBER PRIMARY KEY,
    GOOD NUMBER DEFAULT 0 NOT NULL,
    BAD NUMBER DEFAULT 0 NOT NULL,
    CAL NUMBER DEFAULT 0 NOT NULL,
    CONSTRAINT FK_COMMENTSPOINT FOREIGN KEY (CCODE) REFERENCES COMMENTS (CCODE)
);