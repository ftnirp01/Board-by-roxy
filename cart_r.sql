create table cart_r (
    cartNum NUMBER(20) not null,
    cartPic VARCHAR2(50) , 
    cartName VARCHAR2(50) ,
    cartQun NUMBER(20) NOT NULL,
    point NUMBER(20) NOT NULL,
    delPrice VARCHAR2(50),
    cartPrice VARCHAR2(50),
    href VARCHAR2(50)
);