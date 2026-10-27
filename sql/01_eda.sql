-- Uppgift 1 - Grundläggande EDA

-- 1a) Antal ansokningar per utbildningsomrade


SELECT
    utbildningsomrade,
    COUNT(*) AS antal_ansokningar
FROM ansokningar
GROUP BY utbildningsomrade
ORDER BY antal_ansokningar DESC;

-- 1b) Antal beviljade ansokningar per utbildningsomrade


SELECT
    utbildningsomrade,
    COUNT(*) AS antal_beviljade
FROM ansokningar
WHERE beslut = 'Beviljad'
GROUP BY utbildningsomrade
ORDER BY antal_beviljade DESC;

-- 1c) Antal avslagna ansokningar per utbildningsomrade


SELECT
    utbildningsomrade,
    COUNT(*) AS antal_avslag
FROM ansokningar
WHERE beslut = 'Avslag'
GROUP BY utbildningsomrade
ORDER BY antal_avslag DESC;

-- 1d) Antal beviljade ansokningar per utbildningsnamn inom Data/IT


SELECT
    utbildningsnamn,
    COUNT(*) AS antal_beviljade
FROM ansokningar
WHERE beslut = 'Beviljad'
    AND utbildningsomrade = 'Data/IT'
GROUP BY utbildningsnamn
ORDER BY antal_beviljade DESC;


-- 1e) Antal avslagna ansokningar per utbildningsnamn inom Data/IT


SELECT
    utbildningsnamn,
    COUNT(*) AS antal_avslag
FROM ansokningar
WHERE beslut = 'Avslag'
    AND utbildningsomrade = 'Data/IT'
GROUP BY utbildningsnamn
ORDER BY antal_avslag DESC;

-- 1f) Antal beviljade ansokningar per anordnare och utbildningsnamn inom Data/IT


SELECT
    utbildningsanordnare_administr,
    utbildningsnamn,
    COUNT(*) AS antal_beviljade
FROM ansokningar
WHERE beslut = 'Beviljad'
    AND utbildningsomrade = 'Data/IT'
GROUP BY
    utbildningsanordnare_administr,
    utbildningsnamn
ORDER BY antal_beviljade DESC;

-- 1g) Topp 5 lan efter antal beviljade ansokningar


SELECT
    lan,
    COUNT(*) AS antal_beviljade
FROM ansokningar
WHERE beslut = 'Beviljad'
GROUP BY lan
ORDER BY antal_beviljade DESC
FETCH FIRST 5 ROWS ONLY;

-- 1h) Andel distans och bundna utbildningar per utbildningsomrade


SELECT
    utbildningsomrade,
    ROUND(
        100.0 * COUNT(CASE WHEN studieform = 'Distans' THEN 1 END)
        / COUNT(*), 2
    ) AS andel_distans,
    ROUND(
        100.0 * COUNT(CASE WHEN studieform = 'Bunden' THEN 1 END)
        / COUNT(*), 2
    ) AS andel_bunden
FROM ansokningar
GROUP BY utbildningsomrade
ORDER BY utbildningsomrade;

-- 1i) Antal utbildningar som innehaller ordet AI


SELECT
    COUNT(*) AS antal_ai_utbildningar
FROM ansokningar
WHERE UPPER(utbildningsnamn) LIKE '%AI%';

-- This was all questions in uppgift 1 - Grundläggande EDA
