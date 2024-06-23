set echo on
set tab off
set serveroutput on

REM NULL 여부 확인에는 is null 연산자를 사용해야 한다.
declare 
    x varchar2(10);
    y number;
begin 
    x:=null ; print_boolean('null is null ',x is null);
    x:= null; print_boolean ('null is not null ', x is not null);
    x:= ''; print_boolean(''''' is null ', x is null); -- 길이가 0인 문자열 "=>null
    x:=''; print_boolean('" "is null=null ', x=null);
    x:=null; print_boolean('null=null ;', x=null); -- is를 사용하지 않고 일반 관계 연산 => null
    x:=null; print_boolean('null<>null ', x<>null); -- is를 사용하지 않고 일반 관계 연산 => null
    y:=0; print_boolean('0is null ', y is null); -- 0과 null의 연산 => false
end;
/
    