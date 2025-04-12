-- Insert into defendants
INSERT INTO defendants (defendant_id, name, race, gender, age) VALUES
(1, 'John Doe', 'Black', 'Male', 29),
(2, 'Jane Smith', 'White', 'Female', 34),
(3, 'Carlos Ruiz', 'Hispanic', 'Male', 41),
(4, 'Aisha Khan', 'Asian', 'Female', 22),
(5, 'Robert Brown', 'Black', 'Male', 37),
(6, 'Emily Davis', 'White', 'Female', 28);

-- Insert into judges
INSERT INTO judges (judge_id, name, court_location) VALUES
(1, 'Judge Judy', 'New York'),
(2, 'Judge Thompson', 'California'),
(3, 'Judge Lee', 'Texas');

-- Insert into cases
INSERT INTO cases (case_id, defendant_id, judge_id, crime_type, sentence_length, verdict, case_date) VALUES
(1, 1, 1, 'Theft', 24, 'Guilty', '2020-06-15'),
(2, 2, 1, 'Theft', 12, 'Guilty', '2020-06-20'),
(3, 3, 2, 'Assault', 36, 'Guilty', '2021-01-10'),
(4, 4, 2, 'Fraud', 18, 'Not Guilty', '2021-03-05'),
(5, 5, 3, 'Theft', 30, 'Guilty', '2021-08-25'),
(6, 6, 3, 'Theft', 10, 'Guilty', '2022-02-12');