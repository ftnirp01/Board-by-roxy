Create table board_r (
    userId NUMBER(10) not null,
    userName VARCHAR2(20) DEFAULT '익명',
    b_title VARCHAR2(100) ,
    b_body VARCHAR2(1000) ,
    regDate date

);

insert into board_r VALUES (1, '홍길동','제목1','내용1',sysdate);
insert into board_r VALUES (2, '김나래','제목1','내용1',sysdate);
insert into board_r VALUES (3, '최웅','제목1','내용1',sysdate);
insert into board_r VALUES (4, '국연수','제목1','내용1',sysdate);
insert into board_r VALUES (5,DEFAULT,'제목1','내용1',sysdate);

select * from board_r;

commit;