set echo on
set tab off
set serveroutput on

REM 2�� �̻��� ������ �����Ǵ� ��쿡��
REM ���������� ���� ��Ÿ���� when�� ����ȴ�.

declare 
 v_bool boolean := true;
 v_true boolean := true;
 v_false boolean := false;
 v_str string(100);
begin 
v_str := case v_bool when true then 'v_bool = true' -- true
    when v_true then 'v_bool = v_true' -- true
    when false then 'v_bool = false' -- false
    when v_false then 'v_bool = v_false' -- false
    else 'v_bool is null;'
end;
dbms_output.put_line(v_str);
end;
/
    