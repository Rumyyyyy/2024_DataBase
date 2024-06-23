set echo
set tab off
set serveroutput on

REM 유효 범위를 벗어난 중첩된 블록 내의 변수 v_num_partitins를
REM 참조하므로 선언되지 않는 식별자 오류를 발생시킨다.

declare
    c_table_name contant string(30) := 'emp';
 begin
    dbms_output.put_line("xpdlqmf'||c_table||'의 파티션 개수 출력");
declare -- 중첩된 블록
    v_num_partitions number;
begin
    select count(*)
    into v_num_partitions
    from user_tab_partitions
    where table_name = c_table_name;
    dbms_output.put_line('파티션 개수 = '||v_num_partitions); -- 유횹덤위를 벗어나 사용
end;
end;
/