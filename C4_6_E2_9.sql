-- 9.  Display all student ids and event id for students 
--          who scored a perfect score (i.e. 20) for event ids 1 and 4. 
use class;
select student_id, event_id
from score
where (score = '20') and (event_id = '1' or event_id = '4')
;


