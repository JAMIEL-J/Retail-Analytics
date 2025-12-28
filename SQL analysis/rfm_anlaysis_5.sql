UPDATE transactions
SET InvoiceDate_dt = STR_TO_DATE(InvoiceDate, '%d-%m-%Y %H:%i')
WHERE InvoiceDate_dt IS NULL
LIMIT 50000;
