use entertainmentagencyexample;

select 	*
from engagements 

;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `entertainmentagencyexample`.`ch04_engagement_information` AS
 
 SELECT 
        `entertainmentagencyexample`.`engagements`.`EngagementNumber` AS `EngagementNumber`,
        `entertainmentagencyexample`.`engagements`.`StartDate` AS `StartDate`,
        `entertainmentagencyexample`.`engagements`.`EndDate` AS `EndDate`,
        `entertainmentagencyexample`.`engagements`.`StartTime` AS `StartTime`,
        `entertainmentagencyexample`.`engagements`.`StopTime` AS `StopTime`,
        `entertainmentagencyexample`.`engagements`.`ContractPrice` AS `ContractPrice`,
        `entertainmentagencyexample`.`engagements`.`CustomerID` AS `CustomerID`,
        `entertainmentagencyexample`.`engagements`.`AgentID` AS `AgentID`,
        `entertainmentagencyexample`.`engagements`.`EntertainerID` AS `EntertainerID`
    FROM
        `entertainmentagencyexample`.`engagements`;

*/