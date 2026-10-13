# payment-survey-analysis
This document explains the structure, cleaning process, calculations, analysis and key findings contained in the Payment Survey Analysis workbook. It serves as a reference for understanding how the survey data was prepared and how the results were produced.
 
			
 
1. WORKBOOK STRUCTURE			
Payment_Survey_Analysis	Source/raw survey data. Contains respondent information, experience variables, pain-point indicators and feature preference responses. Some source fields contain NULL placeholders and inconsistent text capitalization/spelling.		
Clean_data	Analysis-ready dataset with 20 respondents and 31 columns. This is the main dataset used for calculations and PivotTables.		
Calculation	Derived analysis fields including AGE GROUP, SATISFACTION RATING category, TRUST SCORE, PROBLEM COUNT PER RESPONDENT, and feature-priority values.		
Analysis	PivotTable summaries showing feature preference totals by age group and the count of respondents by primary payment method.		
Documentation	This sheet. It records the methodology, field definitions, calculations, findings, limitations and recommendations.		
2. DATA CLEANING AND PREPARATION			
Step 1	Removed the extra blank top row from the source structure when preparing the Clean_data table.		
Step 2	Used Respondent_ID as the respondent identifier for the cleaned dataset.		
Step 3	Standardized the dataset into one respondent per row and one variable per column.		
Step 4	Converted survey problem indicators and behavioural yes/no indicators to numeric 0/1 values.		
Step 5	Kept satisfaction as a 1-10 numerical rating.		
Step 6	Retained feature priorities as 1-8 rankings, where lower values indicate a higher stated priority when interpreted as rank.		
Step 7	Corrected obvious spelling/case issues in selected categorical fields, such as 'Begnner' to Beginner and 'intermident' to Intermediate, and normalized employment/location labels where applicable.		
Step 8	Note: some category values in Clean_data still show inconsistent forms, especially income labels such as below-100k and below_300k, and location spellings/capitalization such as Lagos/lagos, Kano/kano and portharcourt/porthartcourt. These should be standardized before advanced segmentation.		
3. DERIVED CALCULATIONS			
AGE GROUP			
SATISFACTION CATEGORY			
TRUST SCORE	SUM of the three trust/interest indicators: willing_to_try_new_app + prefers_mobile_app + interested_in_beta_testing. Higher scores indicate stronger combined interest across these three measures.		
PROBLEM COUNT PER RESPONDENT	SUM of the seven problem indicators: high_fees, transaction_delays, poor_customer_support, complicated_interface, security_concerns, limited_payment_options and currency_conversion_issues. Maximum possible score is 7.		
FEATURE PRIORITY	The eight feature fields contain rank values from 1 to 8. A lower rank represents a stronger preference. Therefore, when comparing preference rankings, rank averages are generally more informative than simple sums; lower average rank means stronger preference.		
4. DATASET PROFILE			
Number of respondents	20		
Age range	18 to 62 years		
Mean age	33.7 years		
Median age	31 years		
Satisfaction range	1 to 10		
Mean satisfaction	5.4 / 10		
Median satisfaction	6.5 / 10		
Transaction time range	55 to 656 hours		
Mean transaction time	268.55 hours		
Median transaction time	155 hours		
Monthly transaction frequency	3 to 20 transactions		
Mean monthly frequency	13.15 transactions		
Median monthly frequency	12 transactions		
Average amount received	₦5,000 to ₦500,000		
Mean amount received	₦105,150		
Median amount received	₦45,000		
5. DEMOGRAPHIC SUMMARY			
Gender	Female: 11 (55%); Male: 9 (45%).		
Location	Abuja: 5; Lagos/lagos: 6; Kano/kano: 5; Port Harcourt variants: 4. Location labels should be standardized before final reporting.		
Income level	100k-300k: 8; 300k-500k: 4; below-100k: 3; above-500k: 3; below_300k: 2. The income categories need normalization because below-300k may overlap with below-100k and 100k-300k.		
Technology proficiency	Intermediate: 6; Advanced: 6; Beginner/Begnner: 7; intermident: 1. Standardize spelling before segmentation.		
Employment status	Employed variants: 9; Student/student variants: 6; Self-employed variants: 5. Case and spelling should be normalized.		
6. PAYMENT BEHAVIOUR			
Primary payment method	Bank Transfer: 5 (25%); Crypto: 3 (15%); Remitly: 3 (15%); Mobile Money: 3 (15%); Western Union: 2 (10%); MoneyGram: 2 (10%); Wise: 2 (10%).		
Received money from abroad	13 of 20 respondents (65%) indicated that they receive money from abroad.		
Beta testing interest	13 of 20 respondents (65%) indicated interest in beta testing.		
Willingness to try a new app	11 of 20 respondents (55%) indicated willingness to try a new application.		
Mobile app preference	5 of 20 respondents (25%) indicated a preference for the mobile app in the supplied cleaned data.		
7. SATISFACTION AND PROBLEM ANALYSIS			
Satisfaction interpretation	The mean satisfaction score is 5.4/10, showing a moderate overall satisfaction level. The median of 6.5 indicates that at least half of respondents gave a rating of 6.5 or higher, although the low ratings of 1 and 2 reduce the mean.		
Most common problem	Transaction delays: 14 respondents (70%).		
Second most common problem	Complicated interface: 14 respondents (70%).		
Security concerns	13 respondents (65%) reported security concerns.		
Currency conversion issues	11 respondents (55%) reported currency conversion issues.		
High fees	7 respondents (35%) reported high fees.		
Limited payment options	7 respondents (35%) reported limited payment options.		
Poor customer support	6 respondents (30%) reported poor customer support.		
Management implication	The strongest pain points are operational speed and usability. Improving transaction processing and simplifying the interface should be treated as major priorities. Security and currency conversion also require attention.		
8. FEATURE PREFERENCE ANALYSIS			
Security features	Highest total priority value in the current PivotTable summary: 132. Youth = 68; Adult = 64.		
Referral rewards	Total = 121. Youth = 62; Adult = 59.		
Dual wallet	Total = 99. Youth = 46; Adult = 53.		
Budget tracking	Total = 91. Youth = 46; Adult = 45.		
Easy international transfers	Total = 78. Youth = 49; Adult = 29.		
Instant cashout	Total = 67. Youth = 31; Adult = 36.		
Low fees	Total = 51. Youth = 24; Adult = 27.		
Customer support	Calculation sheet contains customer_support_priority, but it is not included in the current Analysis PivotTable.		
Important interpretation note	Because these are rank values, a larger SUM does not automatically mean a feature is more preferred. Lower rank values represent stronger preference. The current PivotTable sums ranks, so it should be interpreted cautiously. For a more accurate preference analysis, calculate the average rank by feature and segment.		
9. AGE SEGMENT COMPARISON			
Youth segment	Respondents aged 30 or below. The Analysis PivotTable contains feature totals of 31 instant cashout, 46 budget tracking, 24 low fees, 46 dual wallet, 62 referral rewards, 68 security features and 49 easy international.		
Adult segment	Respondents above 30. The Analysis PivotTable contains feature totals of 36 instant cashout, 45 budget tracking, 27 low fees, 53 dual wallet, 59 referral rewards, 64 security features and 29 easy international.		
Key difference	Easy international preference values are much higher for Youth than Adults in the current rank-sum table, while Adults have higher totals for instant cashout, low fees and dual wallet. Again, these are rank sums, so lower values indicate stronger preference.		
10. PAYMENT METHOD ANALYSIS			
PivotTable result	The Analysis sheet counts satisfaction responses by primary payment method: Bank Transfer 5; Crypto 3; Mobile Money 3; Remitly 3; MoneyGram 2; Western Union 2; Wise 2; Grand Total 20.		
Interpretation	Bank Transfer is the most frequently reported primary payment method in this sample, accounting for 25% of respondents. The remaining methods are distributed across several alternatives.		
11. RECOMMENDED POWER BI VISUALIZATIONS			
Top problem areas	Clustered bar chart using problem type as the axis and number of respondents reporting each problem as the value.		
Satisfaction by demographic	Heatmap or matrix with demographic group on rows, satisfaction category/rating on columns and respondent count or average satisfaction as the value.		
Feature preference	Bar chart of average feature rank, sorted ascending. Lower average rank should appear first because it represents stronger preference.		
Payment method	Donut chart or column chart showing respondent count by primary payment method.		
Age segment	Stacked or clustered column chart comparing Youth and Adult segments across average feature ranks.		
Interest in new app	Cards or a column chart for willingness to try a new app, mobile preference and beta testing interest.		
Transaction experience	Scatter plot comparing transaction time and satisfaction, with payment method or income level used as a legend/filter.		
12. BUSINESS / PROJECT RECOMMENDATIONS			
Recommendation 1	Prioritize reducing transaction delays because this is one of the most frequently reported problems.		
Recommendation 2	Simplify the application interface and user journey to address the high level of interface-related complaints.		
Recommendation 3	Strengthen security features and communicate security measures clearly, since security concerns are reported by 65% of respondents and security is prominent in the feature-priority analysis.		
Recommendation 4	Improve currency conversion transparency, including exchange rates, fees and estimated received amounts.		
Recommendation 5	Consider referral rewards and dual-wallet functionality as potential product differentiators, subject to a correct average-rank analysis.		
Recommendation 6	Use the 65% beta-testing interest as an opportunity to recruit respondents for product testing and feedback.		
Recommendation 7	Before making segment-specific product decisions, standardize demographic categories and recalculate feature preference using average ranks rather than rank sums.		
13. DATA QUALITY NOTES AND LIMITATIONS			
Note 1	The sample contains only 20 respondents, so results should be treated as survey findings for the supplied sample rather than general conclusions about the entire population.		
Note 2	Several categorical fields contain spelling, capitalization or naming inconsistencies. These can split one category into multiple groups in PivotTables.		
Note 3	The income labels are not mutually consistent because below_300k overlaps with other income ranges. The income grouping should be redesigned before segment analysis.		
Note 4	Transaction time is labelled in hours and contains values up to 656 hours. Confirm that the original survey question was intended to record hours rather than minutes before publishing the result.		
Note 5	The feature preference fields are rankings. Summing rankings can be misleading because a lower rank means stronger preference. Average rank or the number of respondents assigning rank 1 should be used for final feature ranking.		
Note 6	The current Analysis sheet does not include customer_support_priority even though it exists in the Calculation sheet. Add it to the PivotTable if customer support is required in the final feature comparison.		
Note 7	The source sheet contains NULL placeholders in respondent_id fields. Clean_data should remain the analysis source unless those relationships are intentionally restored in the database.		
14. DATA DICTIONARY			
FIELD	DESCRIPTION		
Respondent_ID	Unique identifier for each survey respondent.		
age	Respondent age in years.		
gender	Respondent gender category.		
location	Respondent location.		
income_level	Income category supplied by the respondent.		
tech_proficiency	Self-reported technology proficiency.		
employment_status	Employment category.		
received_money_abroad	Binary indicator; 1 = yes, 0 = no.		
primary_payment_method	Main payment/remittance method used.		
avg_transaction_time_hours	Average transaction processing time, recorded in hours.		
monthly_transaction_frequency	Number of payment transactions per month.		
avg_amount_received_naira	Average amount received in Nigerian Naira.		
satisfaction_rating	Overall satisfaction rating from 1 to 10.		
high_fees	Problem indicator; 1 = reported, 0 = not reported.		
transaction_delays	Problem indicator; 1 = reported, 0 = not reported.		
poor_customer_support	Problem indicator; 1 = reported, 0 = not reported.		
complicated_interface	Problem indicator; 1 = reported, 0 = not reported.		
security_concerns	Problem indicator; 1 = reported, 0 = not reported.		
limited_payment_options	Problem indicator; 1 = reported, 0 = not reported.		
currency_conversion_issues	Problem indicator; 1 = reported, 0 = not reported.		
instant_cashout_priority	Feature priority rank from 1 to 8.		
low_fees_priority	Feature priority rank from 1 to 8.		
easy_international_priority	Feature priority rank from 1 to 8.		
budget_tracking_priority	Feature priority rank from 1 to 8.		
dual_wallet_priority	Feature priority rank from 1 to 8.		
referral_rewards_priority	Feature priority rank from 1 to 8.		
security_features_priority	Feature priority rank from 1 to 8.		
customer_support_priority	Feature priority rank from 1 to 8.		
willing_to_try_new_app	Binary interest indicator; 1 = yes, 0 = no.		
prefers_mobile_app	Binary preference indicator; 1 = yes, 0 = no.		
interested_in_beta_testing	Binary interest indicator; 1 = yes, 0 = no.		
15.
    FINAL SUMMARY			
Overall conclusion	The survey indicates a moderate satisfaction level, with transaction delays and complicated interfaces emerging as the strongest reported problems. Security is a prominent feature consideration, while beta-testing interest is relatively strong. The workbook provides a useful foundation for Excel and Power BI reporting, but category standardization and a corrected feature-ranking method should be completed before final conclusions are presented.		
 

