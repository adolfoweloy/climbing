CREATE SEQUENCE IF NOT EXISTS question_seq START WITH 1;

CREATE TABLE IF NOT EXISTS question (
	id INTEGER DEFAULT NEXTVAL('question_seq') PRIMARY KEY,
	description VARCHAR(500) NOT NULL
);
