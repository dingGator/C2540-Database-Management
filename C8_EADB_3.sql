use EntertainmentAgencyexample;
select 
	ent.entertainerid,
    ent.entstageName as stage_name,
    ent.entZipCode as same_postal_code,
    agt.agentId,
    (agt.agtfirstname||' ' || agt.agtlastname) as agent_name
    
from (agents agt  
	join entertainers ent
		on (agt.agtZipcode = ent.entZipCode))
 
; 
/*

CREATE 
	ALGORITHM=UNDEFINED 
    DEFINER=`root`@`localhost` 
    SQL SECURITY DEFINER 
VIEW `entertainmentagencyexample`.`ch08_agents_entertainers_same_postal` AS 
	
    select concat(`entertainmentagencyexample`.`agents`.`AgtFirstName`
		,' ',`entertainmentagencyexample`.`agents`.`AgtLastName`) 
			AS `AgtFullName`,
        `entertainmentagencyexample`.`entertainers`.`EntStageName` 
			AS `EntStageName`,
        `entertainmentagencyexample`.`agents`.`AgtZipCode` 
			AS `AgtZipCode` 
	from (`entertainmentagencyexample`.`agents` 
		join `entertainmentagencyexample`.`entertainers` 
	on((`entertainmentagencyexample`.`agents`.`AgtZipCode` 
		= `entertainmentagencyexample`.`entertainers`.`EntZipCode`)));
	
*/