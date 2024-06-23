set echo on
set tab off
set serveroutput on

REM 내장 SQL 함수 decode는 pl/sql에서 지원되지 않음
declare
 v_num number := 1;
begin
 dbms_output.put_line(v_num||'은'||decode(mod(v_num,2),0,'짝수','홀수')||'입니다.');
end;
/