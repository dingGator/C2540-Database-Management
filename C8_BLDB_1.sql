use bowlingleagueexample;
select tea.teamid,
		tea.teamname,
        bowl.bowlerid,
        (bowl.bowlerfirstname || ' ' || bowl.bowlerlastname) as bowler_fullname
from teams tea
	join  bowlers bowl
    on (tea.teamId = bowl.teamid)
;

/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER VIEW `bowlingleagueexample`.`ch08_teams_and_bowlers` AS

 select `bowlingleagueexample`.`teams`.`TeamName` 
	AS `TeamName`,
	concat(`bowlingleagueexample`.`bowlers`.`BowlerLastName`,
    ', ',`bowlingleagueexample`.`bowlers`.`BowlerFirstName`) 
    AS `BowlerFullName` 
from (`bowlingleagueexample`.`teams` 
join `bowlingleagueexample`.`bowlers` 
on((`bowlingleagueexample`.`teams`.`TeamID` = 
`bowlingleagueexample`.`bowlers`.`TeamID`)));
*/