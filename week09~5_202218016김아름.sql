set echo on
set tab off
set serveroutput on

declare 
 x number := 10;
begin
 print_boolean('x in (6, 8, 10) ', x in(6, 8, 10)); -- true
 print_boolean('x not in (6, 8, 10) ', x not in(6, 8, 10)); -- false
 print_boolean('x in (6, 8, 10, null) ', x in(6, 8, 10, null)); -- true
 print_boolean('x in (6, 8, 10, null) ', null in(6, 8, 10)); -- null
 print_boolean('null not in (6, 8, 10, null) ', null not in(6, 8, 10, null)); -- null
end;
/