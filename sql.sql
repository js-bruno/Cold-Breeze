SELECT
  * 
FROM 
  ctes cte 
WHERE 
  cte.sefaz_return_code in (228, 204, 203, 227)
limit 50
