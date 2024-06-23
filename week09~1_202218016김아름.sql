set echo on
set tab off
set serveroutput on

REM boolean 값을 출력하는 함수
create or replace procedure print_boolean(v_msg varchar2, v_bool boolean) is
begin
    if v_bool is null then
    dbms_output.put_line(v_msg ||':null');
    elsif v_bool = true then
    dbms_output.put_line(v_msg ||':true');
    else
    dbms_output.put_line(v_msg ||':false');
    end if;
end;
/