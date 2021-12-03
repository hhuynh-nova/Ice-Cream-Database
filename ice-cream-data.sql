--Employee
--Emp_ID, F_Name, L_Name, SSN, BDate, Address, Phone, Sex, Salary, Super_Name

INSERT INTO employee VALUES 
    ('123', 'Hoa', 'Huynh', '123456789', '27-Aug-2000', '800 East Lancaster Avenue, Villanova, PA', '6102345678', 'F', '45000', null);
INSERT INTO employee VALUES
    ('234', 'Marion', 'Murzello', '987654321', '10-Aug-2000', '829 Lancaster Avenue, Bryn Mawr, PA', '8562345678', 'F', '40000', 'Hoa');
INSERT INTO employee VALUES
    ('345', 'Lauren', 'Dietzler', '786941234', '16-Aug-1999', '1107 East Lancaster Avenue, Bryn Mawr, PA', '2156666666', 'F', '35000', 'Marion');
INSERT INTO employee VALUES
    ('456', 'Taylor', 'Swift', '666739305', '13-Dec-1989', '863 West Lancaster Avenue, Bryn Mawr, PA', '2674546767', 'F', '25000', 'Lauren');
INSERT INTO employee VALUES
    ('561', 'Tom', 'Holland', '128849432', '01-Jun-1996', '1125 Lancaster Avenue, Bryn Mawr, PA', '4848389622', 'M', '25000', 'Hoa');
INSERT INTO employee VALUES
    ('612', 'Chris', 'Pine', '883922890', '26-Aug-1980', '130 South Bryn Mawr Avenue, Bryn Mawr, PA', '9129876543', 'M', '25000', 'Marion');

--

-- Customer
-- Cust_ID, F_Name, Email, Membership

INSERT INTO customer VALUES
    ('21212', 'Mitch', 'mitch@gmail.com', 'yes');
INSERT INTO customer VALUES
	('98574', 'Kelly', 'kelly@yahoo.com', 'no');
INSERT INTO customer VALUES
	('23232', 'Peter', 'peter@gmail.com', 'yes');
INSERT INTO customer VALUES
	('34343', 'Edward', 'edward.char@villanova.edu', 'yes');
INSERT INTO customer VALUES
	('90037', 'Amanda', 'amanda@aol.com', 'no');
INSERT INTO customer VALUES
	('45454', 'Sheila', 'sheila@comcast.net', 'no');

--

-- Cust_Order
-- OrderNo, Cust_ID, Emp_ID, Product, Price

INSERT INTO cust_order VALUES
    ('12345', '21212', '456', 'medium, chocolate, waffle cone, rainbow sprinkles', '5.50');
INSERT INTO cust_order VALUES
    ('32154', '98574', '612', 'kiddie, vanilla, cup, no topping', '3.95');
INSERT INTO cust_order VALUES
    ('45678', '23232', '612', 'small, mint chocolate chip, sugar cone, whipped cream', '4.25');
INSERT INTO cust_order VALUES 
    ('65638', '34343', '345', 'medium, cookies and cream, cup, hot fudge', '5.50');
INSERT INTO cust_order VALUES
    ('78294', '90037', '561', 'large, strawberry, cake cone, hot fudge', '6.75');
INSERT INTO cust_order VALUES
    ('98482', '45454', '456', 'large, butter pecan, waffle cone, caramel', '6.75');
