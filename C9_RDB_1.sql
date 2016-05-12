use recipesexample;
select*
from  recipe_classes class
left join
recipes resps
on ((resps.recipeclassid = class.recipeclassid))
where isnull(resps.recipeid)
;
/*
select * from ch09_recipe_classes_no_recipes;
/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER
 VIEW `recipesexample`.`ch09_recipe_classes_no_recipes` AS 
 
 select 
 `recipesexample`.`recipe_classes`.`RecipeClassDescription` 
	AS `RecipeClassDescription` 
from (`recipesexample`.`recipe_classes` 
left join `recipesexample`.`recipes` 
on((`recipesexample`.`recipe_classes`.`RecipeClassID` 
= `recipesexample`.`recipes`.`RecipeClassID`))) 
where isnull(`recipesexample`.`recipes`.`RecipeID`);

*/