-- data cleaning
select *
from layoffs;
-- Remove duplicates 
-- standardize the data 
-- null values or blank values
-- remove any columns 

create table layoffs_staging 
like layoffs;

select *
from layoffs_staging;

insert layoffs_staging 
select *
from layoffs; 


select *, 
row_number() over(
partition by company, industry, total_laid_off, percentage_laid_off, `date`) as row_num
from layoffs_staging;

with duplicate_cte as 
(
select *, 
row_number() over(
partition by company, location, industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) as row_num
from layoffs_staging
)
select *
from duplicate_cte
where row_num > 1;



select *
from layoffs_staging
where company = 'casper';

with duplicate_cte as 
(
select *, 
row_number() over(
partition by company, location, industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) as row_num
from layoffs_staging
)
delete
from duplicate_cte
where row_num > 1;



















