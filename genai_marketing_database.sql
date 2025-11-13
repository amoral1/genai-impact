CREATE DATABASE 
genai_marketing;

USE `genai_marketing`;

CREATE TABLE Global_AI_Content_Impact (
Country VARCHAR(20) NOT NULL,
Year INT NOT NULL,
Industry VARCHAR(20) NOT NULL,
`AI Adoption Rate (%)` FLOAT NOT NULL,
`AI-Generated Content Volume (TBS per year)` FLOAT NOT NULL,
`Job Loss Due to AI (%)` FLOAT NOT NULL,
`Revenue Increase Due to AI (%)` FLOAT NOT NULL,
`Human-AI Collaboration Rate (%)` FLOAT NOT NULL,
`Top AI Tools Used` VARCHAR(50) NOT NULL,
`Regulation Status` VARCHAR(20) NOT NULL,
`Consumer Trust in AI (%)` FLOAT NOT NULL,
`Market Share of AI Companies (%)` FLOAT NOT NULL
);

#ALTER TABLE Global_AI_Content_Impact
#ADD COLUMN `Identifier` VARCHAR(100) #GENERATED ALWAYS AS (CONCAT(Specific_Column1, '-', Specific_Column2, '-', Specific_Column)) STORED,
#ADD PRIMARY KEY (Specific_Column1, Specific_Column2, Specific_Column3);

SELECT  Country, Year, Industry, `Top AI Tools Used`, `Regulation Status`, COUNT(*)
FROM Global_AI_Content_Impact
GROUP BY Country, Year, Industry, `Top AI Tools Used`, `Regulation Status`
HAVING COUNT(*) > 1;
