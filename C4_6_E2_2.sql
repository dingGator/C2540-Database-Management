-- Display the number of each player 
-- who joined the club after 2005 
-- and is a resident of Stratford.
use tennis;
select playerno
from players
where ((town = 'Stratford') and (joined >'2005'))
;


