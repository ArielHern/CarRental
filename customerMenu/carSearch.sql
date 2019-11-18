--Customer procedures
--Display all car from a given location
CREATE OR REPLACE PROCEDURE carSearch(location_in IN RENTALCAR.LOCATION%TYPE)
AS  
    v_year          RENTALCAR.YEAR%TYPE;
    v_manufacturer  RENTALCAR.MANUFACTURER%TYPE;
    v_model         RENTALCAR.MODEL%TYPE;
    
    --Cursor to find all car from given location
    CURSOR search_Cur IS 
    SELECT year,manufacturer, model FROM rentalCar
    WHERE location = location_in AND available = 'Y';
    
BEGIN
    OPEN search_Cur;
    DBMS_OUTPUT.PUT_LINE('Year  Manufacturer   Model ');
    LOOP
        FETCH search_Cur INTO v_year,v_manufacturer, v_model;
        EXIT WHEN search_Cur%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(v_year ||'  ' ||v_manufacturer||'      '|| v_model);
    END LOOP;
    CLOSE search_Cur;
END;