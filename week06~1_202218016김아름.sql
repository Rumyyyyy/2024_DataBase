set echo on
set tab off
set serveroutput on

REM �����Լ� boolean_string�� �̿��Ͽ� BOOLEAN �� ���

begin
    dbms_output.put_line('true : '||boolean_string(true));
    dbms_output.put_line('false : '||boolean_string(false));
    dbms_output.put_line('null : '||boolean_string(null));
    dbms_output.put_line('1=1 : '||boolean_string(1=1));
    dbms_output.put_line('1=2 : '||boolean_string(1=2));
end;
/