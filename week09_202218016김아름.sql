set echo on
set tab off
set serveroutput on

REM NULL ���� Ȯ�ο��� is null �����ڸ� ����ؾ� �Ѵ�.
declare 
    x varchar2(10);
    y number;
begin 
    x:=null ; print_boolean('null is null ',x is null);
    x:= null; print_boolean ('null is not null ', x is not null);
    x:= ''; print_boolean(''''' is null ', x is null); -- ���̰� 0�� ���ڿ� "=>null
    x:=''; print_boolean('" "is null=null ', x=null);
    x:=null; print_boolean('null=null ;', x=null); -- is�� ������� �ʰ� �Ϲ� ���� ���� => null
    x:=null; print_boolean('null<>null ', x<>null); -- is�� ������� �ʰ� �Ϲ� ���� ���� => null
    y:=0; print_boolean('0is null ', y is null); -- 0�� null�� ���� => false
end;
/
    