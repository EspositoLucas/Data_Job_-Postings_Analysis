COPY company_dim 
FROM 'C:\Users\Public\Documents\dataset\company_dim.csv' 
DELIMITER ',' CSV HEADER; 

COPY job_postings_fact 
FROM 'C:\Users\Public\Documents\dataset\job_postings_fact.csv' 
DELIMITER ',' CSV HEADER; 

COPY skills_dim 
FROM 'C:\Users\Public\Documents\dataset\skills_dim.csv'
DELIMITER ',' CSV HEADER; 

COPY skills_job_dim
FROM 'C:\Users\Public\Documents\dataset\skills_job_dim.csv' 
DELIMITER ',' CSV HEADER; 