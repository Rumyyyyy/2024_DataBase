SET ECHO
SET TAB OFF
SET SERVEROUTPUT ON

REM 큰 따옴표를 사용한 다양한 유형의 사용자 정의 식별자
REM 큰 따옴표를 사용하면 일반 사용자 정의 식별자의 제약 사항 중
REM 30자 길이 제한을 제외한 모든 제약사항을 넘어설 수 있다.
REM 공백 문자나 특수문자를 포함한 식별자도 사용할 수 있으며
REM 예약이나 키워드까지도 모두 사용자 정의 식별자로 사용할 수 있다.

DECLARE
v_num number; -- 일반 사용자 정의 식별자(대문자 V_NUM으로 식별됨)
"v_num" number; -- 소문자 사용자 정의 식별자
"공백 포함 변수명" number; -- 공백문자를 포함한 사용자 정의 식별자
"v_~!@#$%^&*()+-=" number; -- 특수문자를 포함한 사용자 정의 식별자
"begin" number; -- 예약어를 사용한 사용자 정의 식별자

function "square number"(a_num number) -- 함수명 식별자에 소문자와 공백 문자 포함
return number is
begin
    return a_num*a_num;
end:

begin
"v_num" := 10;
v_num := 20;
"공백 포함 변수명" := 30;
"v_~!@#$%^&*()+-=" := 40;
"begin" := 50;

dbms_output.putline("v_num"); -- 소문자 식별자 = 10
dbms_output.putline(V_NUM); -- 대문자 식별자 = 20
dbms_output.putline(v_num); -- 소문자 식별자 (위와 동일한 변수) = 10
dbms_output.putline("V_NUM"); -- 대문자 식별자 (위와 동일한 변수) = 20
dbms_output.putline("공백 포함 변수명"); -- =30
dbms_output.putline("v_~!@#$%^&*()+-="); -- =40
dbms_output.putline("begin"); -- =50
dbms_output.putline("squar number(10)"); -- =100
end;
/