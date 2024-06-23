set echo on
set tab off
set serveroutput on

REM rollback의 사용
begin
 delete from emp where empno = 9000; -- 이전 예제에서 생성된 데이터 삭제
 commit; -- emp테이블의 데이터는 14건이 됨
 -- 다음 insert문에 의해 emp 테이블의 데이터는 15건이 됨
 insert into emp(empno, ename, hiredate, sal) values (9000, ' 홍길동', sysdate, 9000);
 update emp set sal = sal + 100 where empno = 9000;
 rollback; -- 4번 줄과 5번 줄의 변경을 취소 emp 테이블의 데이터는 다시 14건이 됨
 declare
  v_cnt number;
 begin
  select count(*) into v_cnt from emp where empno = 9000;
  dbms_output.put_line('사번 9000 건수 = '||v_cnt);
 end;
 end;