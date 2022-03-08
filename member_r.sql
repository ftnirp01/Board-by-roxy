create table member_r (
    userNum number(20) not null PRIMARY key,
    fId VARCHAR2(255) not null , 
    fPw VARCHAR2(255) not null,
    fPwCheck VARCHAR2(255) not null,
    fName VARCHAR2(255) not null,
    email VARCHAR2(255) not null,
    phoneNum VARCHAR2(255) not null;
);

select * from member_r;

--시퀀스 등록
create sequence MEMBER_SEQ
increment by 1
start with 1
minvalue 1
maxvalue 9999
nocycle
nocache
noorder;
