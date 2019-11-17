CREATE TABLE bookingCustomer(
    custID  NUMBER(10) PRIMARY KEY,
    name    VARCHAR2(60),
    DOB     DATE,
    Address VARCHAR2(200),
    agentID NUMBER(10) REFERENCES agent(agentID)
);

CREATE TABLE manufacturer(
    makeID      NUMBER(10) PRIMARY KEY,
    location    NUMBER(10)
);



CREATE TABLE car(
    carID       NUMBER(10) PRIMARY KEY ,
    makeID      NUMBER(10) REFERENCES manufacturer(makeID),
    model       VARCHAR2(20),
    location    VARCHAR2(50)
);

CREATE TABLE agent(
    agentID     NUMBER(10) PRIMARY KEY,
    name        VARCHAR2(60),
    address     VARCHAR2(200),
    DOB         DATE
    
);


CREATE TABLE booking(
    bookingID   NUMBER(10) PRIMARY KEY,
    custID      NUMBER(10) REFERENCES bookingCustomer(custID),
    carID       NUMBER(10) REFERENCES car(carID),
    agentID     NUMBER(10) REFERENCES agent(agentID),
    dateRented  DATE,
    dateDue     DATE    
);
