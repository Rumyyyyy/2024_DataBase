set echo on
set tab off
set serveroutput on

REM %rowtype을 사용하면 프로그램이 간단해 진다.
declare
 v_emprec emp%rowtype; -- 레코드 변수 선언
begin
 v_emprec.empno := 7782;
select * 
 into v_emprec
 from emp
 where empno = v_emprec.empno;
 dbms_output.put_line('이름 :'||v_emprec.ename);
 dbms_output.put_line('부서번호 :'||v_emprec.deptno);
end;
/