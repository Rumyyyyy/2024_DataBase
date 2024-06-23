set echo on
set tab off
set serveroutput on

REM 1°³ ÄÃ·³ select
declare 
 v_cnt number;
begin
 select count(*)
 into v_cnt
 from emp;
 dbms_output.put_line('count(*) = '||v_cnt);
end;
/