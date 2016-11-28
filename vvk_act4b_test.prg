drop program vvk_act4b_test:group1 go
create program vvk_act4b_test:group1

/************************************************************
 VVK: Vincent
 Activity 4 B
 RECORD, SET, CALL ECHO, TRIM, IF, BUILD CHAR(0)  example
*************************************************************/

RECORD z_strip
(
   1 msg =vc
   1 first_half =vc
   1 second_half  =vc 
)

SET z_strip->msg = "My name is John ?unwanted portion* Doe"

SET msg_size = SIZE(TRIM(z_strip->msg))

CALL ECHO (BUILD("Message Size = ",msg_size))

/* Find the first part using the "?"char in the string */
SET z_pos = FINDSTRING("?",TRIM(z_strip->msg),1)

CALL ECHO (BUILD("The z_pos = ",z_pos))

IF(z_pos > 0)
   /* Store first half */
   SET z_strip->first_half = SUBSTRING(1, z_pos-1, z_strip->msg)
   CALL ECHO (BUILD("The first half is: ", z_strip->first_half))
   
   /* Find the start of the 2nd part */
   SET z_pos2 = FINDSTRING("*", TRIM(z_strip->msg), z_pos+1)
   CALL ECHO (BUILD("The z_pos2 = ",z_pos2))

   IF (z_pos2 >0)
      /* Store 2nd part in second_half */
      SET z_strip->second_half = SUBSTRING(z_pos2+1, (msg_size-z_pos2),z_strip->msg)
      CALL ECHO (BUILD("The second half is: ", z_strip->second_half))
      
      /* Construct new msg, concat first half and second half. */
      SET new_msg = BUILD(TRIM(z_strip->first_half),
      TRIM(z_strip->second_half),CHAR(0))
      CALL ECHO (BUILD("The new message is: ",new_msg))
   ENDIF
ENDIF
end go


