 SELECT Date,Google,Baidu FROM 'raw_data/search_engine_data.csv'
WHERE Date = '08-2024'
ORDER BY Google DESC
LIMIT 3;