INSERT INTO Customers (CustomerID, Year_Birth, Education, Marital_Status, Income, Dt_Customer, Last_Purchase)
SELECT ID, Year_Birth, Education, Marital_Status, Income, Dt_Customer, Recency
FROM marketing_campaign;

INSERT INTO Household (CustomerID, Kidhome, Teenhome)
SELECT ID, Kidhome, Teenhome
FROM marketing_campaign;

INSERT INTO Purchase_Amount (CustomerID, MntWines, MntFruits, MntMeatProducts, MntFishProducts, MntSweetProducts, MntGoldProds)
SELECT ID, MntWines, MntFruits, MntMeatProducts, MntFishProducts, MntSweetProducts, MntGoldProds
FROM marketing_campaign;

INSERT INTO Purchase_Location (CustomerID, NumWebPurchases, NumCatalogPurchases, NumStorePurchases)
SELECT ID, NumWebPurchases, NumCatalogPurchases, NumStorePurchases
FROM marketing_campaign;

INSERT INTO Website_Visits (CustomerID, NumWebVisitsMonth)
SELECT ID, NumWebVisitsMonth
FROM marketing_campaign;

INSERT INTO Campaign_Responses (CustomerID, NumDealsPurchases, AcceptedCmp1, AcceptedCmp2, AcceptedCmp3, AcceptedCmp4, AcceptedCmp5, Response)
SELECT ID, NumDealsPurchases, AcceptedCmp1, AcceptedCmp2, AcceptedCmp3, AcceptedCmp4, AcceptedCmp5, Response
FROM marketing_campaign;

INSERT INTO Complaints (CustomerID, Complain_Amount)
SELECT ID, Complain
FROM marketing_campaign;

INSERT INTO Constants (CustomerID, Z_CostContact, Z_Revenue)
SELECT ID, Z_CostContact, Z_Revenue
FROM marketing_campaign;
