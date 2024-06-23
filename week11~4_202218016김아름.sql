set echo on
set tab off
set serveroutput on

REM 시퀀스 emp_seq가 존재한다면 삭제
drop sequence emp_seq;

REM 시퀀스 emp_seq 생성
create sequence emp_seq;

pause

REM 시퀀스를 sql문 없이 직접 사용
declare
 v_seq_value number;
 begin
 -- sql 없이 시퀀스를 직접 사용하는 방법
 v_seq_value := emp_seq.nextval;
 
 dbms_output.put_line('시퀀스 값 : '||to_char(v_seq_value));
end;