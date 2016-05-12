use bowlingleagueexample;

select 'thunderbird lanes' as rowid,
		score.bowlerid,
        bowl.bowlerfirstname,
        bowl.bowlerlastname,
		score.rawscore
from
bowlers bowl
join
bowler_scores score
on((bowl.bowlerid = score.bowlerid))
join
(tournaments tour
	join
	tourney_matches tmatch
	on(( tour.tourneyid = tmatch.tourneyid)))
on((score.matchid =tmatch.matchid))    
where ((score.rawscore > 165) && (tourneylocation = 'thunderbird lanes'))


union 

select 'bolero lanes' as rowid,
		score.bowlerid,
        bowl.bowlerfirstname,
        bowl.bowlerlastname,
		score.rawscore
from
bowlers bowl
join
bowler_scores score
on((bowl.bowlerid = score.bowlerid))
join
(tournaments tour
	join
	tourney_matches tmatch
	on(( tour.tourneyid = tmatch.tourneyid)))
on((score.matchid =tmatch.matchid))    
where ((score.rawscore > 150) && (tourneylocation = 'bolero lanes'))

;

/*
CREATE 
ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `bowlingleagueexample`.`ch10_good_bowlers_tbird_bolero_union` AS 

select 
	`bowlingleagueexample`.`tournaments`.`TourneyLocation` 
		AS `TourneyLocation`,
	`bowlingleagueexample`.`bowlers`.`BowlerLastName` 
		AS `BowlerLastName`,
	`bowlingleagueexample`.`bowlers`.`BowlerFirstName` 
		AS `BowlerFirstName`,
	`bowlingleagueexample`.`bowler_scores`.`RawScore` 
		AS `RawScore` 
from (

`bowlingleagueexample`.`bowlers` 
	join 
		((`bowlingleagueexample`.`tournaments` 
        join `bowlingleagueexample`.`tourney_matches` 
			on((`bowlingleagueexample`.`tournaments`.`TourneyID` 
				= `bowlingleagueexample`.`tourney_matches`.`TourneyID`))) 
		join `bowlingleagueexample`.`bowler_scores` 
			on((`bowlingleagueexample`.`tourney_matches`.`MatchID` 
            = `bowlingleagueexample`.`bowler_scores`.`MatchID`))) 
	on((`bowlingleagueexample`.`bowlers`.`BowlerID` 
    = `bowlingleagueexample`.`bowler_scores`.`BowlerID`))) 
    where ((`bowlingleagueexample`.`tournaments`.`TourneyLocation` 
    = 'Thunderbird Lanes') 
    and (`bowlingleagueexample`.`bowler_scores`.`RawScore` > 165)) 
    
    
union 

select 
	`bowlingleagueexample`.`tournaments`.`TourneyLocation` 
		AS `TourneyLocation`,
	`bowlingleagueexample`.`bowlers`.`BowlerLastName` 
		AS `BowlerLastName`,
	`bowlingleagueexample`.`bowlers`.`BowlerFirstName` 
		AS `BowlerFirstName`,
	`bowlingleagueexample`.`bowler_scores`.`RawScore` 
		AS `RawScore` 
from (`bowlingleagueexample`.`bowlers` 
	join 
		((`bowlingleagueexample`.`tournaments` 
			join `bowlingleagueexample`.`tourney_matches` 
            on((`bowlingleagueexample`.`tournaments`.`TourneyID` 
				= `bowlingleagueexample`.`tourney_matches`.`TourneyID`))) 
			join `bowlingleagueexample`.`bowler_scores` 
            on((`bowlingleagueexample`.`tourney_matches`.`MatchID` 
            = `bowlingleagueexample`.`bowler_scores`.`MatchID`))) 
	on((`bowlingleagueexample`.`bowlers`.`BowlerID` 
    = `bowlingleagueexample`.`bowler_scores`.`BowlerID`))) 

where ((`bowlingleagueexample`.`tournaments`.`TourneyLocation` 
= 'Bolero Lanes') 
and (`bowlingleagueexample`.`bowler_scores`.`RawScore` > 150));

*/