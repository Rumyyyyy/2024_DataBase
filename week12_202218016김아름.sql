set echo on
set tab off
set serveroutput on

REM commit의 사용
begin
 delete from emp where empno = 9000; -- 이전 예제에서 생성된 데이터 삭제
 commit;
 insert into emp(empno, ename, hiredate, sal) values(9000, '홍길동', sysdate, 9000);
 update emp set sal = sal + 100 where empno = 9000;
 commit;
end;