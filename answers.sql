USE salesDB;   -- Select the database to work on
        -- Question 1 --
SELECT 
    paymentDate,
    SUM(amount) AS totalAmount  -- Selecting and Agregating the payment amounts 
FROM payments
GROUP BY paymentDate   		-- Grouping amounts by their payment date, incase of multiple payment amounts in a single paymentDate.
ORDER BY paymentDate DESC   -- Order payment amounts in descending order (from latest to earliest paymetDate)
LIMIT 5;                    -- Selecting only 5 paymentDates

        --Question 2 --
SELECT
	customerName,
    country,
    AVG(creditLimit) AS averageCreditLimit
FROM customers     -- Agregating by the Average function(Average of credit limits per customer)
GROUP BY customerName, country;     -- Grouping the result by cutomer and country

        -- Question 3 --

SELECT
	productCode,
    quantityOrdered,
    SUM(quantityOrdered * priceEach) AS totalPrice   -- Calculating(Agregating) the total price for a single productCode
FROM orderDetails
GROUP BY productCode, quantityOrdered;               -- Grouping the result by productCode and quantityOrdered

        -- Question 4 --

SELECT
	checkNumber,
    MAX(amount) AS highestAmountPaid    -- Selecting the highest payment amount for each check number
FROM payments
GROUP BY checkNumber;                   -- grouping by check number