set echo on
set tab off
set serveroutput on

REM BOOLEAN ���� ����ϴ� �����Լ� 
create or replace function boolean_string(a_boolean BOOLEAN) return varchar2
is
begin 
    return case when a_boolean = true then 'true'
        when a_boolean = false then 'false'
        when a_boolean is null then 'null'
    end;
end;
/