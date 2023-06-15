begin transaction;

set search_path to releves_notes;

create or replace function

  amort(emprunt numeric(5,2), paiement numeric(5,2), taux numeric(5,2)) returns

  table(period int, pay numeric(5,2), rest numeric(5,2)) as $$

  WITH RECURSIVE amortissement AS (

 SELECT  CAST(1 AS int) as period, Round(0 , 2) as pay,  Round($1, 2)  as rest

  UNION ALL

  SELECT   CAST(period + 1 AS int) ,

 --  CASE WHEN  (Round(rest,2) != Round(0.00 , 2 )) THEN Round($2, 2) ELSE Round(rest + rest*Round($3,2) , 2) END ,

  -- CASE WHEN  (Round(rest,2) > Round(0.00 , 2 )) THEN Round($2, 2) ELSE Round($2,2) - Round(rest + rest*Round($3,2) , 2) END ,



  CASE WHEN  (Round(rest,2) >= Round($2 , 2 )) THEN Round($2, 2) ELSE Round($2,2)- ( (Round($2,2) - Round(rest + rest*Round($3,2) , 2))) END ,



  CASE WHEN  Round(rest, 2) < Round($2, 2) THEN 0 ELSE  Round(rest, 2)*(1+ Round($3, 2))  -  Round($2, 2) END



  FROM amortissement



  WHERE Round(rest, 2) > Round(0.00 , 2 ) )



  SELECT period, Round(pay,2) as pay  , Round(rest, 2) as rest  from amortissement

  ;

$$ language 'sql';

select * from amort(1000000.00,20000.00,0.5);

rollback;
