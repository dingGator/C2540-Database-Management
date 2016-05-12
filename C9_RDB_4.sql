use recipesexample;

select *
from 
recipe_classes
left join
recipes 
on(recipes.RecipeClassID = recipe_classes.RecipeClassID)
;

/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `recipesexample`.`ch09_all_recipeclasses_and_matching_recipes` AS 

select 
`recipesexample`.`recipe_classes`.`RecipeClassDescription` 
	AS `RecipeClassDescription`,
`recipesexample`.`recipes`.`RecipeTitle` 
	AS `RecipeTitle` 
from (`recipesexample`.`recipe_classes` 
left join `recipesexample`.`recipes` 
on((`recipesexample`.`recipe_classes`.`RecipeClassID` 
= `recipesexample`.`recipes`.`RecipeClassID`)));


*/