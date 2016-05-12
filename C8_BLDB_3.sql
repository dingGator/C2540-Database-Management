use bowlingleagueexample;
select bowl1.bowlerid  as bowler1,
		bowl1.bowlerfirstname as bowler1_firstname ,
        bowl1.bowlerlastname as bowler1_lastname,
        
        bowl2. bowlerid as bowler2,
       bowl2.bowlerfirstname as bowler2_firstname,
        bowl2.bowlerlastname as bowler2_lastname,
        bowl2.bowlerzip
        
from bowlers bowl1
    join (bowlers bowl2)
    on ((bowl1.bowlerid <> bowl2.bowlerid)
    && (bowl1.bowlerzip = bowl2.bowlerzip))
    

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