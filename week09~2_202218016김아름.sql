set echo on
set tab off
set serveroutput on

declare
    x varchar2(10);
begin
    x := null;
    if x = null then --�Ǽ��� x is null ��ſ� x = null �� ���
        dbms_output.put_line('��ġ 1. �׽�Ʈ : x =null');
    end if;
    if x <> null then --�Ǽ��� x is not null ���  x <> null �� ���
        dbms_output.put_line('��ġ 2. �׽�Ʈ : y <> null');
    end if;
    print_boolean('��ġ 3. x = null', x = null);
    print_boolean('��ġ 4. x <> null', x <> null);
    print_boolean('��ġ 5. x is null', x is null);
end;
/