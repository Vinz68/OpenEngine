drop program vvk_act4c_test:group1 go
create program vvk_act4c_test:group1

/************************************************************
 VVK: Vincent
 Activity 4 C
 While, Free, Set, Call Echo
*************************************************************/

FREE SET ctr

SET ctr = 10

WHILE(ctr>=0)
   CALL ECHO(BUILD("While-",ctr,">=0"))
   SET ctr = ctr -1
ENDWHILE

CALL ECHO("End of While Loop")

end go
