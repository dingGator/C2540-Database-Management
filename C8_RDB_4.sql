use recipesexample;
select *
from
(
/* ( ingredients ingr
join recipe_ingredients rec
on(ingr.ingredientid = rec.ingredientid))
where ((ingr.ingredientname = 'beef') ||
		(ingr.ingredientname = 'garlic'))
	
*/
select 
rec.RecipeID AS RecipeID,
rec.RecipeTitle AS RecipeTitle 
from ((recipes rec
join recipe_ingredients rec_ingr
on((rec.RecipeID 
	= rec_ingr.RecipeID))) 
join ingredients ingr
on((ingr.IngredientID 
	= rec_ingr.IngredientID))) 
    
    where (ingr.IngredientName 
    = 'Beef')) bfrec

join (select 
rec.RecipeID AS RecipeID,
rec.RecipeTitle AS RecipeTitle 
from ((recipes rec
join recipe_ingredients rec_ingr 
on((rec.RecipeID 
	= rec_ingr.RecipeID))) 
join ingredients ingr 
on((ingr.IngredientID 
	= rec_ingr.IngredientID))) 
    
    where (ingr.IngredientName 
    = 'Garlic')) garlrec
    on((bfrec.RecipeID = garlrec.RecipeID))

;
/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `recipesexample`.`ch08_beef_and_garlic_recipes` AS

select 
`beefrecipes`.`RecipeTitle` 
	AS `RecipeTitle` 
from (`recipesexample`.`ch08_beef_recipes` `beefrecipes` 
join `recipesexample`.`ch08_garlic_recipes` `garlicrecipes` 

on((`beefrecipes`.`RecipeID` = `garlicrecipes`.`RecipeID`)));

CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `recipesexample`.`ch08_beef_recipes` AS 

select `recipesexample`.`recipes`.`RecipeID` AS `RecipeID`
,`recipesexample`.`recipes`.`RecipeTitle` AS `RecipeTitle` 
from ((`recipesexample`.`recipes` 
join `recipesexample`.`recipe_ingredients` 
on((`recipesexample`.
`recipes`.`RecipeID` 
	= `recipesexample`.`recipe_ingredients`.`RecipeID`))) 
join `recipesexample`.`ingredients` 
on((`recipesexample`.`ingredients`.`IngredientID` 
	= `recipesexample`.`recipe_ingredients`.`IngredientID`))) 
    
    where (`recipesexample`.`ingredients`.`IngredientName` 
    = 'Beef');

CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `recipesexample`.`ch08_garlic_recipes` AS

 select `recipesexample`.`recipe_ingredients`.`RecipeID` 
 AS `RecipeID` 
 from (`recipesexample`.`recipe_ingredients` 
 join `recipesexample`.`ingredients` 
 on((`recipesexample`.`ingredients`.`IngredientID` 
 = `recipesexample`.`recipe_ingredients`.`IngredientID`))) 
 where (`recipesexample`.`ingredients`.`IngredientName` = 'Garlic');

*/