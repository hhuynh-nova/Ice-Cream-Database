DROP TABLE employee CASCADE CONSTRAINTS;
CREATE TABLE employee (
    f_name           varchar2(15) not null, 
    l_name           varchar2(15) not null,
    ssn             char(9),
    bdate           date not null,
    address         varchar2(50) not null,
    phone           number(10),
    sex             char,
    salary          number(10,2),
    super_name        char(9),
    emp_ID          number(3) not null,
    primary key (emp_ID)
);

DROP TABLE customer CASCADE CONSTRAINTS;
CREATE TABLE customer (
    f_name           varchar2(15) not null, 
    l_name           varchar2(15),
    cust_ID         number(5) not null,
    email           varchar2(50) not null,
    membership      char(1),
    phone           number(10),
    bdate           date,
    address         varchar2(50),
    primary key (cust_ID)
);

DROP TABLE cust_order CASCADE CONSTRAINTS;
CREATE TABLE cust_order (
    orderno         number(5) not null,
    cust_ID         number(5) not null,
    emp_ID          number(3) not null,
    prod_num         number(5) not null,
    flavor          varchar(50),
    contain         varchar(20),
    topping         varchar(20),
    total           decimal(5,2) not null,
    foreign key (cust_ID) references customer(cust_ID),
    foreign key (emp_ID) references employee(emp_ID),
    foreign key (prod_num) references product(prod_num)
);

DROP TABLE product CASCADE CONSTRAINTS;
CREATE TABLE product (
    prod_num         number(5) not null,
    prod_name       varchar(50) not null,
    quantity        number(5),
    price           decimal(5,2) not null,
    vend_name       varchar(20),
    primary key (prod_num)
);
