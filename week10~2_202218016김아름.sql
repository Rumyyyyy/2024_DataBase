set echo on
set tab off
set serveroutput on

REM ���� case ǥ�������� ����
declare
 v_bool boolean := true;
  v_str string(100);
begin
 -- ���� case ǥ����
 v_str := case when v_bool = true then 'v_bool is true'
    when v_bool = false then 'v_bool is false'
    else 'v_bool is null'
    end;
 dbms_output.put_line(v_str);
end;
/