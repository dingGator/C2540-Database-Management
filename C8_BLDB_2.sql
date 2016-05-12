use bowlingleagueexample;
select 
score.bowlerid,
       tea.teamname,
       bowl.bowlerfirstname,
       bowl.bowlerlastname,
       score.matchid,
       score.rawscore
       
from (teams tea
	join (bowlers bowl)
    on(tea.teamid = bowl.teamid)
	join (bowler_scores score)
    on (score.bowlerid = bowl.bowlerid))
    
    
    /*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER VIEW `bowlingleagueexample`.`ch08_bowler_game_scores` AS

select `bowlingleagueexample`.`bowler_scores`.`MatchID` 
	AS `MatchID`,`bowlingleagueexample`.`teams`.`TeamName` 
    AS `TeamName`,
    concat(`bowlingleagueexample`.`bowlers`.`BowlerFirstName`
    ,' ',`bowlingleagueexample`.`bowlers`.`BowlerLastName`) 
    AS `BowlerFullName`,
    `bowlingleagueexample`.`bowler_scores`.`GameNumber` 
    AS `GameNumber`,
    `bowlingleagueexample`.`bowler_scores`.`RawScore` 
    AS `RawScore` 
from ((`bowlingleagueexample`.`teams` 
join `bowlingleagueexample`.`bowlers` 
on((`bowlingleagueexample`.`teams`.`TeamID` = 
`bowlingleagueexample`.`bowlers`.`TeamID`))) 
join `bowlingleagueexample`.`bowler_scores` 
on((`bowlingleagueexample`.`bowlers`.`BowlerID` = 
`bowlingleagueexample`.`bowler_scores`.`BowlerID`)));

    */
    