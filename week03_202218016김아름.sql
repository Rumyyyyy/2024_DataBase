SET ECHO ON -- 에코모드: 스크립트를 @를 사용하여 실행할 경우 이 문장을 설정해야 스크립트 화면이 나타남.
SET TAB OFF -- 탭 설정: 이 설정을 ON으로 하게 되면(기본값) 스크립트 공백이 여러개 연속되는 경우, 출력이 비정상적으로 이뤄지는 경우 있음
SET SERVEROUTPUT ON -- 서버출력: 서버 출력은  SETSERVEROUTPUT ON을 설정해야 화면에 나타남

-- REM 파일제목: 실습 04-01 PL/SQL프로그램의 기본적인 구성 요소를 모두 갖춘 예제
DECLARE
    v_str VARCHAR2(100);
BEGIN
    v_str := 'HELLO, WORLD';
    DBMS_OUTPUT.PUT_LINE(v_str);
EXCEPTION WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/