set echo on
set tab off
set serveroutput on

REM 이전에 생성한 테이블 t가 있으면 drop
drop table t;

pause

REM DDL에 의한 묵시적 commit
REM execute immediate 'create table'문은 트랜잭션을 묵시적으로 commit한다
begin
 delete from emp where empno = 9000;
 commit;
 insert into emp(empno, ename, hiredate, sal) values(9000, '홍길동', sysdate, 9000);
 update emp set sal = sal + 100 where empno = 9000;
 execute immediate 'create table t(C1 NUMBER)'; -- DDL이 수행되면 자동으로 commit이 수행된다.
 rollback; -- 6번 줄에서 트랜잭션이 이미 묵시적으로 commit이 되었으므로 무의미
 declare
 v_sal number;
 begin
  select sal into v_sal from emp where empno = 9000;
  dbms_output.put_line('sal = '||v_sal); -- 사번ㄴ 9000에 대한 DML이 commit됨
 end;
end;