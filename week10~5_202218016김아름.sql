set echo on
set tab off
set serveroutput on

REM ������ ���� case ������ �ٲپ� ����ؾ� ��
declare
 v_num number := 1;
begin
 dbms_output.put_line(v_num||'��'||case mod(v_num,2) when 0 then '¦��'
    else 'Ȧ��' end || '�Դϴ�.');
end;
/