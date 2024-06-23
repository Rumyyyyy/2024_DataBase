set echo on
set tab off
set serveroutput on

REM delete문에서 pl/sql 입력 변수의 사용
declare
 v_empno emp.empno%type := 9000;
begin
 delete from emp
 where empno = v_empno;
 dbms_output.put_line('delete건수 : '||sql%rowcount); -- 변경된 건수 출력
 commit;
end;