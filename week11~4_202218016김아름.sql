set echo on
set tab off
set serveroutput on

REM ������ emp_seq�� �����Ѵٸ� ����
drop sequence emp_seq;

REM ������ emp_seq ����
create sequence emp_seq;

pause

REM �������� sql�� ���� ���� ���
declare
 v_seq_value number;
 begin
 -- sql ���� �������� ���� ����ϴ� ���
 v_seq_value := emp_seq.nextval;
 
 dbms_output.put_line('������ �� : '||to_char(v_seq_value));
end;