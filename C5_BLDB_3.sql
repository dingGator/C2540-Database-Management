use bowlingleagueexample;

select 	teamid,
		bowlerfirstname, 
		bowlerlastname, 
		concat(bowlerlastname, ', ', bowlerfirstname) as name2,
        bowlerlastname || ', ' || bowlerfirstname as name1
        
from bowlers
order by teamid,
		concat(bowlerlastname, ' ', bowlerfirstname)
;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `bowlingleagueexample`.`ch05_team_lineups` AS

    SELECT 
        `bowlingleagueexample`.`bowlers`.`TeamID` AS `TeamID`,
        CONCAT(`bowlingleagueexample`.`bowlers`.`BowlerLastName`,
                ', ',
                `bowlingleagueexample`.`bowlers`.`BowlerFirstName`) AS `Bowler`
    FROM
        `bowlingleagueexample`.`bowlers`
    ORDER BY `bowlingleagueexample`.`bowlers`.`TeamID` , 
    CONCAT(`bowlingleagueexample`.`bowlers`.`BowlerLastName`,
            ', ',
            `bowlingleagueexample`.`bowlers`.`BowlerFirstName`);


*/