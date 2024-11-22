/* SELECT Date,Google,Baidu FROM 'raw_data/search_engine_data.csv'
ORDER BY Date DESC
LIMIT 3; */
SELECT Header, Value
FROM (
    SELECT 'Date' AS Header, Date AS Value
    FROM 'raw_data/search_engine_data.csv'
    WHERE Date = '2009-01'

    UNION ALL

    SELECT Header, Value
    FROM (
        SELECT *
        FROM 'path/to/search_engine_data.csv'
        WHERE Date = '2009-01'
    ) UNPIVOT (Value FOR Header IN (
        Google, bing, "Yahoo!", Baidu, YANDEX, "YANDEX RU",
        "Ask Jeeves", DuckDuckGo, Naver, AOL, Haosou, Sogou, Babylon,
        Shenma, Seznam, Conduit, MSN, "Mail.ru", Ecosia, Webcrawler,
        Daum, CocCoc, "StartPagina (Google)", "AVG Search", SweetIM,
        "Windows Live", Other
    ))
)
ORDER BY Value DESC;