set echo on
set tab off
set serveroutput on

REM 앞에서 삽입한 로우를 삭제
delete from emp where empno = 9000;

REM insert문에서 pl/sql 변수의 사용
declare
 v_empno emp.empno%type;
 v_ename emp.ename%type;
 v_deptno emp.deptno%type;
begin 
 v_empno := 9000;
 v_ename := '홍길동';
 v_deptno := 30;
 
 insert into emp(empno, ename, hiredate, deptno)
 values (v_empno, v_ename, sysdate, v_deptno); -- pl/sql 변수 사용
 dbms_output.put_line('insert 건수:'||sql%rowcount); -- 변경된 건수 출력
 commit;
end;
/