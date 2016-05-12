use bowlingleagueexample;

select 	teamname
from teams
order by teamname
;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `bowlingleagueexample`.`ch04_team_list` AS
 
 SELECT 
        `bowlingleagueexample`.`teams`.`TeamName` AS `TeamName`
    FROM
        `bowlingleagueexample`.`teams`
    ORDER BY `bowlingleagueexample`.`teams`.`TeamName`;
*/