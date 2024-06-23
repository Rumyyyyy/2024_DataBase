set echo on
set tab off
set serveroutput on

declare
 x varchar2(10);
begin 
 x:='SMITH'; print_boolean(Q'['SMITH' like 'S%' ]', x like 'S%'); -- SMITH�� �빮�� S�� ���� -> true
 x:='SMITH'; print_boolean(Q'['SMITH' like 'S____' ]', x like 'S____'); -- SMITH�� �빮�� S�� �����ϰ� �ڿ� 4���ڷ� ���� -> true
 x:='SMITH'; print_boolean(Q'['SMITH' like 'SMITH' ]', x like 'SMITH'); -- ���Ͽ� ���ϵ� ī�尡 ������ ��ġ�ϴ��� �� -> true
 x:='SMITH'; print_boolean(Q'['SMITH' like 's%' ]', x like 's%'); -- �ҹ��� s�� �������� ���� -> false
 x:='SMITH'; print_boolean(Q'['SMITH' not like 's%' ]', x not like 's%'); -- �ҹ��� s�� �������� ����-> true
 x:=null; print_boolean(Q'[NULL like 'A' ]', x like 'A'); -- null�� ���� like ������ null
 x:=null; print_boolean(Q'[NULL not like 'A' ]', x not like 'A'); -- null�� ���� not like ������ null
 x:='�ѱ�'; print_boolean(Q'['�ѱ�' like '__' ]', '�ѱ�' like '__'); -- _�� ����Ʈ�� �ƴ϶� ���� -> true
end;
/