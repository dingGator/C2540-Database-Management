-- 10.  Display all the student ids 
-- for students whose scores are less than 10 
-- and not in event id 1.  
use class;
select student_id
from score
where ((score < 10) and not (event_id = 1))
;


