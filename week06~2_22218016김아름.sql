set echo on
set tab off
set serveroutput on

REM tvl �Լ�
REM ù��° �Ű����� ���� true�̸� �ι�° �Ű����� ���� 
REM                               false�̸� ����° �Ű����� ����
REM                               null�̸� �׹�° �谳���� ���� ��ȯ
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