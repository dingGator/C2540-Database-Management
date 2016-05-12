use bowlingleagueexample;
select tourneydate,
		tourneylocation,
        nextyeartourneydate
from tournaments
where tourneydate > 2016
order by tourneylocation;