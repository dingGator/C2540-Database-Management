use recipesexample;
select *
from recipe_classes class
join recipes resp
on (resp.recipeclassid = class.recipeclassid)
where (class.recipeclassdescription = 'Salad')
;

/*
CREATE
 ALGORITHM=UNDEFINED 
 DEFINER=`root`@`localhost` 
 SQL SECURITY DEFINER VIEW `recipesexample`.`ch08_salads` AS 
 
 select `recipesexample`.`recipes`.`RecipeTitle` 
	AS `RecipeTitle` 
from (`recipesexample`.`recipes` 
join `recipesexample`.`recipe_classes` 
	on((`recipesexample`.`recipes`.`RecipeClassID` 
    = `recipesexample`.`recipe_classes`.`RecipeClassID`))) 
    where (`recipesexample`.`recipe_classes`.`RecipeClassDescription` = 'Salad');

*/