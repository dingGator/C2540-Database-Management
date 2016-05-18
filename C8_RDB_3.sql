use recipesexample;
select first_ingr.IngredientName,
       first_ingr.MeasurementDescription,
       second_ingr.IngredientName,
       second_ingr.MeasurementDescription


/*(ingredients ingr
join measurements meas
on(ingr.MeasureAmountID = meas.MeasureAmountID))
*/
from 
((select 
ingr.IngredientName 
	AS IngredientName,
meas.MeasurementDescription 
	AS MeasurementDescription 

from (
	ingredients ingr
	join measurements meas 
		on(ingr.MeasureAmountID 
        = meas.MeasureAmountID))) 
        first_ingr 
join 
	(select 
		ingr.IngredientName 
			AS IngredientName,
		meas.MeasurementDescription 
			AS MeasurementDescription 
	from 
    (	ingredients ingr
			join measurements meas 
			on(ingr.MeasureAmountID 
            = meas.MeasureAmountID))) second_ingr 
on((first_ingr.IngredientName 
	<> second_ingr.IngredientName) 
and (first_ingr.MeasurementDescription 
	= second_ingr.MeasurementDescription)));



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