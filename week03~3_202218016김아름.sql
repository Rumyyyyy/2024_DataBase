SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

-- REM �ǽ�04_09_�͸�(Anonymous) PL/SQL
DECLARE
    v_num NUMBER;
BEGIN
    v_num := squar(10);
    DBMS_OUTPUT_LINE(v_num);
END;
/