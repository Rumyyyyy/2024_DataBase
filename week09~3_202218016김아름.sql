set echo on
set tab off
set serveroutput on

declare
 x varchar2(10);
begin 
 x:='SMITH'; print_boolean(Q'['SMITH' like 'S%' ]', x like 'S%'); -- SMITH는 대문자 S로 시작 -> true
 x:='SMITH'; print_boolean(Q'['SMITH' like 'S____' ]', x like 'S____'); -- SMITH는 대문자 S로 시작하고 뒤에 4글자로 구성 -> true
 x:='SMITH'; print_boolean(Q'['SMITH' like 'SMITH' ]', x like 'SMITH'); -- 패턴에 와일드 카드가 없으면 일치하는지 비교 -> true
 x:='SMITH'; print_boolean(Q'['SMITH' like 's%' ]', x like 's%'); -- 소문자 s로 시작하지 않음 -> false
 x:='SMITH'; print_boolean(Q'['SMITH' not like 's%' ]', x not like 's%'); -- 소문자 s로 시작하지 않음-> true
 x:=null; print_boolean(Q'[NULL like 'A' ]', x like 'A'); -- null에 대한 like 연산은 null
 x:=null; print_boolean(Q'[NULL not like 'A' ]', x not like 'A'); -- null에 대한 not like 연산은 null
 x:='한글'; print_boolean(Q'['한글' like '__' ]', '한글' like '__'); -- _는 바이트가 아니라 문자 -> true
end;
/