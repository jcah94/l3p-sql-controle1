
--1)
SELECT chb_num
FROM t_chambre_chb 
WHERE chb_num not in (SELECT chb_num FROM t_planning_pln
                        WHERE pln_jour BETWEEN '2000-01-11' 
                        AND '2000-01-14' 
                        AND pln_libre = 'FALSE'); 


--2)
SELECT chb.chb_num, COALESCE(pln_libre, 'True') AS pln_libre
FROM   t_chambre_chb chb
       LEFT OUTER JOIN t_planning_pln pln
            ON chb.chb_num = pln.chb_num 
               AND  pln_jour = '2000-01-13' ;


