use bowlingleagueexample;

select *
from
(
teams teams_1 
	join 
    (teams 
		join 
		(tourney_matches tmatch 
			left join match_games matchg
			on((tmatch.MatchID 
				= matchg.MatchID))) 
			on((teams.TeamID 
				= tmatch.OddLaneTeamID))) 
		on((teams_1.TeamID 
			= tmatch.EvenLaneTeamID))) 
		where isnull(matchg.MatchID);
/*
select  
mat.matchid
from 
match_games game
left join
tourney_matches mat
on (mat.matchid = game.matchid)
where isnull(game.matchid)
;



/*
select * from ch09_matches_not_played_yet;

/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `bowlingleagueexample`.`ch09_matches_not_played_yet` AS 

select 
`bowlingleagueexample`.`tourney_matches`.`MatchID` 
	AS `MatchID`,
`bowlingleagueexample`.`tourney_matches`.`TourneyID` 
	AS `TourneyID`,
`bowlingleagueexample`.`teams`.`TeamName` 
	AS `OddLaneTeam`,
`teams_1`.`TeamName` 
	AS `EvenLaneTeam` 
from 
(
`bowlingleagueexample`.`teams` `teams_1` 
	join (`bowlingleagueexample`.`teams` 
    join (`bowlingleagueexample`.`tourney_matches` 
    left join `bowlingleagueexample`.`match_games` 
		on((`bowlingleagueexample`.`tourney_matches`.`MatchID` 
			= `bowlingleagueexample`.`match_games`.`MatchID`))) 
    on((`bowlingleagueexample`.`teams`.`TeamID` 
		= `bowlingleagueexample`.`tourney_matches`.`OddLaneTeamID`))) 
	on((`teams_1`.`TeamID` 
		= `bowlingleagueexample`.`tourney_matches`.`EvenLaneTeamID`))) 
	where isnull(`bowlingleagueexample`.`match_games`.`MatchID`);

*/