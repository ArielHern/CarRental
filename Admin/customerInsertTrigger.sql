--Sequences for rentalCustomer table 
--this sequence will be use to insert  a new ID when the customer is created
CREATE SEQUENCE seq_Rentalcustomer
    START WITH 10002
    INCREMENT BY 1
    CACHE 10;

--Generate Primakey Keys customer
CREATE OR REPLACE TRIGGER rentalCustomer_trigger
    BEFORE INSERT ON rentalCustomer
    FOR EACH ROW
BEGIN
    :NEW.custID := seq_Rentalcustomer.NEXTVAL;    
END;

