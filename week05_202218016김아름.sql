set echo on
set tab off
set serveroutput on

REM ������ ������ Ÿ�� ����� "(���� char)" ���� ���
REM ����Ʈ ������ �ƴ� ���� �� ������ ���̷� ����ǹǷ�
REM �����ͺ��̽� ���� ���տ� ���� �ִ� ���̰� �޶�����.

declare
    v_charset varchar2(16); -- �ִ� 16����Ʈ
    v_name1 varchar2(8 char); -- �ִ� 8����
    v_name2 varchar2(8); -- �ִ� 8����Ʈ
begin
    -- fixed view���� �����ͺ��̽� ���� ������ ��ȸ�Ͽ� ����Ѵ�.
    select value into v_charset from v$nls_paramaters where parameter = 'NLS_CHARACTERSET';
    dbms_output.put_line('�����ͺ��̽� ���� ���� : '|| v_charset);
    
    dbms_output.put_line(chr(9)); -- �� ���� (�� �� ��¿�)
    
    -- ���� ����
    dbms_output.put_line('v_name1 varchar2(8 char)');
    dbms_output.put_line('======================');
    v_name1 := 'Miler'; -- ���ĺ� ���ڿ�
    dbms_output.put_line(rpad(v_name1,9)||':'||lengthb(v_name1)||'����Ʈ');
    v_name1 := '��������'; -- �ѱ� ���ڿ�
    dbms_output.put_line(rpad(v_name1,9)||':'||lengthb(v_name1)||'����Ʈ');
    
    dbms_output.put_line(chr(9)); -- �� ���� (�� �� ��¿�)
    
     -- ����Ʈ ����
     dbms_output.put_line('v_name2 varchar2(8)');
    dbms_output.put_line('======================');
    v_name2 := 'Miler'; -- ���ĺ� ���ڿ�
    dbms_output.put_line(rpad(v_name2,9)||':'||lengthb(v_name2)||'����Ʈ');
    v_name2 := '��������'; -- �ѱ� ���ڿ� -- ������ �߻��ϴ� ��
    dbms_output.put_line(rpad(v_name2,9)||':'||lengthb(v_name2)||'����Ʈ');
end;
/