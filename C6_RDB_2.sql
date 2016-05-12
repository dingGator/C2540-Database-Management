use recipesexample ;

select *
from recipes
where recipeid between 1 and 5
 ;

    SELECT 
        `recipesexample`.`recipes`.`RecipeID` AS `RecipeID`,
        `recipesexample`.`recipes`.`RecipeTitle` AS `RecipeTitle`,
        `recipesexample`.`recipes`.`Preparation` AS `Preparation`,
        `recipesexample`.`recipes`.`Notes` AS `Notes`
    FROM
        `recipesexample`.`recipes`
    WHERE
        (`recipesexample`.`recipes`.`RecipeID` BETWEEN 1 AND 5);
