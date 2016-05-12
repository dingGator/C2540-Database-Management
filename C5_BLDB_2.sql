use bowlingleagueexample;

select 
	concat(bowlerlastName, ', ' , bowlerfirstname) as 'Bowler Name',
    BowlerPhoneNumber
from bowlers
order by concat(bowlerlastName, ', ' , bowlerfirstname) 
     
;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `bowlingleagueexample`.`ch05_phone_list` AS

    SELECT 
        CONCAT(`bowlingleagueexample`.`bowlers`.`BowlerLastName`,
                ', ',
                `bowlingleagueexample`.`bowlers`.`BowlerFirstName`) AS `Bowler`,
        `bowlingleagueexample`.`bowlers`.`BowlerPhoneNumber` AS `Phone`
    FROM
        `bowlingleagueexample`.`bowlers`
    ORDER BY CONCAT(`bowlingleagueexample`.`bowlers`.`BowlerLastName`,
            ', ',
            `bowlingleagueexample`.`bowlers`.`BowlerFirstName`);

*/
