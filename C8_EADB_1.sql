use EntertainmentAgencyexample;
select 
	eng.engagementnumber,
    eng.startdate,
    eng.enddate,
    agt.agentid,
    (agt.agtfirstname||' ' || agt.agtlastname) as agent_name    
    
from (agents agt join engagements eng  
 on (agt.agentid = eng.agentid))
 order by eng.startdate
    

; 
/*

CREATE 
	ALGORITHM=UNDEFINED 
    DEFINER=`root`@`localhost` 
    SQL SECURITY DEFINER 
VIEW `entertainmentagencyexample`.`ch08_agents_booked_dates` AS 

    select concat(`entertainmentagencyexample`.`agents`.`AgtFirstName`,
		' ',`entertainmentagencyexample`.`agents`.`AgtLastName`) 
			AS `AgtFullName`,
		`entertainmentagencyexample`.`engagements`.`StartDate` 
			AS `StartDate` 
	from (`entertainmentagencyexample`.`agents` 
		join `entertainmentagencyexample`.`engagements` 
        on((`entertainmentagencyexample`.`agents`.`AgentID` 
        = `entertainmentagencyexample`.`engagements`.`AgentID`))) 
	order by `entertainmentagencyexample`.`engagements`.`StartDate`
        ;

*/