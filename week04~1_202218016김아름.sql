set echo
set tab off
set serveroutput on

REM ��ȿ ������ ��� ��ø�� ��� ���� ���� v_num_partitins��
REM �����ϹǷ� ������� �ʴ� �ĺ��� ������ �߻���Ų��.

declare
    c_table_name contant string(30) := 'emp';
 begin
    dbms_output.put_line("xpdlqmf'||c_table||'�� ��Ƽ�� ���� ���");
declare -- ��ø�� ���
    v_num_partitions number;
begin
    select count(*)
    into v_num_partitions
    from user_tab_partitions
    where table_name = c_table_name;
    dbms_output.put_line('��Ƽ�� ���� = '||v_num_partitions); -- ���´����� ��� ���
end;
end;
/