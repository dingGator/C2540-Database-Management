use recipesexample;

select IngredientName
from ingredients

;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `recipesexample`.`ch04_complete_ingredient_list` AS
*/
    SELECT 
        `recipesexample`.`ingredients`.`IngredientName` AS `IngredientName`
    FROM
        `recipesexample`.`ingredients`;
