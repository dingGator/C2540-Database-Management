use recipesexample;

select *
from recipes
order by recipetitle
;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `recipesexample`.`ch04_main_recipe_information` AS

    SELECT 
        `recipesexample`.`recipes`.`RecipeID` AS `RecipeID`,
        `recipesexample`.`recipes`.`RecipeTitle` AS `RecipeTitle`,
        `recipesexample`.`recipes`.`RecipeClassID` AS `RecipeClassID`,
        `recipesexample`.`recipes`.`Preparation` AS `Preparation`,
        `recipesexample`.`recipes`.`Notes` AS `Notes`
    FROM
        `recipesexample`.`recipes`
    ORDER BY `recipesexample`.`recipes`.`RecipeTitle`;
*/