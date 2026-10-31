-- Uppgift 3 - Datadrivna beslut
-- The_Skool-Ansökningsomgång 2025

-- Fråga 1: Beviljandegrad per utbildningsområde
-- Vilka utbildningsområden har högst andel
-- beviljade ansökningar?
-- Motivering: The Skool vill identifiera områden
-- där chansen att få en ansökan beviljad är hög.

PROMPT
PROMPT === Fråga 1: Vilka utbildningsområden har högst andel beviljade ansökningar? ===
PROMPT

SELECT
    utbildningsomrade,
    COUNT(*) AS antal_ansokningar,
    SUM(CASE WHEN beslut = 'Beviljad' THEN 1 ELSE 0 END)
        AS antal_beviljade,
    ROUND(
        100.0 * SUM(CASE WHEN beslut = 'Beviljad' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS beviljandegrad_procent
FROM ansokningar
GROUP BY utbildningsomrade
ORDER BY beviljandegrad_procent DESC;


-- Fråga 2: Distansutbildning vs platsbunden
-- Vilken studieform har högst beviljandegrad?
-- Motivering: The Skool kan bedriva både distans-
-- och platsbundna utbildningar. Resultatet kan
-- hjälpa dem att välja lämplig studieform.

PROMPT
PROMPT === Fråga 2: Vilken studieform har högst beviljandegrad? ===
PROMPT

SELECT
    studieform,
    COUNT(*) AS antal_ansokningar,
    SUM(CASE WHEN beslut = 'Beviljad' THEN 1 ELSE 0 END)
        AS antal_beviljade,
    ROUND(
        100.0 * SUM(CASE WHEN beslut = 'Beviljad' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS beviljandegrad_procent
FROM ansokningar
GROUP BY studieform
ORDER BY beviljandegrad_procent DESC;


-- Fråga 3: Smala utbildningsområden
-- Vilka utbildningsområden har få ansökningar
-- men samtidigt hög beviljandegrad?
-- Motivering: The Skool vill hitta mindre
-- konkurrensutsatta områden med goda möjligheter
-- att få sina ansökningar beviljade.

PROMPT
PROMPT === Fråga 3: Vilka utbildningsområden har få ansökningar men samtidigt hög beviljandegrad? ===
PROMPT

SELECT
    utbildningsomrade,
    COUNT(*) AS antal_ansokningar,
    SUM(CASE WHEN beslut = 'Beviljad' THEN 1 ELSE 0 END)
        AS antal_beviljade,
    ROUND(
        100.0 * SUM(CASE WHEN beslut = 'Beviljad' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS beviljandegrad_procent
FROM ansokningar
GROUP BY utbildningsomrade
HAVING COUNT(*) BETWEEN 5 AND 30
ORDER BY beviljandegrad_procent DESC;

-- LLM was used as a brainstorming partner to formulate
-- relevant questions and assist with SQL query design.
-- The questions were formulated based on the stakeholder
-- interview and shared class notes on Discord.
-- After completing the script, I executed it against the
-- database. The results are shown as screenshots in the
-- PowerPoint presentation located in the presentation/ folder.
