select * from qna;

select * from guide;
insert into guide values(gseq.nextval, '장소1','종류1','주소1','연락처1','설명1');
insert into guide values(gseq.nextval, '장소2','종류2','주소2','연락처2','설명2');
insert into guide values(gseq.nextval, '장소3','종류3','주소3','연락처3','설명3');
insert into guide values(gseq.nextval, '장소4','종류4','주소4','연락처4','설명4');
insert into guide values(gseq.nextval, '장소5','종류5','주소5','연락처5','설명5');
insert into guide values(gseq.nextval, '장소6','종류6','주소6','연락처6','설명6');

select * from notice;
select * from guide order by pcode desc;

insert into notice values(nseq.nextval,'글10','내용10',sysdate,0);


drop table guide;

create table guide (
pcode int primary key not null,
pname varchar(100) not null,
ptype varchar(10) not null,
paddr varchar(200) not null,
ptel varchar2(20),
pcoment varchar(2000));

create table guide2 (
pcode int primary key not null,
pname varchar(100) not null,
ptype varchar(10) not null,
paddr varchar(200) not null,
ptel varchar2(20),
pcoment varchar(2000));


delete from guide;
delete from traffic;
delete from notice;
delete from qna;
delete from data;
delete from member;


desc qna;
select * from (select * from qna where plevel=1 order by parno desc, plevel asc) where rownum<=5;

alter table qna modify plevel varchar(200);
select * from qna;
insert into qna values(qseq.nextval, 1, 1, '질문1', '내용1', default, 0, 'kea');
insert into qna values(qseq.nextval, 1, 2, '질문2', '내용2', default, 0, 'kea');
insert into qna values(qseq.nextval, 2, 1, '답변1', '답변1', default, 0, 'admin');
insert into qna values(qseq.nextval, 1, 3, '질문3', '내용3', default, 0, 'kea');
insert into qna values(qseq.nextval, 2, 2, '답변2', '답변2', default, 0, 'admin');

commit;

select * from qna;
select * from qna where plevel=1 order by parno desc, plevel asc;
select * from qna where plevel=1 and no=50;
select * from qna where plevel=2 and no=49;
select * from qna where plevel=1 and no=46;
select * from qna where plevel=2 and parno=47;