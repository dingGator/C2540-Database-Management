use bowlingleagueexample ;

select TourneyID,Tourneylocation, tourneydate
from tournaments 
where Tourneylocation in ('bolero lanes', 'red rooster lanes', 'thunderbird lanes')
;
/*
;
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `bowlingleagueexample`.`ch06_eastside_tournaments` AS

    SELECT 
        `bowlingleagueexample`.`tournaments`.`TourneyLocation` AS `TourneyLocation`,
        `bowlingleagueexample`.`tournaments`.`TourneyDate` AS `TourneyDate`
    FROM
        `bowlingleagueexample`.`tournaments`
    WHERE
        (`bowlingleagueexample`.`tournaments`.`TourneyLocation` IN ('Red Rooster Lanes' , 'Thunderbird Lanes', 'Bolero Lanes'))
    ORDER BY `bowlingleagueexample`.`tournaments`.`TourneyLocation` , `bowlingleagueexample`.`tournaments`.`TourneyDate`;
*/