set echo on
set tab off
set serveroutput on

declare
    v_simple_int simple_integer := 2147483647; -- simple_integer Ÿ���� ���� ū ��
begin 
    dbms_output.put_line('���� �ִ� : '|| v_simple_int);
    v_simple_int := v_simple_int + 1 ; -- �����÷ο� �Ǿ� simple_integer Ÿ���� ���� ���� ���� ��
    dbms_output.put_line('�����÷ο� : '||v_simple_int);
    v_simple_int := v_simple_int -1; -- ��� �÷ο�Ǿ� simple_integer Ÿ���� ���� ū ���� ��
    dbms_output.put_line('����÷ο� :'||v_simple_int);
end;
/