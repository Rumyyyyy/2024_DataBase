set echo on
set tab off
set serveroutput on

REM decode를 사용하려면 다음과 같이 sql문을 사용해야 함.
declare
 v_num number := 1;
 v_type string(10);
begin 
 select decode(mod(v_num,2),0,'짝수','홀수')
 into v_type
 from dual;
 dbms_output.put_line(v_num||'은'||v_type||'입니다.');
end;
/