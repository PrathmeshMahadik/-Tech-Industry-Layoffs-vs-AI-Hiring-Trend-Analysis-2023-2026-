-- Tech Industry Layoffs vs AI Hiring Trend Analysis
-- Database Analysis Queries

USE layoffs_ai_hiring_analysis;


-- 1. View complete dataset
SELECT *
FROM layoffs_ai_hiring_data;


-- 2. Total number of records
SELECT COUNT(*) AS Total_Rows
FROM layoffs_ai_hiring_data;


-- 3. Available years
SELECT DISTINCT Year
FROM layoffs_ai_hiring_data
ORDER BY Year;


-- 4. Total Layoffs
SELECT
    SUM(Layoffs) AS Total_Layoffs
FROM layoffs_ai_hiring_data;


-- 5. Total AI Hiring
SELECT
    SUM(AI_Hiring) AS Total_AI_Hiring
FROM layoffs_ai_hiring_data;


-- 6. Total Tech Hiring
SELECT
    SUM(Tech_Hiring) AS Total_Tech_Hiring
FROM layoffs_ai_hiring_data;


-- 7. Year-wise Layoffs
SELECT
    Year,
    SUM(Layoffs) AS Total_Layoffs
FROM layoffs_ai_hiring_data
GROUP BY Year
ORDER BY Year;


-- 8. Year-wise AI Hiring
SELECT
    Year,
    SUM(AI_Hiring) AS Total_AI_Hiring
FROM layoffs_ai_hiring_data
GROUP BY Year
ORDER BY Year;


-- 9. Year-wise Tech Hiring
SELECT
    Year,
    SUM(Tech_Hiring) AS Total_Tech_Hiring
FROM layoffs_ai_hiring_data
GROUP BY Year
ORDER BY Year;


-- 10. Year-wise AI Job Growth
SELECT
    Year,
    AVG(AI_Job_Growth_Pct) AS Average_AI_Job_Growth
FROM layoffs_ai_hiring_data
GROUP BY Year
ORDER BY Year;


-- 11. Industry-wise Layoffs
SELECT
    Industry,
    SUM(Layoffs) AS Total_Layoffs
FROM layoffs_ai_hiring_data
GROUP BY Industry
ORDER BY Total_Layoffs DESC;


-- 12. Industry-wise AI Hiring
SELECT
    Industry,
    SUM(AI_Hiring) AS Total_AI_Hiring
FROM layoffs_ai_hiring_data
GROUP BY Industry
ORDER BY Total_AI_Hiring DESC;


-- 13. Top 10 Companies by Layoffs
SELECT
    Company,
    SUM(Layoffs) AS Total_Layoffs
FROM layoffs_ai_hiring_data
GROUP BY Company
ORDER BY Total_Layoffs DESC
LIMIT 10;


-- 14. Top 10 Companies by AI Hiring
SELECT
    Company,
    SUM(AI_Hiring) AS Total_AI_Hiring
FROM layoffs_ai_hiring_data
GROUP BY Company
ORDER BY Total_AI_Hiring DESC
LIMIT 10;


-- 15. Location-wise Layoffs
SELECT
    Location,
    SUM(Layoffs) AS Total_Layoffs
FROM layoffs_ai_hiring_data
GROUP BY Location
ORDER BY Total_Layoffs DESC;


-- 16. AI-related Layoffs Analysis
SELECT
    AI_Related_Layoff,
    COUNT(*) AS Total_Records,
    SUM(Layoffs) AS Total_Layoffs
FROM layoffs_ai_hiring_data
GROUP BY AI_Related_Layoff;


-- 17. Year-wise AI-related Layoffs
SELECT
    Year,
    AI_Related_Layoff,
    SUM(Layoffs) AS Total_Layoffs
FROM layoffs_ai_hiring_data
GROUP BY Year, AI_Related_Layoff
ORDER BY Year;


-- 18. Year-wise Layoff Rate
SELECT
    Year,
    AVG(Layoff_Rate_Pct) AS Average_Layoff_Rate
FROM layoffs_ai_hiring_data
GROUP BY Year
ORDER BY Year;


-- 19. Company-wise complete analysis
SELECT
    Company,
    SUM(Layoffs) AS Total_Layoffs,
    SUM(AI_Hiring) AS Total_AI_Hiring,
    SUM(Tech_Hiring) AS Total_Tech_Hiring
FROM layoffs_ai_hiring_data
GROUP BY Company
ORDER BY Total_AI_Hiring DESC
LIMIT 10;


-- 20. Complete Year-wise Analysis
SELECT
    Year,
    SUM(Layoffs) AS Total_Layoffs,
    SUM(AI_Hiring) AS Total_AI_Hiring,
    SUM(Tech_Hiring) AS Total_Tech_Hiring,
    AVG(AI_Job_Growth_Pct) AS Average_AI_Job_Growth,
    AVG(Layoff_Rate_Pct) AS Average_Layoff_Rate
FROM layoffs_ai_hiring_data
GROUP BY Year
ORDER BY Year;