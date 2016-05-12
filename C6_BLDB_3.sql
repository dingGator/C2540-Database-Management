use bowlingleagueexample ;

select teamid, bowlerfirstname, bowlerlastname, bowlercity
from bowlers
where 
(bowlercity in ('bellevue', 'bothell', 'duvall', 'redmond', 'woodinville') and
 teamid in(5,6,7,8))
 order by bowlercity
 ;
/*

    SELECT 
        `bowlingleagueexample`.`bowlers`.`BowlerFirstName` AS `BowlerFirstName`,
        `bowlingleagueexample`.`bowlers`.`BowlerLastName` AS `BowlerLastName`,
        `bowlingleagueexample`.`bowlers`.`BowlerCity` AS `BowlerCity`,
        `bowlingleagueexample`.`bowlers`.`TeamID` AS `TeamID`
    FROM
        `bowlingleagueexample`.`bowlers`
    WHERE
        ((`bowlingleagueexample`.`bowlers`.`BowlerCity` IN ('Bellevue' , 'Bothell',
            'Duvall',
            'Redmond',
            'Woodinville'))
            AND (`bowlingleagueexample`.`bowlers`.`TeamID` BETWEEN 5 AND 8))
    ORDER BY `bowlingleagueexample`.`bowlers`.`BowlerCity` , `bowlingleagueexample`.`bowlers`.`BowlerLastName`;
