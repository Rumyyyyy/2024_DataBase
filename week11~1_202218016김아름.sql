set echo on
set tab off
set serveroutput on

REM %rowtype 사용
declare
 v_emprec emp%rowtype; -- 레코드 변수 선언
begin
 v_emprec.empno := 9000;
 
 -- 원래의 값 조회
 select *
 into v_emprec
 from emp
 where empno = v_emprec.empno;
 
 -- 이름과 부서 번호 필드 값을 변경한다.
 v_emprec.ename := '홍길동';
 v_emprec.deptno := 40;
 
 -- 변경된 값을 테이블에 반영한다.
 update emp
  set row = v_emprec -- 레코드 변수를 사용한 update
  where empno = v_emprec.empno;
 commit;
end;
/
 