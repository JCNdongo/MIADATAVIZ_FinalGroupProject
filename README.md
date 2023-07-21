# MIADATAVIZ_FinalGroupProject
Final Group Project: COVID, Gender &amp; Foreign Aid

Objective & Research Questions:


Raw data Retrieval (2020)

1. We created a StarterFiles folder for our raw data and retrieved the following for the year 2020:

2. COVID Data from Our World in Data downloaded in a .csv format from https://ourworldindata.org/covid-vaccinations. Retrieved data was saved as "COVID_OurWorldDataset.csv" in the StarterFiles folder.

3. Gender Data from the World Bank downloaded in a .csv format from https://genderdata.worldbank.org/#countries. Retrieved data was saved as "WorldBankGenderData2020" in the StarterFiles folder. 

4. U.S. Trade Data from the United States Agency for International Development retrieved from a free API (https://data.usaid.gov/resource/i37f-rwxd.json) obtained from https://dev.socrata.com/foundry/data.usaid.gov/i37f-rwxd

5. We created a Python file (Foreign_Aid_API.ipynb) in which we used the API to retrieve the U.S. Trade Data and exported the data as a .csv file that we named "foreign_aid_2020_aggregated.csv" and saved it in the StarterFiles folder.



Data Preparation:

1. We cleaned all three files to remove missing data and ensure uniformity and saved them respectively as "COVID.csv", "Gender.csv", and "Trade.csv" in a different folder named "CleanData".
  
2. Using QuickDBD and PgAdmin4, we coded a SQL script (COVID_FinalProject_SQL_Code) to merge all three files into one main csv file named "COVID_FinalProject.csv" which we saved in the"CleanData" folder.

![COVID_FinalProject_SQL_Diagram](https://github.com/JCNdongo/MIADATAVIZ_FinalGroupProject/assets/120480912/e85d235c-279a-4ef0-9000-894018998ee3)

4. We retrieved the "COVID_FinalProject.csv" main file in Python






