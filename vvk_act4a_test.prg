drop program vvk_act4a_test:group1 go
create program vvk_act4a_test:group1

/************************************************************
 VVK: Vincent
 Activity 4 A
 ALTERLIST, Record, Set, For, CNVTSRING, Build, CALL ECHO  example
 *************************************************************/
 

RECORD msg
(
   1 list[*]
      2 value = c30
)

SET stat = ALTERLIST(msg->list,5)

FOR(x = 1 to 5)
   SET msg->list[x]->value = cnvtstring(x)
ENDFOR

FOR(t = 1 to 5)
   CALL ECHO(BUILD("This is iteration nummer:", msg->list[t]->value))
ENDFOR


end go

