set echo on
set tab off
set serveroutput on

REM 2개 이상의 조건이 만족되는 경우에는
REM 순서적으로 먼저 나타나는 when이 적용된다.

declare 
 v_bool boolean := true;
 v_true boolean := true;
 v_false boolean := false;
 v_str string(100);
begin 
v_str := case v_bool when true then 'v_bool = true' -- true
    when v_true then 'v_bool = v_true' -- true
    when false then 'v_bool = false' -- false
    when v_false then 'v_bool = v_false' -- false
    else 'v_bool is null;'
end;
dbms_output.put_line(v_str);
end;
/
    