--customer is able to register by providing name, date of birth, and address
CREATE OR REPLACE PROCEDURE rentalregistration(name_in IN RENTALCUSTOMER.NAME%TYPE, DOB_in IN RENTALCUSTOMER.DOB%TYPE, address_in
IN RENTALCUSTOMER.ADDRESS%TYPE)
AS
BEGIN
    INSERT INTO rentalCustomer(name, DOB, address) VALUES(name_in, DOB_in, address_in);
    DBMS_OUTPUT.PUT_LINE('Welcome ' || name_in);
END;

