Court Case Bias Detection

This project explores simulated court case data to detect potential racial, gender, or judge-based biases in sentencing and verdict outcomes using SQL.

Dataset

Simulated data includes:
- **Defendants**: Demographics
- **Judges**: Identity & Court Locations
- **Cases**: Crime type, sentence length, and verdicts

Schema

- **defendants** (id, name, race, gender, age)
- **judges** (id, name, court_location)
- **cases** (id, defendant_id, judge_id, crime_type, sentence_length, verdict, case_date)

Key Queries

- Average sentence by race
- Conviction rate by gender
- Judge-wise disparities for the same crime
- Sentence length trends over years

Insights (Sample)

- Defendants of Race X received 30% longer sentences for theft on average.
- One judge consistently gives higher-than-average sentences for fraud.
- Conviction rate for males: 80%, for females: 60%.

Tools Used

- SQL (PostgreSQL / SQLite compatible)
- Data simulated for educational analysis
