set echo on
set tab off
set serveroutput on

declare
    x varchar2(10);
begin
    x := null;
    if x = null then --실수로 x is null 대신에 x = null 을 사용
        dbms_output.put_line('위치 1. 테스트 : x =null');
    end if;
    if x <> null then --실수로 x is not null 대신  x <> null 을 사용
        dbms_output.put_line('위치 2. 테스트 : y <> null');
    end if;
    print_boolean('위치 3. x = null', x = null);
    print_boolean('위치 4. x <> null', x <> null);
    print_boolean('위치 5. x is null', x is null);
end;
/