set echo on
set tab off
set serveroutput on

REM �����Լ� tvl�� ����Ͽ� boolean �� ���
begin
    dbms_output.put_line('1=1 :'||tvl(1=1, 'true','false'));
    dbms_output.put_line('1=2 :'||tvl(1=2, 'true','false'));
    dbms_output.put_line('null :'||tvl(null, 'true','false','null'));
end;
/