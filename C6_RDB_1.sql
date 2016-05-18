use recipesexample ;

select recipetitle, preparation, notes
from recipes
where ((recipeclassid = 1) and (notes is not null))
 ;

/*
    SELECT 
        `recipesexample`.`recipes`.`RecipeTitle` AS `RecipeTitle`,
        `recipesexample`.`recipes`.`Preparation` AS `Preparation`,
        `recipesexample`.`recipes`.`Notes` AS `Notes`
    FROM
        `recipesexample`.`recipes`
    WHERE
        ((`recipesexample`.`recipes`.`RecipeClassID` = 1)
            AND (`recipesexample`.`recipes`.`Notes` IS NOT NULL));
*/