set echo on
set tab off
set serveroutput on

REM merge문에서 pl/sql 입력 변수의 사용
declare
 v_empno emp.empno%type := 9000;
begin
 merge into emp a
 using dual
  on(a.empno = v_empno)
 when matched then -- 사번이 9000인 로우 존재 시 커미션을 10% 증가
 update 
  set a.comm = a.comm*1.1
 when not matched then -- 사번이 9000인 로우 미존재 시 로우 추가
  insert(empno, ename, job, hiredate, sal, deptno)
  values(v_empno, '홍길동', 'CLERK', sysdate, 3000, 10);
  dbms_output.put_line('merge 건수 : '||sql%rowcount); -- 변경된 건수 출력
 commit;
end;
/