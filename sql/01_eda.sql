-- Uppgift 1 - Grundläggande EDA

-- 1a) Antal ansokningar per utbildningsomrade

PROMPT
PROMPT === 1a) Antal ansökningar per utbildningsområde, sorterat på flest ansökningar ===
PROMPT

SELECT
    utbildningsomrade,
    COUNT(*) AS antal_ansokningar
FROM ansokningar
GROUP BY utbildningsomrade
ORDER BY antal_ansokningar DESC;

-- 1b) Antal beviljade ansokningar per utbildningsomrade

PROMPT
PROMPT === 1b) Antal BEVILJADE ansökningar per utbildningsområde ===
PROMPT

SELECT
    utbildningsomrade,
    COUNT(*) AS antal_beviljade
FROM ansokningar
WHERE beslut = 'Beviljad'
GROUP BY utbildningsomrade
ORDER BY antal_beviljade DESC;

-- 1c) Antal avslagna ansokningar per utbildningsomrade

PROMPT
PROMPT === 1c) Antal AVSLAGNA ansökningar per utbildningsområde ===
PROMPT

SELECT
    utbildningsomrade,
    COUNT(*) AS antal_avslag
FROM ansokningar
WHERE beslut = 'Avslag'
GROUP BY utbildningsomrade
ORDER BY antal_avslag DESC;

-- 1d) Antal beviljade ansokningar per utbildningsnamn inom Data/IT

PROMPT
PROMPT === 1d) Antal BEVILJADE ansökningar per utbildningsnamn inom Data/IT ===
PROMPT

SELECT
    utbildningsnamn,
    COUNT(*) AS antal_beviljade
FROM ansokningar
WHERE beslut = 'Beviljad'
    AND utbildningsomrade = 'Data/IT'
GROUP BY utbildningsnamn
ORDER BY antal_beviljade DESC;


-- 1e) Antal avslagna ansokningar per utbildningsnamn inom Data/IT

PROMPT
PROMPT === 1e) Antal AVSLAGNA ansökningar per utbildningsnamn inom Data/IT ===
PROMPT

SELECT
    utbildningsnamn,
    COUNT(*) AS antal_avslag
FROM ansokningar
WHERE beslut = 'Avslag'
    AND utbildningsomrade = 'Data/IT'
GROUP BY utbildningsnamn
ORDER BY antal_avslag DESC;

-- 1f) Antal beviljade ansokningar per anordnare och utbildningsnamn inom Data/IT

PROMPT
PROMPT === 1f) Antal BEVILJADE ansökningar per utbildningsanordnare och utbildningsnamn inom Data/IT ===
PROMPT

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

PROMPT
PROMPT === 1g) Topp 5 län efter antal BEVILJADE ansökningar ===
PROMPT

SELECT
    lan,
    COUNT(*) AS antal_beviljade
FROM ansokningar
WHERE beslut = 'Beviljad'
GROUP BY lan
ORDER BY antal_beviljade DESC
FETCH FIRST 5 ROWS ONLY;

-- 1h) Andel distans och bundna utbildningar per utbildningsomrade

PROMPT
PROMPT === 1h) Andel distans och bundna utbildningar per utbildningsområde ===
PROMPT

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

PROMPT
PROMPT === 1i) Antal utbildningar som innehåller ordet AI ===
PROMPT

SELECT
    COUNT(*) AS antal_ai_utbildningar
FROM ansokningar
WHERE UPPER(utbildningsnamn) LIKE '%AI%';

-- End of task 1 - Exploratory Data Analysis (EDA)1 - Grundläggande EDA
