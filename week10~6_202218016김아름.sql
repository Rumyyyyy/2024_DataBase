set echo on
set tab off
set serveroutput on

REM decode�� ����Ϸ��� ������ ���� sql���� ����ؾ� ��.
declare
 v_num number := 1;
 v_type string(10);
begin 
 select decode(mod(v_num,2),0,'¦��','Ȧ��')
 into v_type
 from dual;
 dbms_output.put_line(v_num||'��'||v_type||'�Դϴ�.');
end;
/