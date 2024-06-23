set echo on
set tab off
set serveroutput on

REM savepoint의 사용
declare
 v_org_sal number := 9000;
begin
 delete from emp where empno = 9000; -- 이전 예제에서 생성된 데이터 삭제
 commit;
 insert into emp(empno, ename, hiredate,sal) 
        values (9000, '홍길동', sysdate, v_org_sal);
 savepoint p1; -- 첫번째 savepoint
 update emp set sal = sal + 100 where empno = 9000;
 savepoint p2; -- 두번째 savepoint
 begin
  insert into emp(empno, ename, hiredate,sal) 
         values (9000, '임꺽정', sysdate, v_org_sal);
  exception when others then
  -- 17번 줄의 insert문이 실패하면 14번 줄의 update와 16번 줄의 insert는 취소하고
  -- 11번 줄의 insert문은 변경에 반영하도록 한다 
  rollback to p1;
 end;
 commit;
 declare
  v_sal number;
 begin
  select sal into v_sal from emp where empno = 9000;
  dbms_output.put_line('sal = '||v_sal); -- 11번 줄에서 insert된 급여가 출력된다
 if v_org_sal <> v_sal then
   dbms_output.put_line('원 급여가 변경되었습니다.');
 else
   dbms_output.put_line('원 급여가 변경되지 않았습니다.');
 end if;
end;