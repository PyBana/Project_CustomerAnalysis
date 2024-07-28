CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY NOT NULL,
    Year_Birth INT,
    Education VARCHAR(50),
    Marital_Status VARCHAR(50),
    Income DOUBLE,
    Dt_Customer DATETIME,
    Last_Purchase INT
);

CREATE TABLE Household (
    CustomerID INT PRIMARY KEY NOT NULL,
    Kidhome INT,
    Teenhome INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Purchase_Amount (
    CustomerID INT PRIMARY KEY NOT NULL,
    MntWines INT,
    MntFruits INT,
    MntMeatProducts INT,
    MntFishProducts INT,
    MntSweetProducts INT,
    MntGoldProds INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Purchase_Location (
	CustomerID INT PRIMARY KEY NOT NULL,
	NumWebPurchases INT,
    NumCatalogPurchases INT, 
    NumStorePurchases INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Website_Visits (
	CustomerID INT PRIMARY KEY NOT NULL,
    NumWebVisitsMonth INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Campaign_Responses (
    CustomerID INT PRIMARY KEY NOT NULL,
    NumDealsPurchases INT,
    AcceptedCmp1 INT,
    AcceptedCmp2 INT,
    AcceptedCmp3 INT,
    AcceptedCmp4 INT,
    AcceptedCmp5 INT,
    Response INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Complaints (
    CustomerID INT PRIMARY KEY NOT NULL,
    Complain_Amount INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Constants (
	CustomerID INT PRIMARY KEY NOT NULL,
    Z_CostContact INT,
    Z_Revenue INT,
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
