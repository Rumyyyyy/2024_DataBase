set echo on
set tab off
set serveroutput on

REM ���� SQL �Լ� decode�� pl/sql���� �������� ����
declare
 v_num number := 1;
begin
 dbms_output.put_line(v_num||'��'||decode(mod(v_num,2),0,'¦��','Ȧ��')||'�Դϴ�.');
end;
/