DROP TABLE employee CASCADE CONSTRAINTS;
CREATE TABLE employee (
    fname           varchar2(15) not null, 
    lname           varchar2(15) not null,
    ssn             char(9) not null,
    bdate           date not null,
    address         varchar2(50) not null,
    sex             char,
    salary          number(10,2),
    superssn        char(9),
    primary key (ssn),
    foreign key (superssn) references employee(ssn)
);

DROP TABLE customer CASCADE CONSTRAINTS;
CREATE TABLE customer (
    fname           varchar2(15) not null, 
    lname           varchar2(15),
    email           varchar2(50) not null,
    orderno         number(5) not null,
    membership      char(1),
    bdate           date,
    address         varchar2(50),
    primary key (orderno)
);

DROP TABLE cust_order CASCADE CONSTRAINTS;
CREATE TABLE cust_order (
    orderno         number(5) not null,
    product         varchar(20) not null,
    flavor          varchar(50),
    contain         varchar(20),
    topping         varchar(20),
    total           decimal(5,2) not null,
    foreign key (orderno) references customer(orderno)
);

DROP TABLE prod_sold CASCADE CONSTRAINTS;
CREATE TABLE prod_sold (
    prod_name       varchar(50) not null,
    quantity        number(5) not null,
    price           decimal(5,2) not null,
    vend_name       varchar(20)
);