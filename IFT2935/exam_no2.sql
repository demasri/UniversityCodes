begin transaction;

set search_path to releves_notes;

create or replace function releve_test1 (matricule char(10), prog char(7)) returns table (trimc char(5), sigle char(10), titre varchar(45),  credits numeric, note char(3)) as $$


WITH  REQ1 AS
(SELECT n.trimc as trimc, n.sigle as sigle, titre,  CASE WHEN  (n.note = 'ABA') THEN NULL ELSE credits END as credits, n.note  as  note
  FROM notes n left join titres t on (n.sigle = t.sigle)
      left join credits c on (n.sigle = c.sigle)
            left join valnotes v on (n.note = v.note)
	            where
		              n.matricule = $1
			                  and n.prog = $2
					                 GROUP BY n.trimc , n.sigle , titre, CASE WHEN  (n.note = 'ABA') THEN NULL ELSE credits END, n.note
							                  ORDER BY n.trimc ASC
									                     ),

SUM_CREDITS_PAR_TRIM AS
  (SELECT trimc,
         SUM(credits) CREDITS
	        FROM REQ1
		       GROUP BY trimc
		                ),
				            SUM_CREDITS_PAR_TRIM_MULT_PAR_VALEUR AS
					                  (SELECT
							                      REQ1.trimc,
									                                SUM(REQ1.credits*v.valeur)  AS SUM_CREDITS_PAR_TRIM_MULT_PAR_VALEUR
													                               FROM REQ1
																                                           inner join valnotes v on (REQ1.note = v.note)
																					                                            GROUP BY REQ1.trimc
																										                                               ),

  MOYENNE_PAR_TRIM AS
      (SELECT T1.trimc,
                 SUM_CREDITS_PAR_TRIM_MULT_PAR_VALEUR/CREDITS   AS MOYENNE_PAR_TRIM
		              FROM SUM_CREDITS_PAR_TRIM T1
			                     INNER JOIN SUM_CREDITS_PAR_TRIM_MULT_PAR_VALEUR  T2 ON ( T1.trimc = T2.trimc)
					                       ORDER BY T1.trimc

  ),

 REQ2 AS
   (SELECT n.trimc,
      CAST('Moy' as char(10)) as sigle,
          CAST('Moyenne du trimestre' as varchar(45)) as titre,
	       SUM(CASE WHEN  (n.note = 'ABA') THEN NULL ELSE c.credits END)    credits,
	              TO_CHAR(mpt.MOYENNE_PAR_TRIM  , '999.999') as note
		               FROM notes n left join titres t on (n.sigle = t.sigle)
			                  left join credits c on (n.sigle = c.sigle)
					               left join valnotes v on (n.note = v.note)
						                      left join MOYENNE_PAR_TRIM mpt on (mpt.trimc = n.trimc)
								                        where
											                    n.matricule = $1
													                          and n.prog = $2
																                          GROUP BY n.trimc, TO_CHAR(mpt.MOYENNE_PAR_TRIM  , '999.999')
																			                           ORDER BY n.trimc ASC
																						                              ),

    REQ3 AS
          (SELECT REQ2.trimc,
	          CAST('MoyCum' as char(10))  AS sigle,
		            CAST('Moyenne cumulative' as varchar(45))  AS titre,
			                SUM(credits ) OVER (order by REQ2.trimc asc rows between unbounded preceding and current row) CREDITS
					            FROM REQ2
						                left join notes n on (REQ2.trimc = n.trimc)
								            left join MOYENNE_PAR_TRIM mpt on (mpt.trimc = n.trimc)
									                WHERE n.matricule = $1 AND n.prog = $2
											            GROUP BY REQ2.trimc, credits, TO_CHAR(mpt.MOYENNE_PAR_TRIM  , '999.999')
												                    ),

   SOMME_CUMULATIVE  AS
        (SELECT REQ3.trimc,
	          SUM(scptmpv.SUM_CREDITS_PAR_TRIM_MULT_PAR_VALEUR) OVER (order by REQ3.trimc asc rows between unbounded preceding and current row)  AS SOMME_CUMULATIVE,
		                 REQ3.CREDITS
				                  FROM REQ3
						                     left join SUM_CREDITS_PAR_TRIM_MULT_PAR_VALEUR  scptmpv on (scptmpv.trimc = REQ3.trimc )
								                           GROUP BY REQ3.trimc, REQ3.CREDITS, scptmpv.SUM_CREDITS_PAR_TRIM_MULT_PAR_VALEUR
											                           ORDER BY REQ3.trimc
														                             ),

    MOYENNE_CUMULATIVE  AS
          (SELECT REQ3.trimc,
	             ROUND(sc.SOMME_CUMULATIVE/sc.CREDITS,3) AS MOYENNE_CUMULATIVE

  FROM REQ3
      left join  SOMME_CUMULATIVE  sc ON (sc.trimc = REQ3.trimc)

   ORDER BY REQ3.trimc
        ),

  REQ4 AS
      ( SELECT REQ3.*, TO_CHAR(mc.MOYENNE_CUMULATIVE , '999.999') as note
            FROM REQ3
	            INNER JOIN MOYENNE_CUMULATIVE mc ON (mc.trimc = REQ3.trimc)
		              )

  SELECT REQ1.* FROM REQ1
      UNION
            SELECT REQ2.* FROM REQ2, REQ1
	            WHERE REQ2.trimc = REQ1.trimc
		              AND REQ2.CREDITS IS NOT NULL
			                  UNION
					                SELECT REQ4.* FROM REQ4, REQ2, REQ1
							                WHERE REQ4.trimc = REQ1.trimc AND REQ4.trimc = REQ2.trimc
									                  AND REQ2.CREDITS IS NOT NULL
											                      ORDER BY trimc , sigle ASC
													      --                     ;





$$ language 'sql';
select * from releve_test1('51780', '117510');
rollback;
