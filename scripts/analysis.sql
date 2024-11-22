SELECT Header,Value
FROM (
SELECT * FROM 'raw_data/search_engine_data.csv'
WHERE Date = '2024-08'
)
UNPIVOT(Value FOR Header IN ( Google, bing, "Yahoo!", Baidu, YANDEX, "YANDEX RU",
    "Ask Jeeves", DuckDuckGo, Naver, AOL, Haosou, Sogou, Babylon,
    Shenma, Seznam, Conduit, MSN, "Mail.ru", Ecosia, Webcrawler,
    Daum, CocCoc, "StartPagina (Google)", "AVG Search", SweetIM,
    "Windows Live", Other))
ORDER BY Value DESC;