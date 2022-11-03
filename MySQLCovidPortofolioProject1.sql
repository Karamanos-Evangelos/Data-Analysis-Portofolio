--USE PortofolioProjectCovid1;

--SELECT * 
--FROM PortofolioProjectCovid1.dbo.CovidDeaths
--ORDER BY 3,4;

--SELECT * 
--FROM PortofolioProjectCovid1.dbo.CovidVaccinations
--ORDER BY 3,4;


--Επιλεγω τα δεδομενα που θα χρησιμοποιησω order ανα location, date

--SELECT location, date, total_cases, new_cases,total_deaths, population
--FROM PortofolioProjectCovid1.dbo.CovidDeaths
--ORDER BY 1,2;


-- Υπολογιζω αναλογια κρουσματων/θανατων (ειναι nvarchar, οποτε θελει μετατροπη σε float και round σε 3 δεκαδικα και επι 100 για να μετατραπει σε ποσοστο)
-- Δειχνει γενικο ποσοστο θανατου για τα κρουσματα, δεν λαμβανει υποψην χαρακτηριστικα ομαδων κινδυνου, ευπαθειες κτλ

--SELECT location, date, total_cases, total_deaths, ROUND(CONVERT(FLOAT,total_deaths)/ CONVERT(FLOAT,total_cases),3)*100 AS "DEATHSPERCENTAGE"
--FROM PortofolioProjectCovid1.dbo.CovidDeaths
--ORDER BY 1,2;

-- Δημιουργω views για το visualization
--CREATE VIEW deathpercentage AS
--SELECT location, date, total_cases, total_deaths, ROUND(CONVERT(FLOAT,total_deaths)/ CONVERT(FLOAT,total_cases),3)*100 AS "DEATHSPERCENTAGE"
--FROM PortofolioProjectCovid1.dbo.CovidDeaths;


-- Υπολογιζω αναλογια κορυσματων/πληθυσμο
-- Δειχνει ποιο ποσοστο του πληθυσμου ειχε δηλωμενο θετικο τεστ

--SELECT location, date, total_cases, population, ROUND(CONVERT(FLOAT,total_cases)/ CONVERT(FLOAT,population),8)*100 AS "CASESPERCENTAGE"
--FROM PortofolioProjectCovid1.dbo.CovidDeaths
--ORDER BY 1,2;

-- Δημιουργω views για το visualization
--CREATE VIEW casepercentage AS
--SELECT location, date, total_cases, population, ROUND(CONVERT(FLOAT,total_cases)/ CONVERT(FLOAT,population),8)*100 AS "CASESPERCENTAGE"
--FROM PortofolioProjectCovid1.dbo.CovidDeaths


-- Εμφανιση χωρων με τη μεγαλυτερη αναλογια κρουσματων προς τον πληθυσμο
-- Πρωτα βρισκουμε τη μεγιστη αναλογια καθε χωρας και μετα τις ταξινομουμε με φθινουσα σειρα

--SELECT location, MAX(total_cases) as MostCases, population, MAX(ROUND(CONVERT(FLOAT,total_cases)/ CONVERT(FLOAT,population),8))*100 AS "MAXCASESPERCENTAGE"
--FROM PortofolioProjectCovid1.dbo.CovidDeaths
--GROUP BY location, population
--ORDER BY MAXCASESPERCENTAGE DESC;

-- Δημιουργω views για το visualization
--CREATE VIEW maxcasespercentage AS
--SELECT location, MAX(total_cases) as MostCases, population, MAX(ROUND(CONVERT(FLOAT,total_cases)/ CONVERT(FLOAT,population),8))*100 AS "MAXCASESPERCENTAGE"
--FROM PortofolioProjectCovid1.dbo.CovidDeaths
--GROUP BY location, population;


-- Εμφανιση χωρων με τη μεγαλυτερη θνησιμοτητα
-- Πρωτα βρισκουμε τη μεγιστη αναλογια καθε χωρας και μετα τις ταξινομουμε με φθινουσα σειρα
-- Εχει μεσα και ηπειρους, οποτε με το where continent is not null δεν τις εμφανιζουμε και με το location not in δεν εμφανιζουμε την οικονομικη ταξη

--SELECT location ,MAX(CONVERT(FLOAT,total_deaths)) as MostDeaths, population, MAX(ROUND(CONVERT(FLOAT,total_deaths)/ CONVERT(FLOAT,population),8))*100 AS "MAXDEATHSPERCENTAGE"
--FROM PortofolioProjectCovid1.dbo.CovidDeaths
--WHERE continent is not null AND location NOT IN ('High Income', 'Upper Middle Income', 'Lower Middle Income', 'Low Income')
--GROUP BY location, population
--ORDER BY MAXDEATHSPERCENTAGE DESC;

-- Δημιουργω views για το visualization
--CREATE VIEW countrymaxdeathspercentage AS
--SELECT location ,MAX(CONVERT(FLOAT,total_deaths)) as MostDeaths, population, MAX(ROUND(CONVERT(FLOAT,total_deaths)/ CONVERT(FLOAT,population),8))*100 AS "MAXDEATHSPERCENTAGE"
--FROM PortofolioProjectCovid1.dbo.CovidDeaths
--WHERE continent is not null AND location NOT IN ('High Income', 'Upper Middle Income', 'Lower Middle Income', 'Low Income')
--GROUP BY location, population;


-- Κανουμε το ιδιο για ηπειρους

--SELECT location, MAX(CONVERT(FLOAT,total_cases)) as MostCases, MAX(CONVERT(FLOAT,total_deaths)) as MostDeaths, population, MAX(ROUND(CONVERT(FLOAT,total_deaths)/ CONVERT(FLOAT,population),8))*100 AS "MAXDEATHSPERCENTAGE"
--FROM PortofolioProjectCovid1.dbo.CovidDeaths
--WHERE continent IS NULL AND location NOT IN ('High Income', 'Upper Middle Income', 'Lower Middle Income', 'Low Income')
--GROUP BY location, population
--ORDER BY MAXDEATHSPERCENTAGE DESC;

--Δημιουργω views για το visualization
--CREATE VIEW continentmaxdeathspercentage AS
--SELECT location, MAX(CONVERT(FLOAT,total_cases)) as MostCases, MAX(CONVERT(FLOAT,total_deaths)) as MostDeaths, population, MAX(ROUND(CONVERT(FLOAT,total_deaths)/ CONVERT(FLOAT,population),8))*100 AS "MAXDEATHSPERCENTAGE"
--FROM PortofolioProjectCovid1.dbo.CovidDeaths
--WHERE continent IS NULL AND location NOT IN ('High Income', 'Upper Middle Income', 'Lower Middle Income', 'Low Income')
--GROUP BY location, population;


-- Κανουμε το ιδιο για τις οικονομικες ταξεις

--SELECT location, MAX(CONVERT(FLOAT,total_deaths)) as MostDeaths, population, MAX(ROUND(CONVERT(FLOAT,total_deaths)/ CONVERT(FLOAT,population),8))*100 AS "MAXDEATHSPERCENTAGE"
--FROM PortofolioProjectCovid1.dbo.CovidDeaths
--WHERE location IN ('High Income', 'Upper Middle Income', 'Lower Middle Income', 'Low Income')
--GROUP BY location, population
--ORDER BY MAXDEATHSPERCENTAGE DESC;

--Δημιουργω views για το visualization
--CREATE VIEW economicstatusmaxdeathspercentage AS
--SELECT location, MAX(CONVERT(FLOAT,total_deaths)) as MostDeaths, population, MAX(ROUND(CONVERT(FLOAT,total_deaths)/ CONVERT(FLOAT,population),8))*100 AS "MAXDEATHSPERCENTAGE"
--FROM PortofolioProjectCovid1.dbo.CovidDeaths
--WHERE location IN ('High Income', 'Upper Middle Income', 'Lower Middle Income', 'Low Income')
--GROUP BY location, population;


-- Συνολικα παγκοσμια ποσοστα θνησιμοτητας

--SELECT SUM(CONVERT(FLOAT, new_cases)) AS SumOfCases, SUM(CONVERT(FLOAT, new_deaths)) AS SumOfDeaths, SUM(CONVERT(FLOAT, new_deaths))/SUM(CONVERT(FLOAT, new_cases))*100 AS DeathPercentage
--FROM PortofolioProjectCovid1.dbo.CovidDeaths
--WHERE continent IS NOT NULL;

--Δημιουργω views για το visualization
--CREATE VIEW totaldeathspercentage AS
--SELECT SUM(CONVERT(FLOAT, new_cases)) AS SumOfCases, SUM(CONVERT(FLOAT, new_deaths)) AS SumOfDeaths, SUM(CONVERT(FLOAT, new_deaths))/SUM(CONVERT(FLOAT, new_cases))*100 AS DeathPercentage
--FROM PortofolioProjectCovid1.dbo.CovidDeaths
--WHERE continent IS NOT NULL;


-- Κανω join τους δυο πινακες στο location και στο date
-- Εμφανιση ποσοστου εμβολιασμου προς πληθυσμο 

--SELECT deaths.continent, deaths.location, deaths.date, deaths.population, vacc.new_vaccinations_smoothed, SUM(CONVERT(FLOAT, vacc.new_vaccinations_smoothed)) OVER (PARTITION BY deaths.location ORDER BY deaths.location, deaths.date) AS AdditiveVaccinations
--FROM PortofolioProjectCovid1.dbo.CovidDeaths deaths
--JOIN PortofolioProjectCovid1.dbo.CovidVaccinations vacc
--ON deaths.location = vacc.location
--AND deaths.date = vacc.date
--WHERE deaths.continent IS NOT NULL
--order by 1,2,3;


-- Δεν μπορώ να κάνω υπολογισμούς με το AdditiveVaccinations, άρα πρέπει να δημιουργήσω ένα temp table\
--DROP TABLE IF EXISTS #PercentOfPeopleVaccinated
--CREATE TABLE #PercentOfPeopleVaccinated(
--continent NVARCHAR(255),
--location NVARCHAR(255),
--date DATETIME,
--population NUMERIC,
--new_vaccinations NUMERIC,
--additivevaccinations NUMERIC)

--INSERT INTO #PercentOfPeopleVaccinated
--	SELECT deaths.continent, deaths.location, deaths.date, deaths.population, vacc.new_vaccinations_smoothed, SUM(CONVERT(FLOAT, vacc.new_vaccinations_smoothed)) OVER (PARTITION BY deaths.location ORDER BY deaths.location, deaths.date) AS AdditiveVaccinations
--	FROM PortofolioProjectCovid1.dbo.CovidDeaths deaths
--	JOIN PortofolioProjectCovid1.dbo.CovidVaccinations vacc
--	ON deaths.location = vacc.location
--	AND deaths.date = vacc.date
--	WHERE deaths.continent IS NOT NULL
--	order by 1,2,3;

---- Υπολογισμος εμβολιασμων (εστω οτι θελει 3 δοσεις και οτι ολοι θα κανουν 3 δοσεις μονο)
--SELECT *, ROUND((((additivevaccinations/population)*100)/3),2) AS vaccination_percentage
--FROM #PercentOfPeopleVaccinated;


--Δημιουργω views για το visualization
--CREATE VIEW VaccinatedPeoplePercentage AS
--SELECT deaths.continent, deaths.location, deaths.date, deaths.population, vacc.new_vaccinations_smoothed, SUM(CONVERT(FLOAT, vacc.new_vaccinations_smoothed)) OVER (PARTITION BY deaths.location ORDER BY deaths.location, deaths.date) AS AdditiveVaccinations
--	FROM PortofolioProjectCovid1.dbo.CovidDeaths deaths
--	JOIN PortofolioProjectCovid1.dbo.CovidVaccinations vacc
--	ON deaths.location = vacc.location
--	AND deaths.date = vacc.date
--	WHERE deaths.continent IS NOT NULL;
