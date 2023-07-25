# Final Group Project: The impact of COVID on society #

## Objective & Research Questions: ##

The pandemic greatly impacted society in a lot of ways, causing millions of deaths and exacerbating some societal ills and inequalities.  Our analysis is based on data from 2020 only, and our research questions are the following:

1. While illnesses resulting from the Coronavirus caused many deaths, how may socioeconomic factors have contributed to those fatalities, such as income, population, vaccination rates, age, etc...?

2. Unfortunately, due to lockdowns during the pandemic, cases of domestic violence increased worldwide, with women making up the majority of the victims (Mineo, 2022; unwomen.org). Could we predict some improvments on gender equality post-pandemic?

For this project, we used supervised learning to address our first question and analyze the impact of some socioeconomic factors on COVID deaths worldwide, and unsupervised learning for our second question as we predicted the impact of the pandemic on gender equality through divorce and employment. 


## Tools Used: ##
API, SQL, Python Pandas, Machine Learning, Tableau

## Raw Data Retrieval: ## 

1. We created a StarterFiles folder for our raw data and retrieved the following for the year 2020:

2. COVID Data from Our World in Data downloaded in a .csv format from https://ourworldindata.org/covid-vaccinations. The retrieved data was saved as "COVID_OurWorldDataset.csv" in the StarterFiles folder. This dataset contained information on several countries and provided many variables tied to COVID such as total number of cases, deaths, country names and codes, age-related variables etc...

3. Gender Data from the World Bank downloaded in a .csv format from https://genderdata.worldbank.org/#countries. The retrieved data was saved as "WorldBankGenderData2020" in the StarterFiles folder. This dataset provided variables related to gender equity in several countries.

4. U.S. Trade Data from the United States Agency for International Development retrieved from a free API (https://data.usaid.gov/resource/i37f-rwxd.json) obtained from https://dev.socrata.com/foundry/data.usaid.gov/i37f-rwxd. The retrieved data was saved as "foreign_aid_2020_aggregated.csv" in the StarterFiles folder. This data provided us with income levels for several countries and information on US foreign assistance to those countries. 

5. We created a Python file (Foreign_Aid_API.ipynb) in which we used the API to retrieve the U.S. Trade Data and exported the data as a .csv file that we named "foreign_aid_2020_aggregated.csv" and saved it in the StarterFiles folder.


## Data Preparation: ##

1. We cleaned the files by removing missing data and ensuring uniformity by trimming the data to the same 141 countries for all three files. We then saved them respectively as "COVID.csv", "Gender.csv", and "Trade.csv" in a different folder named "CleanData".
  
2. Using QuickDBD and PgAdmin4, we coded a SQL script (COVID_FinalProject_SQL_Code) to merge all three files into one main csv file named "COVID_FinalProject.csv" which we saved in the"CleanData" folder.

![COVID_FinalProject_SQL_Diagram](https://github.com/JCNdongo/MIADATAVIZ_FinalGroupProject/assets/120480912/e85d235c-279a-4ef0-9000-894018998ee3)


## Data Analysis 1: Supervised Learning: ##

We retrieved the "COVID_FinalProject.csv" main file in Python, and applied supervised machine learning to do the following predictions and comparisons: 

1. Three Independent Factors: In this code, we are performing a multivariate linear regression analysis to understand how the total number of deaths (y) in different countries is releated to three factors: median age, life expectancy, and GDP per capita (X). The regression model is fitted to data, and the summary of the analysis, including coefficients and statistical measures, is printed for evaluation. 

2. Total Deaths: This code uses a k-Nearest Neighbors (k-NN) algorithm to predict the total number of deaths from COVID-19 in different countries. It does this by looking at two factors: the country’s population and the total number of COVID-19 cases. The code then calculates how accurate the predictions are and creates a scatter plot to visualize the predicted values compared to the actual death rates. By comparing the positions of the blue and red dots, we can see how well the model’s predictions match the actual data. If the dots are close to the diagonal line, it means the model’s predictions are accurate.

3. Vaccinated vs. Unvaccinated: In this code, we are looking at how COVID-19 vaccination rates (percentage of vaccinated and not vaccinated people) are related to the total number of deaths in different countries. We use regression models to make predictions on the number of deaths based on vaccination rates, and then create scatter plots to visualize how well the predictions match the actual data points. This helps us understand if there is any connection between vaccination rates and the number of COVID-19 deaths. The regression model used was a simple linear regression model, that was chosen due to the more analytical aspect of the question. A problem that was encountered was overfitting in the plots. 

4. Covid Cases & GDP per Capita: In this code, we are trying to understand if there is a relationship between a country's GDP per capita and the total number of COVID-19 cases it has. We use a linear regression model to find the best-fitting line that connects GDP per capita to COVID-19 cases, and then we plot the actual data points and the line to see if there is any connection between the two.


## Data Analysis 2: Unsupervised learning ## 

We applied machine learning techniques to the "COVID_FinalProject.csv" file and created models to forecast the impact of COVID on gender equality after the pandemic. Our areas of prediction were on:

1. Women having an equal choice to divorce as men: Our analysis and results are documented in the file "ML_GenderEQ_Divorce.ipynb" file. Our model predicted women's ability to initiate divorce equally post-pandemic with a 85% accuracy rate. 

2. Women having equal access to jobs compared to men: Our analysis and results are documented in the file "ML_GenderEQ_Job.ipynb" file. Our model predicted women's ability to get a job equitably post-pandemic with a 48% accuracy rate. 

3. Women having equal access to DANGEROUS jobs compared to men: Our analysis and results are documented in the file "ML_GenderEQ_DangerousJobs.ipynb" file. Our model predicted women's ability to get a DANGEROUS job equitably post-pandemic with a 54% accuracy rate. 


## References: ##

COVID Data. Our World in Data. Retrieved from https://ourworldindata.org/covid-vaccinations

Foreign Aid/Trade API Data. The United States Agency for International Development. Retrieved from https://dev.socrata.com/foundry/data.usaid.gov/i37f-rwxd

Gender Data. World Bank Group. Retrieved from https://genderdata.worldbank.org/#countries

Mineo, L. (2022, June 29). 'Shadow pandemic' of domestic violence. National & World Affairs. The Harvard Gazette. Retrieved from https://news.harvard.edu/gazette/story/2022/06/shadow-pandemic-of-domestic-violence/

unwomen.org. The Shadow Pandemic: Violence against women during COVID-19. Retrieved from https://www.unwomen.org/en/news/in-focus/in-focus-gender-equality-in-covid-19-response/violence-against-women-during-covid-19




