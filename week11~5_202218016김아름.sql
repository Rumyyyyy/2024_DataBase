set echo on
set tab off
set serveroutput on

REM returning절을 사용하여 dml문의 결과 값을 pl/sql문 변수로 반환
declare
 c_hiredate date := date'2016-01-02';
 v_empno emp.empno%type;
 v_ename emp.ename%type;
 v_hiredate emp.hiredate%type;
begin
 delete from emp where empno = 9000; -- 테스트 데이터 삭제
 -- insert 후 삽입된 값 반환
 insert into emp(empno, ename, hiredate, deptno)
  values(9000, '홍길동', c_hiredate, 40)
 returning empno, ename, hiredate
  into v_empno, v_ename, c_hiredate;
 dbms_output.put_line('사원 추가 = ('||v_empno||', '||v_ename||', '||to_char(v_hiredate, 'YYYY-MM-DD')||')');
 -- update 후 변경된 값을 반환
 update emp
 set hiredate = c_hiredate
 where empno = v_empno
 returning empno, ename, hiredate
  into v_empno, v_ename, v_hiredate;
  dbms_output.put_line('사원 변경=('||v_empno||', '||v_ename||', '||to_char(v_hiredate, 'YYYY-MM-DD')||')');
  -- delete 후 삭제된 사원의 사번, 이름, 입사일을 반환
  delete rom emp
  where empno = v_empno
   returning empno, ename, hiredate
    into v_empno, ename, hiredate;
    dbms_output.put_line('사원 삭제=('||v_empno||', '||v_ename||', '||to_char(v_hiredate, 'YYYY-MM-DD')||')');
    commit;
end;