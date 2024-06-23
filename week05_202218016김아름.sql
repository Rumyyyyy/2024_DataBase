set echo on
set tab off
set serveroutput on

REM 문자형 데이터 타입 선언시 "(길이 char)" 형식 사용
REM 바이트 단위가 아닌 글자 수 단위의 길이로 선언되므로
REM 데이터베이스 문자 집합에 따라서 최대 길이가 달라진다.

declare
    v_charset varchar2(16); -- 최대 16바이트
    v_name1 varchar2(8 char); -- 최대 8글자
    v_name2 varchar2(8); -- 최대 8바이트
begin
    -- fixed view에서 데이터베이스 문자 집합을 조회하여 출력한다.
    select value into v_charset from v$nls_paramaters where parameter = 'NLS_CHARACTERSET';
    dbms_output.put_line('데이터베이스 문자 집합 : '|| v_charset);
    
    dbms_output.put_line(chr(9)); -- 탭 문자 (빈 줄 출력용)
    
    -- 문자 단위
    dbms_output.put_line('v_name1 varchar2(8 char)');
    dbms_output.put_line('======================');
    v_name1 := 'Miler'; -- 알파벳 문자열
    dbms_output.put_line(rpad(v_name1,9)||':'||lengthb(v_name1)||'바이트');
    v_name1 := '을지문덕'; -- 한글 문자열
    dbms_output.put_line(rpad(v_name1,9)||':'||lengthb(v_name1)||'바이트');
    
    dbms_output.put_line(chr(9)); -- 탭 문자 (빈 줄 출력용)
    
     -- 바이트 단위
     dbms_output.put_line('v_name2 varchar2(8)');
    dbms_output.put_line('======================');
    v_name2 := 'Miler'; -- 알파벳 문자열
    dbms_output.put_line(rpad(v_name2,9)||':'||lengthb(v_name2)||'바이트');
    v_name2 := '을지문덕'; -- 한글 문자열 -- 문제가 발생하는 줄
    dbms_output.put_line(rpad(v_name2,9)||':'||lengthb(v_name2)||'바이트');
end;
/