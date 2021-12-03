DROP TABLE employee CASCADE CONSTRAINTS;
CREATE TABLE employee (
    emp_ID          number(3) not null,
    f_name          varchar2(15) not null, 
    l_name          varchar2(15) not null,
    ssn             char(9),
    bdate           date not null,
    address         varchar2(50) not null,
    phone           number(10),
    sex             char,
    salary          number(10,2),
    super_name      varchar(15),
    primary key (emp_ID)
);

DROP TABLE customer CASCADE CONSTRAINTS;
CREATE TABLE customer (
    cust_ID         number(5) not null,
    f_name          varchar2(15) not null, 
    email           varchar2(50) not null,
    membership      varchar(100),
    primary key (cust_ID)
);

DROP TABLE cust_order CASCADE CONSTRAINTS;
CREATE TABLE cust_order (
    orderno         number(5) not null,
    cust_ID         number(5) not null,
    emp_ID          number(3) not null,
    product         varchar(100),
    price           decimal(5,2) not null,
    foreign key (cust_ID) references customer(cust_ID),
    foreign key (emp_ID) references employee(emp_ID)
);

--DROP TABLE product CASCADE CONSTRAINTS;
--CREATE TABLE product (
--    prod_num         number(5) not null,
--    prod_name       varchar(50) not null,
--    quantity        number(5),
--    price           decimal(5,2) not null,
--    vend_name       varchar(20),
--    primary key (prod_num)
--);