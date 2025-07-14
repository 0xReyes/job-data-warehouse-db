-- V1: Create the main table

CREATE TABLE job_postings (
    id BIGSERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    link TEXT NOT NULL UNIQUE,
    snippet TEXT,
    date_posted DATE,
    position_on_page INTEGER,
    company_name VARCHAR(255),
    location TEXT,
    description TEXT,
    employment_type VARCHAR(50),
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    dateupdated TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Create an index on company_name and date_posted for faster lookups.
CREATE INDEX idx_job_postings_company_name ON job_postings(company_name);
CREATE INDEX idx_job_postings_date_posted ON job_postings(date_posted);