INSERT INTO ITEM VALUES(ITEM_SEQ.NEXTVAL,'1',30,'TEST1',1000);
INSERT INTO ITEM VALUES(ITEM_SEQ.NEXTVAL,'2',60,'TEST2',2000);
INSERT INTO ITEM VALUES(ITEM_SEQ.NEXTVAL,'3',90,'TEST3',3000);
INSERT INTO ITEM VALUES(ITEM_SEQ.NEXTVAL,'4',30,'TEST4',4000);
INSERT INTO ITEM VALUES(ITEM_SEQ.NEXTVAL,'5',60,'TEST5',5000);
INSERT INTO ITEM VALUES(ITEM_SEQ.NEXTVAL,'6',90,'TEST6',6000);
INSERT INTO ITEM VALUES(ITEM_SEQ.NEXTVAL,'7',30,'TEST7',7000);
INSERT INTO ITEM VALUES(ITEM_SEQ.NEXTVAL,'8',60,'TEST8',8000);
INSERT INTO ITEM VALUES(ITEM_SEQ.NEXTVAL,'9',90,'TEST9',9000);
INSERT INTO ITEM VALUES(ITEM_SEQ.NEXTVAL,'10',30,'TEST10',10000);

INSERT INTO PURCHASEDITEM VALUES(1,1,SYSDATE);
INSERT INTO PURCHASEDITEM VALUES(1,3,SYSDATE);
INSERT INTO PURCHASEDITEM VALUES(1,5,SYSDATE);
INSERT INTO PURCHASEDITEM VALUES(1,7,SYSDATE);
INSERT INTO PURCHASEDITEM VALUES(1,9,SYSDATE);

INSERT INTO PURCHASEDITEM VALUES(2,2,SYSDATE);
INSERT INTO PURCHASEDITEM VALUES(2,4,SYSDATE);
INSERT INTO PURCHASEDITEM VALUES(2,6,SYSDATE);
INSERT INTO PURCHASEDITEM VALUES(2,8,SYSDATE);
INSERT INTO PURCHASEDITEM VALUES(2,10,SYSDATE);

COMMIT;