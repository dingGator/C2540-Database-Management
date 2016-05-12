use recipesexample;

select  'ingredient' as rowid,
		ing.ingredientid,
		ing.ingredientname,
     /*   ing.ingredientclassid,
        ing.measureamountid,*/
        mea.measurementdescription
from 
ingredients ing
join
measurements mea
on(( mea.measureamountid = ing.measureamountid))

union

select  'recipes' as rowid,
		ingr.ingredientid,
		ingr.ingredientname,
       /* ingr.ingredientclassid,
        ingr.measureamountid,*/
        meas.measurementdescription
	


from 
((measurements meas
join
recipe_ingredients ringr
on((meas.measureamountid = ringr.measureamountid))
join
ingredients ingr
on((ringr.ingredientid = ingr.ingredientid))))
    

;
/*
select * from ch10_ingredient_recipe_measurements;
/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `recipesexample`.`ch10_ingredient_recipe_measurements` AS 

select
	`recipesexample`.`ingredients`.`IngredientName` 
		AS `IngredientName`,
	`recipesexample`.`measurements`.`MeasurementDescription` 
		AS `MeasurementDescription`,
	'Ingredient' 
		AS `Type` 
from (
`recipesexample`.`measurements` 
	join `recipesexample`.`ingredients` 
		on((`recipesexample`.`measurements`.`MeasureAmountID` 
        = `recipesexample`.`ingredients`.`MeasureAmountID`))) 
        
union 

select 
	`recipesexample`.`ingredients`.`IngredientName` 
		AS `IngredientName`,
	`recipesexample`.`measurements`.`MeasurementDescription` 
		AS `MeasurementDescription`,
	'Recipe' 
		AS `Type` 

from 
((	`recipesexample`.`measurements` 
	join `recipesexample`.`recipe_ingredients` 
		on((`recipesexample`.`measurements`.`MeasureAmountID` 
			= `recipesexample`.`recipe_ingredients`.`MeasureAmountID`))) 
    join `recipesexample`.`ingredients` 
		on((`recipesexample`.`ingredients`.`IngredientID` 
			= `recipesexample`.`recipe_ingredients`.`IngredientID`)));

*/