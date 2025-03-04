
# Bank Loan Analysis
## Overview
This project analyzes loan data to gain insights into various aspects of bank lending operations, including loan applications, funded amounts, repayment trends, and borrower demographics. The data was collected from a SQL Server database, cleaned using Power Query, and visualized using Power BI.

## Objectives

- Understand the overall performance of the bank's loan portfolio.
- Analyze key performance indicators (KPIs) such as total loan applications, funded amounts, and repayment trends.
- Identify regional disparities and seasonal trends in lending activities.
- Evaluate the financial health of borrowers through metrics like debt-to-income ratio (DTI).
- Assess the impact of different factors (e.g., loan term, employment length, home ownership) on loan performance.

## Methodology
### Data Cleaning and KPI Calculations in SQL
The raw data was cleaned, and all key performance indicators (KPIs) were calculated using SQL queries within the MS SQL Server. This ensured that the calculations were accurate and could be verified later.

### Connecting to MSSQL Server and Creating Power BI Dashboard
The cleaned and calculated data was then connected to an MSSQL server. Power BI was used to create an interactive dashboard that connected directly to the server. Various charts, graphs, and KPIs were created to present the findings in an interactive and user-friendly manner. The final dashboard provides a comprehensive view of the loan data across multiple dimensions.

## Key Findings & Visualization
The final dashboard includes several key visuals and metrics:

### Dashboard 1: Summary
![Summary Page](https://github.com/user-attachments/assets/9ff98c75-bf93-4f0e-9363-2f630b8dd3cd)

#### Key Performance Indicators (KPIs)
- **Total Loan Applications:** Calculated the total number of loan applications received during a specified period. Monitored Month-to-Date (MTD) Loan Applications and tracked changes Month-over-Month (MoM).
- **Total Funded Amount:** Understanding the total amount of funds disbursed as loans. Monitored MTD Total Funded Amount and analyzed MoM changes.
- **Total Amount Received:** Tracked the total amount received from borrowers to assess the bank's cash flow and loan repayment. Analyzed MTD Total Amount Received and observed MoM changes.
- **Average Interest Rate:** Calculated the average interest rate across all loans, MTD, and monitored MoM variations.
- **Average Debt-to-Income Ratio (DTI):** Evaluated the average DTI for borrowers to gauge their financial health. Computed the average DTI for all loans, MTD, and tracked MoM fluctuations.

#### Good Loan vs Bad Loan KPIs
Application percentages, number of applications, funded amounts and total received amounts were visualized for good and bad loans.

### Dashboard 2: Overview
![Overview Page](https://github.com/user-attachments/assets/3bb83d93-f198-4486-8f44-22802ed606b7)

#### Charts 
- **Monthly Trends by Issue Date (Line Chart):** Identified seasonality and long-term trends in lending activities.
- **Regional Analysis by State (Filled Map):** Identified regions with significant lending activity and assessed regional disparities.
- **Loan Term Analysis (Donut Chart):** Provided insights into the distribution of loans across various term lengths.
- **Employee Length Analysis (Bar Chart):** Showed how lending metrics are distributed among borrowers with different employment lengths.
- **Loan Purpose Breakdown (Bar Chart):** Provided a visual breakdown of loan metrics based on the stated purposes of loans.
- **Home Ownership Analysis (Tree Map):** Offered a hierarchical view of how home ownership impacts loan applications and disbursements.

### Dashboard 3: Details
![Details Page](https://github.com/user-attachments/assets/18100ead-726f-46ad-8d41-c21eeac3798d)

#### Grid View
A comprehensive 'Details Dashboard' that provides a consolidated view of all essential information within the loan data. This dashboard offers a holistic snapshot of key loan-related metrics and data points, enabling users to access critical information efficiently.

## Conclusion
This project offers valuable insights into the bank's lending operations and helps stakeholders make data-driven decisions. It highlights important trends and challenges faced by the bank in managing its loan portfolio. The dashboard serves as a useful tool for monitoring the performance of loans and assessing the financial health of borrowers.

## Future Work
- Expand the dataset to include more loan records for a broader perspective.
- Incorporate additional factors such as credit scores, income levels, and loan delinquency rates to refine the analysis.
- Use advanced analytics techniques like predictive modeling to forecast future loan performance.
- Explore the use of machine learning algorithms to identify patterns and correlations within the data.


*Note: This project uses a dataset provided by a popular Data Analysis Content Creator.*
