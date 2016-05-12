use bowlingleagueexample;

select 	BowlerLastName,
		BowlerFirstName,
        BowlerAddress,
        BowlerCity,
        BowlerState,
        BowlerZip
from bowlers
order by BowlerLastName asc,BowlerFirstName asc
;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `bowlingleagueexample`.`ch04_bowler_names_addresses` AS
*/
    SELECT 
        `bowlingleagueexample`.`bowlers`.`BowlerLastName` AS `BowlerLastName`,
        `bowlingleagueexample`.`bowlers`.`BowlerFirstName` AS `BowlerFirstName`,
        `bowlingleagueexample`.`bowlers`.`BowlerAddress` AS `BowlerAddress`,
        `bowlingleagueexample`.`bowlers`.`BowlerCity` AS `BowlerCity`,
        `bowlingleagueexample`.`bowlers`.`BowlerState` AS `BowlerState`,
        `bowlingleagueexample`.`bowlers`.`BowlerZip` AS `BowlerZip`
    FROM
        `bowlingleagueexample`.`bowlers`
    ORDER BY `bowlingleagueexample`.`bowlers`.`BowlerLastName` ,
		`bowlingleagueexample`.`bowlers`.`BowlerFirstName`;

