set echo on
set tab off
set serveroutput on

declare
 v_bool boolean;
begin
 v_bool:= false;
 
 -- if문의 분기 조건 판단에 사용
if v_bool = true then
 dbms_output.put_line('v_bool이 참입니다.');
else
 dbms_output.put_line('v_bool이 거짓입니다.');
end if;

v_bool := false;
-- while문의 순환 조건 판단에 사용
while v_bool = false
loop
 v_bool := true;
 dbms_output.put_line('첫번째 while문이 실행되었습니다.');
end loop;
 
v_bool := false;
-- boolean 표현식에 not 사용
while not v_bool = false
loop
 v_bool := false;
 dbms_output.put_line('두번째 while문이 실행되었습니다.');
end loop;
end;
/