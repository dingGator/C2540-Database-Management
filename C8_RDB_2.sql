use recipesexample;
select distinct RecipeTitle,
resp.RecipeID

from 

(ingredient_classes class
join ingredients ingr
on (class.IngredientClassID = ingr.IngredientClassID)
join recipe_ingredients respingr
on(ingr.ingredientid = respingr.ingredientid)
join recipes resp
on(resp.recipeid = respingr.recipeid))
where (class.IngredientClassDescription = 'dairy')
/*

(((recipes 
 join recipe_ingredients 
 on((recipes.RecipeID 
 = recipe_ingredients.RecipeID))) 
 join ingredients
 on((ingredients.IngredientID 
 = recipe_ingredients.IngredientID))) 
 join ingredient_classes 
 on((ingredient_classes.IngredientClassID 
 = ingredients.IngredientClassID))) 
 where (ingredient_classes.IngredientClassDescription 
 = 'Dairy');


;
/*
 heavy cream, milk, parmesan cheese, blue cheese, lemon sorbet, bird's custard powder,
 cheddar cheese,
 CREATE 
 ALGORITHM=UNDEFINED 
 DEFINER=`root`@`localhost` 
 SQL SECURITY DEFINER 
 VIEW `recipesexample`.`ch08_recipes_containing_dairy` AS 
 
 select distinct `recipesexample`.`recipes`.`RecipeTitle` 
 AS `RecipeTitle` 
 from (((`recipesexample`.`recipes` 
 join `recipesexample`.`recipe_ingredients` 
 on((`recipesexample`.`recipes`.`RecipeID` 
 = `recipesexample`.`recipe_ingredients`.`RecipeID`))) 
 join `recipesexample`.`ingredients` 
 on((`recipesexample`.`ingredients`.`IngredientID` 
 = `recipesexample`.`recipe_ingredients`.`IngredientID`))) 
 join `recipesexample`.`ingredient_classes` 
 on((`recipesexample`.`ingredient_classes`.`IngredientClassID` 
 = `recipesexample`.`ingredients`.`IngredientClassID`))) 
 where (`recipesexample`.`ingredient_classes`.`IngredientClassDescription` 
 = 'Dairy');

 
 */