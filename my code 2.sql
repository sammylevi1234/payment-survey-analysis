drop database if exists payment_survey;
create database payment_survey;
use payment_survey;
drop table if exists respondent_details;
create table respondent_details(
Respondent_ID  int primary key auto_increment,
age int,
gender varchar(10),
location VARCHAR (50),
income_level VARCHAR (20),
tech_proficiency VARCHAR (15),
employment_status VARCHAR (20)
 );
 insert into respondent_details (age,gender,location,
 income_level,tech_proficiency,employment_status)
 values 
 (18,"male", "abuja", "below-100k", "Beginner", "student"),
(20,"female", "Lagos", "100k-300k", "Intermediate", "Employed"),
(40,"female", "Kano", "300k-500k", "Advanced", "'Self-employed"),
(24,"female", "abuja", "300k-500k", "Advanced", "Employed"),
(35,"female", "Lagos", "100k-300k", "Intermediate", "Employed"),
(50,"female", "abuja", "100k-300k", "Intermediate", "Employed"),
(60,"male", "portharcourt", "below_300k", "Beginne", "Studen"),
(25,"male", "Lagos", "100k-300k", "Intermediate", "Employed"),
(19,"male", "kano", "below-100k", "Beginner", "student"),
(34,"female", "lagoes", "above-500k", "Advanced", "self-Employed"),
(54,"male", "abuja", "below-100k", "Beginner", "student"),
(20,"female", "Lagos", "100k-300k", "Intermediate", "Employed"),
(40,"female", "Kano", "above-500k", "Advanced", "'Self-employed"),
(34,"male", "abuja", "300k-500k", "Advanced", "Employed"),
(25,"male", "portharcourt", "300k-500k", "Intermediate", "Employed"),
(40,"female", "porthartcourt", "100k-300k", "bignners", "Employed"),
(62,"male", "portharcourt", "below_300k", "Beginne", "Student"),
(22,"male", "kano", "100k-300k", "bignner", "student"),
(28,"female", "kano", "above-500k", "advanced", "self-employed"),
(20,"male", "kano", "above-500k", "advanced", "employed");

drop table if exists payment_experience;
create table payment_experience (
experience_id int primary key auto_increment,
respondent_id int,
foreign key  (respondent_id) references respondent_details(respondent_id),
received_money_abroad boolean,
primary_payment_method varchar(30),
avg_transaction_time_hours int,
monthly_transaction_frequency int,
avg_amount_received_naira decimal (10,2),
satisfaction_rating int );
 insert into payment_experience (received_money_abroad, primary_payment_method, avg_transaction_time_hours, monthly_transaction_frequency,avg_amount_received_naira,
			satisfaction_rating)
values
(1, "Bank Transfer", 55, 20, 50000.00, 1),
(1, "Western Union", 180, 6, 5000.00, 8),
(0, "MoneyGram", 111, 10, 10000.00, 7),
(1, "Bank Transfer", 55, 10, 500000.00, 9),
(0, "Wise", 515, 12, 60000.00, 4),
(1, "Remitly", 155, 20, 90000.00, 6),
(0, "Crypto", 552, 20, 10000.00, 10),
(1, "Mobile Money", 655, 3, 7000.00, 2),
(1, "Bank Transfer", 65, 17, 8000.00, 7),
(0, "Remitly", 545, 12, 90000.00, 1),
(0, "Crypto", 88, 20, 40000.00, 4),
(1, "Mobile Money", 115, 20, 500000.00, 1),
(1, "Bank Transfer", 55, 20, 50000.00, 1),
(1, "Western Union", 180, 6, 5000.00, 7),
(0, "MoneyGram", 111, 10, 10000.00, 8),
(1, "Bank Transfer", 55, 10, 500000.00, 9),
(0, "Wise", 516, 13, 60000.00, 4),
(1, "Remitly", 155, 10, 90000.00, 7),
(1, "Crypto", 552, 20, 10000.00, 9),
(1, "Mobile Money", 656, 4, 8000.00, 3);

drop  table if exists feature_preferences;
create table  feature_preferences(
pain_id  int primary key auto_increment,
respondent_id int,
foreign key (respondent_Id ) references respondent_details(respondent_Id),
high_fees boolean, 
transaction_delays boolean,
poor_customer_support boolean,
complicated_interface boolean,
security_concerns boolean,
limited_payment_options boolean,
currency_conversion_issues boolean
);
insert into feature_preferences (high_fees, transaction_delays,poor_customer_support,complicated_interface,
security_concerns,limited_payment_options,currency_conversion_issues)
values
 (1,1,1,1,1,1,1),(0,1,0,1,1,0,0),(0,1,0,1,0,1,1),(0,0,1,0,1,1,0),(1,1,0,1,1,1,1),
 (0,1,0,1,1,0,0),(0,1,0,1,1,0,1),(0,0,1,1,0,0,0),(1,0,0,1,0,0,1),(0,1,0,1,0,0,0),
 (1,1,1,1,1,1,1),(1,0,1,0,0,1,0),(0,1,0,1,1,0,1),(0,1,0,1,1,0,0),(0,1,0,1,0,0,1),
 (1,0,0,0,0,1,1),(1,0,0,0,1,0,1),(0,1,0,0,1,0,0),(0,1,0,1,1,0,1),(0,1,1,0,1,0,0); 
 
 drop table if exists trust_security;
 create table trust_security(
 preference_id int primary key auto_increment,
 respondent_id int,
 foreign key(respondent_id) references respondent_details(respondent_id),
 instant_cashout_priority int,
 low_fees_priority int,
 easy_international_priority int,
 budget_tracking_priority int,
 dual_wallet_priority int,
 referral_rewards_priority int,
 security_features_priority int,
 customer_support_priority int,
 willing_to_try_new_app boolean,
 prefers_mobile_app boolean,
 interested_in_beta_testing boolean);
 insert into trust_security (instant_cashout_priority,low_fees_priority,easy_international_priority,budget_tracking_priority,
  dual_wallet_priority,referral_rewards_priority,security_features_priority,customer_support_priority,
 willing_to_try_new_app,prefers_mobile_app,interested_in_beta_testing)
 values
 (1,2,3,4,5,6,7,8,1,0,1),(2,1,2,6,1,7,7,7,1,1,1),(8,2,5,2,8,4,7,6,1,0,0),
 (2,2,6,4,5,6,5,8,0,0,1),(7,2,3,4,5,8,2,4,0,1,1),(1,2,2,7,5,4,6,7,0,0,0),
 (6,2,3,7,5,6,7,4,1,1,1),(1,2,7,5,5,6,7,6,1,0,0),(8,8,3,4,5,7,7,8,0,0,0),
 (1,2,3,4,5,6,7,8,1,0,1),(1,2,3,4,5,6,7,8,1,0,1),(4,2,5,4,5,8,7,8,1,0,1),
 (3,3,3,5,5,6,6,8,1,0,0),(7,5,3,4,6,6,7,8,0,1,1),(6,2,5,6,5,4,7,8,0,0,1),
 (1,2,1,4,5,7,7,8,0,0,1),(1,5,3,4,4,6,8,8,0,0,0),(1,2,8,4,5,3,7,6,0,0,1),
 (1,1,3,5,5,8,7,8,1,0,0),(5,2,7,4,5,7,7,8,1,11,1),(5,2,3,4,5,6,3,3,1,0,0);
 
/*percentage of people who recieve money*/ 
 select 
count(*),
(sum(if( received_money_abroad = 1,1,0)*100)/count(*)) as percentage_of_people_who_receive_money
from payment_experience ;
/*question two*/ 
 select 
 primary_payment_method,
 count(*) as number_of_each_users,
 ( count(*) * 100 / sum(count(*)) over()) as percentage
 from payment_experience
 group by  primary_payment_method ;
 
 /*AVARAGE,MIN,MAX, TRANSECTION TIME*/ 
 select 
 primary_payment_method,
 count(*) as number_of_users,
 min(avg_transaction_time_hours) as average_time
 from payment_experience 
 group by primary_payment_method
order by primary_payment_method desc;

select 
 primary_payment_method,
 count(*) as number_of_users,
 max(avg_transaction_time_hours) as average_time
 from payment_experience 
 group by primary_payment_method
order by primary_payment_method desc;

/*percentage of users experiencing problem*/ 
select
count(*),
(sum(if( feature_preferences = 1,1,0) * 100 / count(*)))
from  feature_preferences;
 
  /*satisfication rating*/ 
  select 
  avg(satisfaction_rating)
  from payment_experience as average_satisfaction_rating;
  
 /*percentage_willing_to_try_the_new_app*/  
  select 
  count(*),
  (sum(if(willing_to_try_new_app = 1,1,0) * 100)/ count(*)) as percentage_willing_to_try_the_new_app
  from trust_security;
  
  /*current satisfaction level*/  
  select 
  case 
  when  satisfaction_rating <=5 then "not satisfied"
  else  "satisfied" 
  end as satisfaction_rate,
  count(*) as total_amount
  from payment_experience
  group by satisfaction_rate;
  
 
 /*percentage of users experiencing each problem*/   
select
round(avg(high_fees)* 100 , 2) as high_fee_problem,
round(avg(transaction_delays)* 100 , 2) as transection_delay,
round(avg(poor_customer_support)* 100 , 2) as poor_customer_support,
round(avg(complicated_interface)* 100 , 2) as complicated_interface,
round(avg(limited_payment_options )* 100 , 2) as limited_payment_options,
round(avg(currency_conversion_issues )* 100 , 2) as currency_conversion_issues
from feature_preferences;

/*satisfaction_rating*/
select 
case
when(currency_conversion_issues+limited_payment_options+complicated_interface+poor_customer_support+transaction_delays+
high_fees) = 0 then "0 problem"
when(currency_conversion_issues+limited_payment_options+complicated_interface+poor_customer_support+transaction_delays+
high_fees) = 1 then "1 problem"
when(currency_conversion_issues+limited_payment_options+complicated_interface+poor_customer_support+transaction_delays+
high_fees) = 2 then "2 problem"
else "plenty problems" 
end problem_count,
round(avg(satisfaction_rating)*100,2) as f
from feature_preferences
group by problem_count;

/*beta testing*/
select
(sum(case when interested_in_beta_testing = true then 1 else 0 end) * 100 / count(*)) as beta_testing_interest_rate
from trust_security;

update feature_preferences 
set Respondent_ID = pain_id;

WITH feature_counts AS (
    SELECT
        CASE
            WHEN r.age BETWEEN 18 AND 25 THEN '18-25'
            WHEN r.age BETWEEN 26 AND 35 THEN '26-35'
            WHEN r.age BETWEEN 36 AND 45 THEN '36-45'
            WHEN r.age BETWEEN 46 AND 65 THEN '46-65'
        END AS age_group,
        f.feature,
        COUNT(*) AS feature_count
    FROM respondent_details r
    JOIN (
        SELECT respondent_id, 'High Fees' AS feature
        FROM feature_preferences
        WHERE high_fees = 1

        UNION ALL

        SELECT respondent_id, 'Transaction Delays'
        FROM feature_preferences
        WHERE transaction_delays = 1

        UNION ALL

        SELECT respondent_id, 'Poor Customer Support'
        FROM feature_preferences
        WHERE poor_customer_support = 1

        UNION ALL

        SELECT respondent_id, 'Complicated Interface'
        FROM feature_preferences
        WHERE complicated_interface = 1

        UNION ALL

        SELECT respondent_id, 'Security Concerns'
        FROM feature_preferences
        WHERE security_concerns = 1

        UNION ALL

        SELECT respondent_id, 'Limited Payment Options'
        FROM feature_preferences
        WHERE limited_payment_options = 1

        UNION ALL

        SELECT respondent_id, 'Currency Conversion Issues'
        FROM feature_preferences
        WHERE currency_conversion_issues = 1
    ) f
    ON r.respondent_id = f.respondent_id
    GROUP BY age_group, f.feature
),

ranked_features AS (
    SELECT
        age_group,
        feature,
        feature_count,
        ROW_NUMBER() OVER (
            PARTITION BY age_group
            ORDER BY feature_count DESC
        ) AS feature_rank
    FROM feature_counts
)

SELECT
    age_group,
    feature,
    feature_count,
    feature_rank
FROM ranked_features
WHERE feature_rank <= 3
ORDER BY age_group, feature_rank;

select * from trust_security
 