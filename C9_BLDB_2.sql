use bowlingleagueexample;
/*
select *
from 
(tournaments tour
join tourney_matches mat
on ((tour.tourneyid = mat.tourneyid)))
;
*/

select * 
from (tournaments tour 
left join
(
	select match_games.matchid,
			tourney_matches.tourneyid
	from 
	(	tourney_matches 
		join 
		(
			teams 
			join match_games 
            on((teams.TeamID 
				= match_games.winningteamid))) 
			
            on((tourney_matches.MatchID 
            = match_games.MatchID)))

)tm 
	on((tour.TourneyID 
		= tm.TourneyID))) 
        order by tour.TourneyID;








/*
CREATE
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `bowlingleagueexample`.`ch09_all_tourneys_match_results` AS 

select 
`bowlingleagueexample`.`tournaments`.`TourneyID` 
	AS `TourneyID`,
`bowlingleagueexample`.`tournaments`.`TourneyDate` 
	AS `TourneyDate`,
`bowlingleagueexample`.`tournaments`.`TourneyLocation` 
	AS `TourneyLocation`,
`tm`.`MatchID` 
	AS `MatchID`,
`tm`.`GameNumber` 
	AS `GameNumber`,
`tm`.`Winner` 
	AS `Winner` 
from (`bowlingleagueexample`.`tournaments` 
left join `bowlingleagueexample`.`ch09_all_match_results` `tm` 
	on((`bowlingleagueexample`.`tournaments`.`TourneyID` 
		= `tm`.`TourneyID`))) 
        order by `bowlingleagueexample`.`tournaments`.`TourneyID`;


CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `bowlingleagueexample`.`ch09_all_match_results` AS


 select 
 `bowlingleagueexample`.`tourney_matches`.`TourneyID` 
	AS `TourneyID`,
`bowlingleagueexample`.`tourney_matches`.`MatchID` 
	AS `MatchID`,
`bowlingleagueexample`.`match_games`.`GameNumber` 
	AS `GameNumber`,
`bowlingleagueexample`.`teams`.`TeamName` 
	AS `Winner` 
from 
	(`bowlingleagueexample`.`tourney_matches` 
    join 
    (
		`bowlingleagueexample`.`teams` 
			join `bowlingleagueexample`.`match_games` 
            on((`bowlingleagueexample`.`teams`.`TeamID` 
				= `bowlingleagueexample`.`match_games`.`WinningTeamID`))) 
			on((`bowlingleagueexample`.`tourney_matches`.`MatchID` 
            = `bowlingleagueexample`.`match_games`.`MatchID`)));



*/