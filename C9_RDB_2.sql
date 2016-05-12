use recipesexample;

select *
from 
ingredients ing
left join
(select recipe_ingredients.IngredientID,
		recipes.RecipeID
from
recipes
join
recipe_ingredients
on ((recipes.RecipeID = recipe_ingredients.RecipeID))) rec

on(( rec.ingredientid = ing.IngredientID))

;



/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `recipesexample`.`ch09_all_ingredients_any_recipes` AS

 select `recipesexample`.`ingredients`.`IngredientName` 
	AS `IngredientName`,
`r`.`RecipeID` 
	AS `RecipeID`,
`r`.`RecipeTitle` 
	AS `RecipeTitle` 
from (`recipesexample`.`ingredients` 
left join `recipesexample`.`ch09_all_ing_recipes` `r` 
	on((`recipesexample`.`ingredients`.`IngredientID` = `r`.`IngredientID`)));



CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `recipesexample`.`ch09_all_ing_recipes` AS 

select 
distinct `recipesexample`.`recipes`.`RecipeID` 
	AS `RecipeID`,
`recipesexample`.`recipes`.`RecipeTitle` 
	AS `RecipeTitle`,
`recipesexample`.`recipe_ingredients`.`IngredientID` 
	AS `IngredientID` 
from (`recipesexample`.`recipes` 
join `recipesexample`.`recipe_ingredients` 
on((`recipesexample`.`recipes`.`RecipeID` 
= `recipesexample`.`recipe_ingredients`.`RecipeID`)));

*/