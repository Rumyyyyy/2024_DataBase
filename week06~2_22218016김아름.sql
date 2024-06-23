set echo on
set tab off
set serveroutput on

REM tvl 함수
REM 첫번째 매개변수 값이 true이면 두번째 매개변수 값을 
REM                               false이면 세번째 매개변수 값을
REM                               null이면 네번째 배개변수 값을 반환
create or replace function tvl
                        (a_boolean boolean,
                         a_trueval varchar2,
                         a_falseval varchar2,
                         a_nullvar varchar2 := null)
                         return varchar2
is
begin
    return case when a_boolean = true then a_trueval
            when a_boolean = false then a_falseval
            when a_boolean is null then a_nullval
    end;
end;
/