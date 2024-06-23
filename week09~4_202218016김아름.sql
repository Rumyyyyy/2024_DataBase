set echo on
set tab off
set serveroutput on

declare
 x number :=10;
begin
 print_boolean('x(10) between 5 and 15 ', x between 5 and 15); -- true
 print_boolean('x(10) not between 5 and 15 ', x not between 5 and 15); -- false
 print_boolean('x(10) between 15 and 5 ', x between 15 and 5); -- false
 print_boolean('x(10) between null and 10 ', x between null and 10); -- null
 print_boolean('x(10) not between null and 10 ', x not between null and 10); -- null
 print_boolean('x(10) between 5 and null ', x between 5 and null); -- null
 print_boolean('x(10) not between 5 and null ', x not between 5 and null); -- null
 print_boolean('null between 5 and 10 ', null between 5 and 10); -- null
end;
/
 