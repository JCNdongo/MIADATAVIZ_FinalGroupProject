CREATE TABLE COVID (
    "Country_Code" VARCHAR(10)   NOT NULL,
    "Country_Name" VARCHAR   NOT NULL,
    "Continent" VARCHAR   NOT NULL,
    "Population" INT   NOT NULL,
    "people_fully_vaccinated" FLOAT   NOT NULL,
    "median_age" FLOAT   NOT NULL,
    "total_cases" FLOAT   NOT NULL,
    "total_deaths" FLOAT   NOT NULL,
    "life_expectancy" FLOAT   NOT NULL,
    "human_development_index" FLOAT   NOT NULL,
    "aged_65_older" FLOAT   NOT NULL,
    "aged_70_older" FLOAT   NOT NULL,
    "gdp_per_capita" FLOAT   NOT NULL,
    "cardiovasc_death_rate" FLOAT   NOT NULL,
    "diabetes_prevalence" FLOAT   NOT NULL,
    "total_boosters" FLOAT   NOT NULL,
    "reproduction_rate" FLOAT   NOT NULL,
    CONSTRAINT "pk_COVID" PRIMARY KEY (
        "Country_Code"
     )
);
CREATE TABLE Trade (
    "Country_Code" VARCHAR(10)   NOT NULL,
    "Income" VARCHAR(50)   NOT NULL,
    "Income_Code" INT   NOT NULL,
    "Agency_Name" VARCHAR(100)   NOT NULL,
    "Agency_Acronym" VARCHAR(20)   NOT NULL,
    "agency_code" INT   NOT NULL,
    CONSTRAINT "pk_Trade" PRIMARY KEY (
        "Country_Code"
     )
);
CREATE TABLE Gender (
    "Country_Code" VARCHAR(10)   NOT NULL,
    "passport" INT   NOT NULL,
    "head_of_household" INT   NOT NULL,
    "housing_choice" INT   NOT NULL,
    "job" INT   NOT NULL,
    "divorce_choice" INT   NOT NULL,
    "bank_account" INT   NOT NULL,
    "business_ownership" INT   NOT NULL,
    "contract_signature" INT   NOT NULL,
    "domestic_travel" INT   NOT NULL,
    "international_travel" INT   NOT NULL,
    "work_at_night" INT   NOT NULL,
    "dangerous_job" INT   NOT NULL,
    "industrial_job" INT   NOT NULL,
    "remarry" INT   NOT NULL,
    CONSTRAINT "pk_Gender" PRIMARY KEY (
        "Country_Code"
     )
);

CREATE TABLE COVID_FinalProject as
SELECT
    covid."Country_Code",
    covid."Country_Name",
    covid."Continent",
    covid."Population",
    covid."people_fully_vaccinated",
    covid."median_age",
    covid."total_cases",
    covid."total_deaths",
    covid."life_expectancy",
    covid."human_development_index",
    covid."aged_65_older",
    covid."aged_70_older",
    covid."gdp_per_capita",
    covid."cardiovasc_death_rate",
    covid."diabetes_prevalence",
    covid."total_boosters",
    covid."reproduction_rate",
    trade."Income",
    trade."Income_Code",
    trade."Agency_Name",
    trade."Agency_Acronym",
    trade."agency_code",
    gender."passport",
    gender."head_of_household",
    gender."housing_choice",
    gender."job",
    gender."divorce_choice",
    gender."bank_account",
    gender."business_ownership",
    gender."contract_signature",
    gender."domestic_travel",
    gender."international_travel",
    gender."work_at_night",
    gender."dangerous_job",
    gender."industrial_job",
    gender."remarry"
FROM COVID 
JOIN Trade ON covid."Country_Code" = trade."Country_Code"
JOIN Gender ON covid."Country_Code" = gender."Country_Code";

SELECT * FROM COVID_FinalProject
LIMIT 5
