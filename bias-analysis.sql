-- Average sentence by race
SELECT d.race, AVG(c.sentence_length) AS avg_sentence_months
FROM defendants d
JOIN cases c ON d.defendant_id = c.defendant_id
WHERE c.verdict = 'Guilty'
GROUP BY d.race;

-- Conviction rate by gender
SELECT d.gender,
       COUNT(*) FILTER (WHERE c.verdict = 'Guilty') * 100.0 / COUNT(*) AS conviction_rate
FROM defendants d
JOIN cases c ON d.defendant_id = c.defendant_id
GROUP BY d.gender;

-- Judge-wise sentence disparities for the same crime
SELECT j.name AS judge, c.crime_type, AVG(c.sentence_length) AS avg_sentence
FROM cases c
JOIN judges j ON c.judge_id = j.judge_id
WHERE c.verdict = 'Guilty'
GROUP BY j.name, c.crime_type
ORDER BY c.crime_type, avg_sentence DESC;

-- Sentence trends over time
SELECT EXTRACT(YEAR FROM case_date) AS year, AVG(sentence_length) AS avg_sentence
FROM cases
WHERE verdict = 'Guilty'
GROUP BY year
ORDER BY year;