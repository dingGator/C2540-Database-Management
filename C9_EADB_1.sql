use entertainmentagencyexample;
select age.agentid,
		age.agtfirstname,
        age.agtlastname
from (agents age
	left join 
		engagements eng
        on(age.agentid =eng.agentid))
        where isnull(eng.engagementnumber)

;

/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `entertainmentagencyexample`.`ch09_agents_no_contracts` AS 

select 
`entertainmentagencyexample`.`agents`.`AgentID` 
	AS `AgentID`,
`entertainmentagencyexample`.`agents`.`AgtFirstName` 
	AS `AgtFirstName`,
`entertainmentagencyexample`.`agents`.`AgtLastName` 
	AS `AgtLastName` 
from 
(`entertainmentagencyexample`.`agents` 
	left join `entertainmentagencyexample`.`engagements` 
		on((`entertainmentagencyexample`.`agents`.`AgentID` 
        = `entertainmentagencyexample`.`engagements`.`AgentID`))) 
        where isnull(`entertainmentagencyexample`.`engagements`.`EngagementNumber`);
*/