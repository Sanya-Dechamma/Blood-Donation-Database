CREATE OR REPLACE TRIGGER CheckAge
BEFORE
 INSERT OR UPDATE ON Blood_Donor 
FOR EACH ROW 
BEGIN 
     IF :new.bd_age<18 THEN
     raise_application_error(-20001, 'The age of the donor should be greater than 18'); 
     END IF; 
END;
/
