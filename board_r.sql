Create table board_r (
    userId NUMBER(10) not null,
    userName VARCHAR2(20) DEFAULT '�͸�',
    b_title VARCHAR2(100) ,
    b_body VARCHAR2(1000) ,
    regDate date

);

insert into board_r VALUES (1, 'ȫ�浿','����1','����1',sysdate);
insert into board_r VALUES (2, '�質��','����1','����1',sysdate);
insert into board_r VALUES (3, '�ֿ�','����1','����1',sysdate);
insert into board_r VALUES (4, '������','����1','����1',sysdate);
insert into board_r VALUES (5,DEFAULT,'����1','����1',sysdate);

select * from board_r;

commit;