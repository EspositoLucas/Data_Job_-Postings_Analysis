/*
Question: What are the most in-demand skills for data analysts?
- Join job postings to inner join table similar to query 2
- Identify the top 5 in-demand skills for a data analyst.
- Focus on all job postings.
- Retrieves the top 5 skills with the highest demand in the job market, 
  providing insights into the most valuable skills for job seekers.
*/

select sd.skills,count(sjd.job_id) AS demand_count
from job_postings_fact jpf
join skills_job_dim sjd ON jpf.job_id = sjd.job_id
join skills_dim sd ON sjd.skill_id = sd.skill_id
where jpf.job_title_short = 'Data Analyst'
group by sd.skills
order by demand_count desc 
limit 5

/*
Here's the breakdown of the most demanded skills for data analysts in 2023

- SQL and Excel remain fundamental, emphasizing the need for strong foundational skills in data processing and spreadsheet manipulation.
- Programming and Visualization Tools like Python, Tableau, and Power BI are essential, pointing towards the increasing importance of technical skills in data storytelling and decision support.


RESULTS
=======

[
  {
    "skills": "sql",
    "demand_count": "92628"
  },
  {
    "skills": "excel",
    "demand_count": "67031"
  },
  {
    "skills": "python",
    "demand_count": "57326"
  },
  {
    "skills": "tableau",
    "demand_count": "46554"
  },
  {
    "skills": "power bi",
    "demand_count": "39468"
  }
]


*/



