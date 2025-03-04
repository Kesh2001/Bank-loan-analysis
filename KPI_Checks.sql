USE [Bank Loan DB]
SELECT * FROM bank_loan_data

SELECT ROUND(AVG(int_rate),4)*100 as MTD_Average_Interest_Rate FROM bank_loan_data WHERE MONTH(issue_date) = 11

SELECT ROUND(AVG(dti),4)*100 as MTD_Avg_interest FROM bank_loan_data WHERE MONTH(issue_date) = 12


SELECT loan_status from bank_loan_data

SELECT 
	(COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status ='Current' THEN id END))*100
	/COUNT(id) as Good_Loan_percentage
FROM bank_loan_data

SELECT SUM(total_payment) as Good_Loan_Amount_Received from bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status ='Current'

SELECT 
	(COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END))*100.0
	/COUNT(id) as Good_Loan_percentage
FROM bank_loan_data

SELECT COUNT(id) AS Bad_Loan_Applications FROM bank_loan_data
WHERE loan_status = 'Charged Off'

SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount FROM bank_loan_data
WHERE loan_status = 'Charged Off'

SELECT SUM(total_payment) AS Bad_Loan_amount_received FROM bank_loan_data
WHERE loan_status = 'Charged Off'

SELECT 
	loan_status,
	Count(id) As LoanCount,
	SUM(total_payment) as Total_Amnt_Received,
	SUM(loan_amount) as Total_Funded_Amount,
	AVG(int_rate)*100 as Interest_Rate,
	AVG(dti)*100 as DTI
FROM 
bank_loan_data
Group By loan_status


SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM 
bank_loan_data
WHERE 
MONTH(issue_date) = 12 
GROUP BY 
loan_status

SELECT 
	MONTH(issue_date) AS Month_Number,
	DATENAME(MONTH, issue_date) AS "Month",
	COUNT(id) AS  Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment)  AS Total_Received_Amount
FROM bank_loan_data
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date)

SELECT 
	address_state AS State, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY address_state
ORDER BY address_state

SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY term
ORDER BY term

SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY emp_length
ORDER BY emp_length

SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY purpose
ORDER BY COUNT(id) DESC



SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY home_ownership
ORDER BY COUNT(id) DESC
