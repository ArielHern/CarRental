--car rental
CREATE TABLE rentalCustomer(
    custID  NUMBER(10) PRIMARY KEY,
    name    VARCHAR2(60),
    DOB     DATE,
    Address VARCHAR2(200)
);

CREATE TABLE rentalCar(
    carID           NUMBER(10) PRIMARY KEY ,
    manufacturer    VARCHAR2(20),
    year            DATE,
    model           VARCHAR2(20),
    location        VARCHAR2(50),
    available       CHAR(1) DEFAULT 'Y' CHECK(available IN('Y','N'))  
);

CREATE TABLE rentalAgent(
    agentID     NUMBER(10) PRIMARY KEY,
    name        VARCHAR2(60),
    address     VARCHAR2(200),
    DOB         DATE
    
);


CREATE TABLE rentalBooking(
    bookingID   NUMBER(10) PRIMARY KEY,
    custID      NUMBER(10) REFERENCES rentalCustomer(custID),
    carID       NUMBER(10) REFERENCES rentalCar(carID),
    agentID     NUMBER(10) REFERENCES rentalAgent(agentID),
    dateRented  DATE,
    dateDue     DATE    
);
