set echo on
set tab off
set serveroutput on

declare
    v_simple_int simple_integer := 2147483647; -- simple_integer 타입의 가장 큰 값
begin 
    dbms_output.put_line('정수 최댓값 : '|| v_simple_int);
    v_simple_int := v_simple_int + 1 ; -- 오버플로우 되어 simple_integer 타입의 가장 작은 값이 됨
    dbms_output.put_line('오버플로우 : '||v_simple_int);
    v_simple_int := v_simple_int -1; -- 언더 플로우되어 simple_integer 타입의 가장 큰 값이 됨
    dbms_output.put_line('언더플로우 :'||v_simple_int);
end;
/