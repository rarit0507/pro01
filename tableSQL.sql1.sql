drop table qna;

----------------------------------------------------------------------------------

create sequence qseq start with 1 increment by 1;
CREATE TABLE qna (
    NO NUMBER(38) NOT NULL,
    PLEVEL NUMBER(10) NOT NULL,
    PARNO NUMBER(38),
    TITLE VARCHAR2(30) NOT NULL,
    CONTENT VARCHAR2(1000),
    RESDATE TIMESTAMP(6) NOT NULL,
    VISITED NUMBER(38),
    AID VARCHAR2(30) NOT NULL,
    PRIMARY KEY (NO),
    FOREIGN KEY (AID) REFERENCES member(ID)
);

create sequence dseq start with 1 increment by 1;
CREATE TABLE data (
    NO NUMBER(38) NOT NULL,
    TITLE VARCHAR2(30) NOT NULL,
    CONTENT VARCHAR2(50),
    RESDATE TIMESTAMP(6),
    VISITED NUMBER(38),
    DATAFILE VARCHAR2(1000),
    PRIMARY KEY (NO)
);

create sequence gseq start with 1 increment by 1;
CREATE TABLE guide (
    PCODE NUMBER(38) NOT NULL,
    PNAME VARCHAR2(100) NOT NULL,
    PTYPE VARCHAR2(100) NOT NULL,
    PADDR VARCHAR2(200) NOT NULL,
    PTEL VARCHAR2(20),
    PCOMENT VARCHAR2(2000),
    PRIMARY KEY (PCODE)
);

create sequence nseq start with 1 increment by 1;
CREATE TABLE notice (
    NO NUMBER(38) NOT NULL,
    TITLE VARCHAR2(30) NOT NULL,
    CONTENT VARCHAR2(50),
    RESDATE TIMESTAMP(6) NOT NULL,
    VISITED NUMBER(38),
    PRIMARY KEY (NO)
);

create sequence tseq start with 1 increment by 1;
CREATE TABLE traffic (
    TNO NUMBER(38) NOT NULL,
    TTYPE VARCHAR2(20) NOT NULL,
    NO VARCHAR2(10) NOT NULL,
    ROUTE VARCHAR2(1000),
    COMENT VARCHAR2(1000),
    PRIMARY KEY (TNO)
);

CREATE TABLE member (
    ID VARCHAR2(30) NOT NULL,
    PW VARCHAR2(50) NOT NULL,
    NAME VARCHAR2(30) NOT NULL,
    EMAIL VARCHAR2(50),
    TEL VARCHAR2(30),
    PRIMARY KEY (ID)
);
alter table member add addr varchar2(300);
alter table member add postcode varchar2(20);
alter table member modify pw varchar2(300);
ALTER TABLE guide2 RENAME TO guide;

DROP TABLE qna;
DROP TABLE data;
DROP TABLE guide;
DROP TABLE notice;
DROP TABLE traffic;
DROP TABLE member;

desc qna;
desc member;
desc guide;

DELETE FROM qna;
DELETE FROM data;
DELETE FROM guide;
DELETE FROM notice;
DELETE FROM traffic;
DELETE FROM member;

----------------------------------------------------------------------------

-- qna ���̺� ���� ������ ����
INSERT INTO qna VALUES (qseq.NEXTVAL, 1, null, '����1', '���� ����1', SYSTIMESTAMP, 0, 'user1');
INSERT INTO qna VALUES (qseq.NEXTVAL, 1, null, '����2', '���� ����2', SYSTIMESTAMP, 0, 'user2');
INSERT INTO qna VALUES (qseq.NEXTVAL, 1, null, '����3', '���� ����3', SYSTIMESTAMP, 0, 'user3');
INSERT INTO qna VALUES (qseq.NEXTVAL, 2, 1, '�亯1', '�亯 ����1', SYSTIMESTAMP, 0, 'admin');
INSERT INTO qna VALUES (qseq.NEXTVAL, 2, 2, '�亯2', '�亯 ����2', SYSTIMESTAMP, 0, 'admin');

-- member ���̺� ���� ������ ����
INSERT INTO member VALUES ('admin', 'admin', 'Admin', 'admin@example.com', '123-456-7890');
INSERT INTO member VALUES ('user1', 'user1', 'User1', 'user1@example.com', '123-456-7890');
INSERT INTO member VALUES ('user2', 'user2', 'User2', 'user2@example.com', '123-456-7890');
INSERT INTO member VALUES ('user3', 'user3', 'User3', 'user3@example.com', '123-456-7890');
INSERT INTO member VALUES ('user4', 'user4', 'User4', 'user4@example.com', '123-456-7890');

update member set addr = '0', postcode = '0' where id='admin';
update member set addr = '1', postcode = '1' where id='user1';
update member set addr = '2', postcode = '2' where id='user2';
update member set addr = '3', postcode = '3' where id='user3';
update member set addr = '4', postcode = '4' where id='user4';

-- data ���̺� ���� ������ ����
INSERT INTO data VALUES (dseq.NEXTVAL, '������1', '������ ����1', SYSTIMESTAMP, 0, 'file1.txt');
INSERT INTO data VALUES (dseq.NEXTVAL, '������2', '������ ����2', SYSTIMESTAMP, 0, 'file2.txt');
INSERT INTO data VALUES (dseq.NEXTVAL, '������3', '������ ����3', SYSTIMESTAMP, 0, 'file3.txt');
INSERT INTO data VALUES (dseq.NEXTVAL, '������4', '������ ����4', SYSTIMESTAMP, 0, 'file4.txt');
INSERT INTO data VALUES (dseq.NEXTVAL, '������5', '������ ����5', SYSTIMESTAMP, 0, 'file5.txt');

-- guide2 ���̺� ���� ������ ����
INSERT INTO guide2 VALUES (gseq.NEXTVAL, '���̵�1', 'Ÿ��1', '�ּ�1', '010-1234-5678', '�ڸ�Ʈ1');
INSERT INTO guide2 VALUES (gseq.NEXTVAL, '���̵�2', 'Ÿ��2', '�ּ�2', '010-2345-6789', '�ڸ�Ʈ2');
INSERT INTO guide2 VALUES (gseq.NEXTVAL, '���̵�3', 'Ÿ��3', '�ּ�3', '010-3456-7890', '�ڸ�Ʈ3');
INSERT INTO guide2 VALUES (gseq.NEXTVAL, '���̵�4', 'Ÿ��4', '�ּ�4', '010-4567-8901', '�ڸ�Ʈ4');
INSERT INTO guide2 VALUES (gseq.NEXTVAL, '���̵�5', 'Ÿ��5', '�ּ�5', '010-5678-9012', '�ڸ�Ʈ5');

-- notice ���̺� ���� ������ ����
INSERT INTO notice VALUES (nseq.NEXTVAL, '��������1', '�������� ����1', SYSTIMESTAMP, 0);
INSERT INTO notice VALUES (nseq.NEXTVAL, '��������2', '�������� ����2', SYSTIMESTAMP, 0);
INSERT INTO notice VALUES (nseq.NEXTVAL, '��������3', '�������� ����3', SYSTIMESTAMP, 0);
INSERT INTO notice VALUES (nseq.NEXTVAL, '��������4', '�������� ����4', SYSTIMESTAMP, 0);
INSERT INTO notice VALUES (nseq.NEXTVAL, '��������5', '�������� ����5', SYSTIMESTAMP, 0);

-- traffic ���̺� ���� ������ ����
INSERT INTO traffic VALUES (tseq.NEXTVAL, '����1', '��ȣ1', '���1', '�ڸ�Ʈ1');
INSERT INTO traffic VALUES (tseq.NEXTVAL, '����2', '��ȣ2', '���2', '�ڸ�Ʈ2');
INSERT INTO traffic VALUES (tseq.NEXTVAL, '����3', '��ȣ3', '���3', '�ڸ�Ʈ3');
INSERT INTO traffic VALUES (tseq.NEXTVAL, '����4', '��ȣ4', '���4', '�ڸ�Ʈ4');
INSERT INTO traffic VALUES (tseq.NEXTVAL, '����5', '��ȣ5', '���5', '�ڸ�Ʈ5');

-------------------------------------------------------------------------------------------------------------

select * from member;
select * from data;
select * from traffic;
select * from notice;
select * from guide;
select * from qna;
desc qna;

------------------------------------------------------------------------------------------------------------