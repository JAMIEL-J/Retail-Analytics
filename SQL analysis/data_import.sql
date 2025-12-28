LOAD DATA LOCAL INFILE 'E:/Data Science Course/DA practice project/END TO END DA PROJECTS/Retail Analytics/data/online_retail.csv'
INTO TABLE transactions
CHARACTER SET latin1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country);
