use bowlingleagueexample;

select *
from bowler_scores
;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `bowlingleagueexample`.`ch04_bowler_score_information` AS

    SELECT 
        `bowlingleagueexample`.`bowler_scores`.`MatchID` AS `MatchID`,
        `bowlingleagueexample`.`bowler_scores`.`GameNumber` AS `GameNumber`,
        `bowlingleagueexample`.`bowler_scores`.`BowlerID` AS `BowlerID`,
        `bowlingleagueexample`.`bowler_scores`.`RawScore` AS `RawScore`,
        `bowlingleagueexample`.`bowler_scores`.`HandiCapScore` AS `HandiCapScore`,
        `bowlingleagueexample`.`bowler_scores`.`WonGame` AS `WonGame`
    FROM
        `bowlingleagueexample`.`bowler_scores`;

*/