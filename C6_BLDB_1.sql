use bowlingleagueexample ;

select TourneyID,TourneyDate,TourneyLocation
from tournaments 
where TourneyDate between cast('2012-09-01' as date) and cast('2012-09-30' as date)

;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `bowlingleagueexample`.`ch06_september_2012_tournament_schedule` AS

    SELECT 
        `bowlingleagueexample`.`tournaments`.`TourneyDate` AS `TourneyDate`,
        `bowlingleagueexample`.`tournaments`.`TourneyLocation` AS `TourneyLocation`
    FROM
        `bowlingleagueexample`.`tournaments`
    WHERE
        (`bowlingleagueexample`.`tournaments`.`TourneyDate` BETWEEN CAST('2012-9-1' AS DATE) AND CAST('2012-9-30' AS DATE));

*/