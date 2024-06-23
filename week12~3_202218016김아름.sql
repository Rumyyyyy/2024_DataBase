set echo on
set tab off
set serveroutput on

REM savepoint�� ���
declare
 v_org_sal number := 9000;
begin
 delete from emp where empno = 9000; -- ���� �������� ������ ������ ����
 commit;
 insert into emp(empno, ename, hiredate,sal) 
        values (9000, 'ȫ�浿', sysdate, v_org_sal);
 savepoint p1; -- ù��° savepoint
 update emp set sal = sal + 100 where empno = 9000;
 savepoint p2; -- �ι�° savepoint
 begin
  insert into emp(empno, ename, hiredate,sal) 
         values (9000, '�Ӳ���', sysdate, v_org_sal);
  exception when others then
  -- 17�� ���� insert���� �����ϸ� 14�� ���� update�� 16�� ���� insert�� ����ϰ�
  -- 11�� ���� insert���� ���濡 �ݿ��ϵ��� �Ѵ� 
  rollback to p1;
 end;
 commit;
 declare
  v_sal number;
 begin
  select sal into v_sal from emp where empno = 9000;
  dbms_output.put_line('sal = '||v_sal); -- 11�� �ٿ��� insert�� �޿��� ��µȴ�
 if v_org_sal <> v_sal then
   dbms_output.put_line('�� �޿��� ����Ǿ����ϴ�.');
 else
   dbms_output.put_line('�� �޿��� ������� �ʾҽ��ϴ�.');
 end if;
end;