SET ECHO ON -- ���ڸ��: ��ũ��Ʈ�� @�� ����Ͽ� ������ ��� �� ������ �����ؾ� ��ũ��Ʈ ȭ���� ��Ÿ��.
SET TAB OFF -- �� ����: �� ������ ON���� �ϰ� �Ǹ�(�⺻��) ��ũ��Ʈ ������ ������ ���ӵǴ� ���, ����� ������������ �̷����� ��� ����
SET SERVEROUTPUT ON -- �������: ���� �����  SETSERVEROUTPUT ON�� �����ؾ� ȭ�鿡 ��Ÿ��

-- REM ��������: �ǽ� 04-01 PL/SQL���α׷��� �⺻���� ���� ��Ҹ� ��� ���� ����
DECLARE
    v_str VARCHAR2(100);
BEGIN
    v_str := 'HELLO, WORLD';
    DBMS_OUTPUT.PUT_LINE(v_str);
EXCEPTION WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/