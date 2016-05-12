use recipesexample;

select *
from
(
select rclass.recipeclassid,
		rclass.recipeclassdescription
from recipe_classes rclass
where ((rclass.recipeclassdescription = 'salad') ||
		(rclass.recipeclassdescription = 'soup') ||
        (rclass.recipeclassdescription = 'main course'))) class

left join
recipes rec
on(rec.recipeclassid = class.recipeclassid)

;
/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `recipesexample`.`ch09_salad_soup_main_courses` AS 

select
 `rcfiltered`.`ClassName` 
	AS `ClassName`,
`r`.`RecipeTitle` 
	AS `RecipeTitle` 
from (`recipesexample`.`ch09_salad_soup_main` `rcfiltered` 
left join `recipesexample`.`recipes` `r` 
on((`rcfiltered`.`RecipeClassID` = `r`.`RecipeClassID`)));


CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `recipesexample`.`ch09_salad_soup_main` AS 


select
 `rc`.`RecipeClassID` 
	AS `RecipeClassID`,
`rc`.`RecipeClassDescription` 
	AS `ClassName` 
from `recipesexample`.`recipe_classes` `rc` 
where ((`rc`.`RecipeClassDescription` = 'Salad') 
or (`rc`.`RecipeClassDescription` = 'Soup') 
or (`rc`.`RecipeClassDescription` = 'Main course'));

*/