SET ECHO
SET TAB OFF
SET SERVEROUTPUT ON

REM ū ����ǥ�� ����� �پ��� ������ ����� ���� �ĺ���
REM ū ����ǥ�� ����ϸ� �Ϲ� ����� ���� �ĺ����� ���� ���� ��
REM 30�� ���� ������ ������ ��� ��������� �Ѿ �� �ִ�.
REM ���� ���ڳ� Ư�����ڸ� ������ �ĺ��ڵ� ����� �� ������
REM �����̳� Ű��������� ��� ����� ���� �ĺ��ڷ� ����� �� �ִ�.

DECLARE
v_num number; -- �Ϲ� ����� ���� �ĺ���(�빮�� V_NUM���� �ĺ���)
"v_num" number; -- �ҹ��� ����� ���� �ĺ���
"���� ���� ������" number; -- ���鹮�ڸ� ������ ����� ���� �ĺ���
"v_~!@#$%^&*()+-=" number; -- Ư�����ڸ� ������ ����� ���� �ĺ���
"begin" number; -- ���� ����� ����� ���� �ĺ���

function "square number"(a_num number) -- �Լ��� �ĺ��ڿ� �ҹ��ڿ� ���� ���� ����
return number is
begin
    return a_num*a_num;
end:

begin
"v_num" := 10;
v_num := 20;
"���� ���� ������" := 30;
"v_~!@#$%^&*()+-=" := 40;
"begin" := 50;

dbms_output.putline("v_num"); -- �ҹ��� �ĺ��� = 10
dbms_output.putline(V_NUM); -- �빮�� �ĺ��� = 20
dbms_output.putline(v_num); -- �ҹ��� �ĺ��� (���� ������ ����) = 10
dbms_output.putline("V_NUM"); -- �빮�� �ĺ��� (���� ������ ����) = 20
dbms_output.putline("���� ���� ������"); -- =30
dbms_output.putline("v_~!@#$%^&*()+-="); -- =40
dbms_output.putline("begin"); -- =50
dbms_output.putline("squar number(10)"); -- =100
end;
/