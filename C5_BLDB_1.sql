use bowlingleagueexample;

select Tourneylocation,
       Tourneydate,
       (tourneydate + interval 364 day)as NextYearTourneyDate
from tournaments

order by tourneylocation
;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `bowlingleagueexample`.`ch05_next_years_tourney_dates` AS
    SELECT 
        `bowlingleagueexample`.`tournaments`.`TourneyLocation` AS `TourneyLocation`,
        `bowlingleagueexample`.`tournaments`.`TourneyDate` AS `TourneyDate`,
        (`bowlingleagueexample`.`tournaments`.`TourneyDate` + INTERVAL 364 DAY) AS `NextYearTourneyDate`
    FROM
        `bowlingleagueexample`.`tournaments`
    ORDER BY `bowlingleagueexample`.`tournaments`.`TourneyLocation`;

*/
