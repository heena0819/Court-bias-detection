CREATE TABLE defendants (
    defendant_id INT PRIMARY KEY,
    name TEXT,
    race TEXT,
    gender TEXT,
    age INT
);

CREATE TABLE judges (
    judge_id INT PRIMARY KEY,
    name TEXT,
    court_location TEXT
);

CREATE TABLE cases (
    case_id INT PRIMARY KEY,
    defendant_id INT,
    judge_id INT,
    crime_type TEXT,
    sentence_length INT,
    verdict TEXT,
    case_date DATE,
    FOREIGN KEY (defendant_id) REFERENCES defendants(defendant_id),
    FOREIGN KEY (judge_id) REFERENCES judges(judge_id)
);