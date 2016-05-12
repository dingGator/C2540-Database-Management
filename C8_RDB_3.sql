use recipesexample;
select first_ingredient.IngredientName,
       first_ingredient.MeasurementDescription,
       second_ingredient.IngredientName,
       second_ingredient.MeasurementDescription


/*(ingredients ingr
join measurements meas
on(ingr.MeasureAmountID = meas.MeasureAmountID))
*/
from 
((select 
ingredients.IngredientName 
	AS IngredientName,
measurements.MeasurementDescription 
	AS MeasurementDescription 

from (
	ingredients 
	join measurements 
		on(ingredients.MeasureAmountID 
        = measurements.MeasureAmountID))) first_ingredient 
join 
	(select 
		ingredients.IngredientName 
			AS IngredientName,
		measurements.MeasurementDescription 
			AS MeasurementDescription 
	from 
    (	ingredients 
			join measurements 
			on(ingredients.MeasureAmountID 
            = measurements.MeasureAmountID))) second_ingredient 
on((first_ingredient.IngredientName 
	<> second_ingredient.IngredientName) 
and (first_ingredient.MeasurementDescription 
	= second_ingredient.MeasurementDescription)));



;
/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `recipesexample`.`ch08_ingredients_same_measure` AS
 
 select `first_ingredient`.`IngredientName` 
		AS `FirstIngredient`,
    `first_ingredient`.`MeasurementDescription` 
		AS `MeasurementDescription`,
    `second_ingredient`.`IngredientName` 
		AS `SecondIngredient` 

from (`recipesexample`.`ch08_ingredient_first` `first_ingredient` 
join `recipesexample`.`ch08_ingredient_first` `second_ingredient` 
on(((`first_ingredient`.`IngredientName` 
	<> `second_ingredient`.`IngredientName`) 
and (`first_ingredient`.`MeasurementDescription` 
	= `second_ingredient`.`MeasurementDescription`))));
    
    
    
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `recipesexample`.`ch08_ingredient_first` AS 

select `recipesexample`.`ingredients`.`IngredientName` 
AS `IngredientName`,
`recipesexample`.`measurements`.`MeasurementDescription` 
AS `MeasurementDescription` 
from (`recipesexample`.`ingredients` 
join `recipesexample`.`measurements` 
on((`recipesexample`.`ingredients`.`MeasureAmountID` 
= `recipesexample`.`measurements`.`MeasureAmountID`)));


*/