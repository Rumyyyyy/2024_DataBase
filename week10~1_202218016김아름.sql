set echo on
set tab off
set serveroutput on

REM �ܼ� case ǥ���� (single case expresion)
declare 
 v_bool boolean := true;
 v_str string(100);
begin
 -- �ܼ� case ǥ����
 v_str := case v_bool when true then 'v_bool is true'
    when false then 'v_bool is false'
    else 'v_bool is null'
    end;
 dbms_output.put_line(v_str);
end;
/
 