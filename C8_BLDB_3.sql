use bowlingleagueexample;
select bowl1.bowlerid  as bowler1_ID,
		concat(bowl1.bowlerfirstname ||" "|| bowl1.bowlerlastname) as bowler1_FullName,
        
        bowl2. bowlerid as bowler2_ID,
       concat(bowl2.bowlerfirstname ||" "|| bowl2.bowlerlastname) as bowler2_Fullname,
        bowl2.bowlerzip
        
from bowlers bowl1
    join (bowlers bowl2)
    on ((bowl1.bowlerid <> bowl2.bowlerid)
    && (bowl1.bowlerzip = bowl2.bowlerzip))
    order by bowler1_ID
    ;
    

/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER VIEW `bowlingleagueexample`.`ch08_bowlers_same_zipcode` AS 

select 
	concat(`bowlingleagueexample`.`bowlers`.`BowlerLastName`,
    ', ',`bowlingleagueexample`.`bowlers`.`BowlerFirstName`) 
    AS `FirstBowler`,
    `bowlingleagueexample`.`bowlers`.`BowlerZip` 
    AS `BowlerZip`,
    concat(`bowlers2`.`BowlerLastName`,
    ', ',`bowlers2`.`BowlerFirstName`) 
    AS `SecondBowler` 
from (`bowlingleagueexample`.`bowlers` 
join `bowlingleagueexample`.`bowlers` `bowlers2` 
on(((`bowlingleagueexample`.`bowlers`.`BowlerID` 
	<> `bowlers2`.`BowlerID`) 
and (`bowlingleagueexample`.`bowlers`.`BowlerZip` 
	= `bowlers2`.`BowlerZip`))));
*/