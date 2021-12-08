## Default Risk Prediction of Loans to Small Businesses in USA                                                           Date: 08-Dec-2021

**Group Members: Srinivasan (Srini) Narayanan**

**Objective**:
Assess and predict the inherent risk of default in lending to small business customers in United States to facilitate data-driven lending decisions.

 **Data**: 
 The data set includes historical data from 1987 through 2014 (899,164 observations) with 27 variables. For most of the variables, the description is self-evident.

|Variable	|Description of variable|
|:----------|:----------------------|
|LoanNr_ChkDgt	|Primary_key|
|Name	|Borrower_name|
|City	|Borrower_city|
|State	|Borrower_state|
|Zip	|Borrower_zipcode|
|Bank	|Bank_name|
|BankState	|Bank_state|
|NAICS	|North_American_industry_classification_system_code|
|ApprovalDate	|Date_SBA_commitment_issued|
|ApprovalFY	|Fiscal_year_of_commitment|
|Term	|Loan_term_in_months|
|NoEmp	|Number_of­_business_employees|
|NewExist	|1=Existing_business,2=New_business|
|CreateJob	|Number_of_jobs_created|
|RetainedJob	|Number_of_jobs_retained|
|FranchiseCode	|Franchise_code(00000_or_00001)=No_franchise|
|UrbanRural	|1=Urban,2=rural,0=undefined|
|RevLineCr	|Revolving_line_of_credit:Y=Yes,N=No|
|LowDoc	|LowDoc Loan Program:Y=Yes,N=No|
|ChgOffDate	 |The date when a loan is declared to be in default|
|DisbursementDate	|Disbursement date|
|DisbursementGross	|Amount disbursed|
|BalanceGross	|Gross amount outstanding|
|MIS_Status	|Loan status charged off = CHGOFF, Paid in full = PIF|
|ChgOffPrinGr	|Charged-off amount|
|GrAppv	|Gross amount of loan approved by bank|
|SBA_Appv	|SBA’s guaranteed amount of approved|


**Data source**: 
https://www.kaggle.com/mirbektoktogaraev/should-this-loan-be-approved-or-denied?select=SBAnational.csv


**Algorithm**:
Logistic regression, supervised learning classification algorithm to be used to predict the probability of default.

**Tools**:
Regression model to be built on Jupyter notebook & the presentation of results or findings planned via Tableau.


**Project timelines**:
|Date           |Deliverables|
|:--------------|:-------------------------------------------------------|
|08-Dec-2021	|[x] Finalising the project idea and prepare the project plan|
|09-Dec-2021	|[] Data wrangling/Exploratory data analysis|
|10-Dec-2021	|[] Exploratory data analysis/preparing the data for modelling|
|13-Dec-2021	|[] Building the model|
|14-Dec-2021	|[] Fine tuning the model|
|15-Dec-2021	|[] Summarize the results and prepare presentation on Tableau|
|16-Dec-2021	|[] Prepare the presentation speech and practice presentation|
|17-Dec-2021	|[] Present the final project to the team|



