use entertainmentagencyexample;

use entertainmentagencyexample;
select EntStageName AS Entertainer,
        CONCAT('Web site: ',
                EntWebPage) AS Drop_By
from entertainers
;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `entertainmentagencyexample`.`ch05_entertainer_web_sites` AS
    SELECT 
        `entertainmentagencyexample`.`entertainers`.`EntStageName` AS `Entertainer`,
        CONCAT('Web site: ',
                `entertainmentagencyexample`.`entertainers`.`EntWebPage`) AS `Drop_By`
    FROM
        `entertainmentagencyexample`.`entertainers`;
*/