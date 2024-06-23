set echo on
set tab off
set serveroutput on

REM 다음과 같이 case 문으로 바꾸어 사용해야 함
declare
 v_num number := 1;
begin
 dbms_output.put_line(v_num||'은'||case mod(v_num,2) when 0 then '짝수'
    else '홀수' end || '입니다.');
end;
/