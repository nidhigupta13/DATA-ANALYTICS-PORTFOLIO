select * from global_hunger_strike_2022;

show columns from global_hunger_strike_2022;

select Country,`2000`,`2007`,`2014`,`2022` from global_hunger_strike_2022
where `2000`>10 and `2007`>10 and `2014`>10 and `2022`>10;

select country, max(`2000`), max(`2007`),max(`2014`),max(`2022`),`absolute change`,`Percent change`
from global_hunger_strike_2022;

select country, min(`2000`), min(`2007`),min(`2014`),min(`2022`),`absolute change`,`Percent change`
from global_hunger_strike_2022;

with cte_AllYears as
( select `rank in 2022`,country,`2000`,`2007`,`2014`,`2022`
from global_hunger_strike_2022
)
select * from cte_AllYears;

with cte_change as
( select `rank in 2022`,country,`absolute change`,`percent change`
from global_hunger_strike_2022
)
select * from cte_change;
