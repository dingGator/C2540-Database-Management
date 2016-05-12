-- 5.  Display player number, name, birth date, and town 
-- for all female players.
use tennis;
select  playerno, name, birth_date, town
from players
where gender = 'F'
;


