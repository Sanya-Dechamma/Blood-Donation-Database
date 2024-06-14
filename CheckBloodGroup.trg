CREATE OR REPLACE TRIGGER CheckBloodType
BEFORE
 INSERT OR UPDATE ON Blood_Donor 
FOR EACH ROW 
BEGIN 
     IF :new.bd_Bgroup IN('A+','A-','B+','B-','AB+','AB-','O+','O-')
       THEN
   dbms_output.put_line('The blood type entered is correct.'); 
   else
     raise_application_error(-20001, 'The blood type entered is incorrect. It should be either of  A+, A-, B+, B-, AB+, AB-, O+, O-'); 
     END IF; 
END;
/
