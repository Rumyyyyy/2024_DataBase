set echo on
set tab off
set serveroutput on

declare
 v_bool boolean;
begin
 v_bool:= false;
 
 -- if���� �б� ���� �Ǵܿ� ���
if v_bool = true then
 dbms_output.put_line('v_bool�� ���Դϴ�.');
else
 dbms_output.put_line('v_bool�� �����Դϴ�.');
end if;

v_bool := false;
-- while���� ��ȯ ���� �Ǵܿ� ���
while v_bool = false
loop
 v_bool := true;
 dbms_output.put_line('ù��° while���� ����Ǿ����ϴ�.');
end loop;
 
v_bool := false;
-- boolean ǥ���Ŀ� not ���
while not v_bool = false
loop
 v_bool := false;
 dbms_output.put_line('�ι�° while���� ����Ǿ����ϴ�.');
end loop;
end;
/