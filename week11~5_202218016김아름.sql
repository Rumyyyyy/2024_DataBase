set echo on
set tab off
set serveroutput on

REM returning���� ����Ͽ� dml���� ��� ���� pl/sql�� ������ ��ȯ
declare
 c_hiredate date := date'2016-01-02';
 v_empno emp.empno%type;
 v_ename emp.ename%type;
 v_hiredate emp.hiredate%type;
begin
 delete from emp where empno = 9000; -- �׽�Ʈ ������ ����
 -- insert �� ���Ե� �� ��ȯ
 insert into emp(empno, ename, hiredate, deptno)
  values(9000, 'ȫ�浿', c_hiredate, 40)
 returning empno, ename, hiredate
  into v_empno, v_ename, c_hiredate;
 dbms_output.put_line('��� �߰� = ('||v_empno||', '||v_ename||', '||to_char(v_hiredate, 'YYYY-MM-DD')||')');
 -- update �� ����� ���� ��ȯ
 update emp
 set hiredate = c_hiredate
 where empno = v_empno
 returning empno, ename, hiredate
  into v_empno, v_ename, v_hiredate;
  dbms_output.put_line('��� ����=('||v_empno||', '||v_ename||', '||to_char(v_hiredate, 'YYYY-MM-DD')||')');
  -- delete �� ������ ����� ���, �̸�, �Ի����� ��ȯ
  delete rom emp
  where empno = v_empno
   returning empno, ename, hiredate
    into v_empno, ename, hiredate;
    dbms_output.put_line('��� ����=('||v_empno||', '||v_ename||', '||to_char(v_hiredate, 'YYYY-MM-DD')||')');
    commit;
end;