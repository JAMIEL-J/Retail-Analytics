ALTER TABLE transactions
ADD COLUMN Revenue DECIMAL(10,2);

UPDATE transactions
SET Revenue = Quantity * UnitPrice;
