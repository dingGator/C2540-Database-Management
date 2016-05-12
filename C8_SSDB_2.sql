use Schoolschedulingexample;
select 	
		build.buildingcode,
		build.buildingname,
        class.classroomid
	
from 	(class_rooms class 
	join buildings build
    on (build.buildingcode = class.buildingcode))

; 
/*

CREATE 
	ALGORITHM=UNDEFINED 
    DEFINER=`root`@`localhost` 
    SQL SECURITY DEFINER 
VIEW `schoolschedulingexample`.`ch08_buildings_classrooms` AS 

	select
		`schoolschedulingexample`.`buildings`.`BuildingName` 
			AS `BuildingName`,
		`schoolschedulingexample`.`class_rooms`.`ClassRoomID` 
			AS `ClassRoomID` 
	from (`schoolschedulingexample`.`buildings` 
		join `schoolschedulingexample`.`class_rooms` 
			on((`schoolschedulingexample`.`buildings`.`BuildingCode` 
            = `schoolschedulingexample`.`class_rooms`.`BuildingCode`)));
*/