SET SERVEROUTPUT ON

DECLARE
NUM NUMBER(5):=&N;
FLAG NUMBER(5):=1;
I NUMBER(5);

BEGIN
I:=NUM-1;
WHILE(I>1) LOOP
IF(MOD(NUM,I)=0) THEN
FLAG:=0;
END IF;
I:=I-1;
END LOOP;

IF(FLAG=1) THEN
DBMS_OUTPUT.PUT_LINE(NUM||' IS PRIME ');
ELSE
DBMS_OUTPUT.PUT_LINE(NUM||' IS NOT PRIME ');
END IF;
END;
/