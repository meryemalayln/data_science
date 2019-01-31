SELECT count(*)
FROM default.usage_lexispsl_parquet
WHERE dttm_gmt
    BETWEEN timestamp '2018-11-01 00:00:00'
        AND timestamp '2018-11-10 23:59:59'
        AND lower(userdocument) = 'true'
        AND searchterm is NOT NULL;
        
SELECT userdocument,
         count(*)
FROM default.usage_lexispsl_parquet
WHERE dttm_gmt
    BETWEEN timestamp '2018-11-01 00:00:00'
        AND timestamp '2018-11-10 23:59:59'
GROUP BY  userdocument;

SELECT count(*)
FROM default.usage_lexispsl_parquet
WHERE dttm_gmt
    BETWEEN timestamp '2018-11-01 00:00:00'
        AND timestamp '2018-11-10 23:59:59';
        
SELECT user_id,
         lndelivery,
         count(*) AS number
FROM default.usage_lexispsl_parquet
WHERE dttm_gmt
    BETWEEN timestamp '2018-11-01 00:00:00'
        AND timestamp '2018-11-10 23:59:59'
        AND lndelivery is NOT null
        AND lndelivery= 'PRINT'
GROUP BY  user_id, lndelivery
ORDER BY  user_id;

SELECT user_id,
         count(distinct searchterm)
FROM default.usage_lexispsl_parquet
WHERE dttm_gmt
    BETWEEN timestamp '2018-11-01 00:00:00'
        AND timestamp '2018-11-10 23:59:59'
GROUP BY  user_id
ORDER BY  user_id;

SELECT user_id,
         searchterm
FROM default.usage_lexispsl_parquet
WHERE dttm_gmt
    BETWEEN timestamp '2018-11-01 00:00:00'
        AND timestamp '2018-11-10 23:59:59'
        AND user_id = '00D4040000005C38OA' ;
		
		