-- use big_data
-- select * from customers
-- insert into customers (
-- customer_id,
-- customer_name,
-- phone_no,
-- age,
-- location,
-- occupation,
-- repeat_customer
-- ) values (
-- 8, 
-- 'Mr.prabhakaran',
-- '80720 18483',
-- 49,
-- 'velachery',
-- 'IBM',
-- false
-- ), (
-- 9,
-- 'Mr.karthi',
-- '78128 8400',
-- 52,
-- 'thiruvanmiyur',
-- 'working',
-- false
-- )

-- select * from customers
-- set sql_safe_updates = 0
-- update customers set phone_no = '78128 84003' where customer_id = 9
-- show tables
-- select * from customer_visits

-- alter table customer_visits drop column salesperson_id

-- insert into customer_visits (
-- visit_id,
-- customer_id,
-- visit_date,
-- visit_type,
-- intrested_model,
-- budjet_range,
-- purchase_intent_level,
-- primary_objection,
-- confidence_level,
-- decision_time_estimate,
-- test_drive_taken,
-- exchange_required
-- ) values (
-- 108,
--  8,
--  '2026-03-08',
--  'walk in',
--  'new creta', '18-25L', 'medium',
-- 'price', 4, 'warm',
-- 'yes', 'no'
-- )


-- insert into customer_visits (
-- visit_id,
-- customer_id,
-- visit_date,
-- visit_type,
-- intrested_model,
-- budjet_range,
-- purchase_intent_level,
-- primary_objection,
-- confidence_level,
-- decision_time_estimate,
-- test_drive_taken,
-- exchange_required
-- ) values
-- (
-- 109, 9, '2026-03-08', 'walk in', 'new venue', '9-12L', 'medium',
-- 'price', 4, 'warm',
-- 'no', 'yes'
-- )

-- select * from customer_visits
-- show tables
-- select * from follow_ups
-- insert into follow_ups (
-- followup_id,
-- visit_id,
-- f_date,
-- f_status,
-- next_fdate,
-- remarks
-- ) values(
-- 14, 108, '2026-03-08', 'intrested', '2026-03-12',
-- 'td / customer asking td venue too and he will let update for td'
-- ), (
-- 15, 109, '2026-03-08', 'intrested', '2026-03-11',
-- 'budjet below 11L and need to call on wedday for td and evaluation too'
-- ), (
-- 16, 105, '2026-03-09', 'booked', null, 'asking delivery on april 20th'
-- )

-- select * from follow_ups
-- update follow_ups set next_fdate = '2026-04-20' where f_status = 'booked'

-- alter table follow_ups drop column next_fdate

-- insert into follow_ups (
-- followup_id,
-- visit_id,
-- f_date,
-- f_status,
-- remarks
-- ) values(
-- 17, 101, '2026-03-09', 'no response',
-- 'td / customer asking td venue too and he will let update for td'
-- ), (
-- 18, 102, '2026-03-09', 'intrested',
-- 'budjet below 11L and need to call on wedday for td and evaluation too'
-- ), (
-- 19, 106, '2026-03-09', 
-- 'semistrated', 
-- 'he is thinking to buy because of he is planning to give the vehilve to his sister as suprise'
-- ), (
-- 20, 107, '2026-03-09', 'interested',
-- 'her palnning to buy only cng but also comparing other vehicls too so it may take time'
-- )

-- select * from follow_ups
-- show tables
 
-- select * from sales_outcomes
-- insert into sales_outcomes (
-- outcome_id,
-- visit_id,
-- booking_status,
-- booking_date,
-- final_price,
-- discount_given,
-- exchange_adjusted_amount,
-- follow_up_required
-- ) values (
-- 1, 105, 'booked', '2026-03-09', 945000.00,
-- 95000.00, null, '20th april delivery'
-- ) 

-- select * from sales_outcomes

-- select * from customers
-- insert into customers (
-- customer_id,
-- customer_name,
-- phone_no,
-- age,
-- location,
-- occupation,
-- repeat_customer
-- ) values (
-- 10, 'Mr.rakesh babu', '80723 64115', null,
-- null, null, null
-- ), (
-- 11, 'Mr.Prakash', '73050 42341', null, 'sholinganallur', 
-- 'tech mahindra', true
-- ), (
-- 12, 'Mr.karthik mano', '99403 04069', null, 'arasankazhani,',
-- null, false
-- ), (
-- 13, 'Mr.bujji babu', '80729 70221', null, 'kunrathur',
-- null, false
-- )

-- select * from customers
-- set sql_safe_updates = 0
-- update customers set age = 35 where customer_id = 10

-- select * from follow_ups


-- select * from customers

-- select customers.customer_name,
-- customer_visits.intrested_model
-- from customers
-- join customer_visits 
-- on customers.customer_id = customer_visits.customer_id
-- where budjet_range between 10 and 15 


-- select customers.customer_name,
-- customer_visits.intrested_model,
-- follow_ups.remarks
-- from customers
-- join customer_visits 
-- on customers.customer_id = customer_visits.customer_id
-- join follow_ups
-- on customer_visits.visit_id = follow_ups.visit_id
-- where budjet_range between 10 and 15 
-- order by remarks desc

-- select customers.customer_name,
-- customer_visits.intrested_model,
-- follow_ups.remarks
-- from customers
-- join customer_visits 
-- on customers.customer_id = customer_visits.customer_id
-- join follow_ups
-- on customer_visits.visit_id = follow_ups.visit_id
-- where budjet_range between 10 and 15 
-- order by customers.customer_name, follow_ups.remarks

-- select * from follow_ups
-- select * from visits

-- insert into visits (
-- visit_id, customer_id,visit_date, visit_type,
-- intrested_model, budjet_range, purchase_intent_level,
-- primary_objection, confidence_level,
-- decision_time_estimate, test_drive_taken,
-- exchange_required
-- ) values (
-- 114, 14, '2026-03-15', 'walk in', 'i20 IVT', '15-17L', 'medium',
-- 'price', 3, 'warm', 'no', 'no'
-- )

-- alter table visits change visit_date dateof date
-- alter table visits change visit_type TYPEoF varchar(100)
-- alter table visits change dateof DATEoF date
-- alter table visits change intrested_model MODEL varchar(100)
-- alter table visits change budjet_range BUDJET varchar(100)
-- alter table visits change purchase_intent_level INTENT varchar(100)
-- alter table visits change primary_objection OBJECTION varchar(100)
--  alter table visits change confidence CONFIDENCE int
-- alter table visits change decision_time_estimate DECISION varchar(100)
-- alter table visits change test_drive_taken DRIVE varchar(100)
-- alter table visits change exchange_required exchange varchar(100)
-- alter table visits change exchange EXCHANGE varchar(100)
-- alter table visits change exchange exchangein varchar(100)

-- select * from visits

-- insert into visits (
-- visit_id, customer_id,
-- dateof, typeof, model, budjet, intent, objection,
-- confidence,
-- decision, drive, exchangein
-- ) values (
-- 115, 15, '2026-03-16', 'walk in', 'i20 MT', '9-12L', 'medium', 'price', 3, 'warm',
-- 'no', 'no'
-- ), (
-- 116, 16, '2026-03-16', 'walk in', 'i20 MT', '10-16L','medium', 'price', 4.5, 'warm up',
-- 'no', 'yes'
-- ), (
-- 117, 17, '2026-03-16', 'walk in', 'venue MT', '10-13L', 'medium', 'price', 3, 'warm',
-- 'no', 'no'
-- ), (
-- 118, 18, '2026-03-16', 'walk in', 'aura taxi', '7-9L', 'high', 'price', 4, 'hot', 'no',
-- 'no'
-- )

-- select * from visits

-- update visits set model = 'creta MT' 
-- where model = 'new creta MT'

-- insert into customers (
-- customer_id, customer_name, phone_no, age,
-- location, occupation, repeat_customer
-- ) values (
-- 20, 'Mr.ashok', '9940184926', 32, 'velachery baby nagar', 'TCS',
-- false
-- )

-- insert into visits(
-- visit_id, customer_id, dateof, typeof, model, budjet, intent, objection, confidence, decision,
-- drive, exchangein
-- ) values (
-- 120, 20, '2026-03-23', 'walk in', 'venue MT', '10-13L', 'medium', 'price', 3 ,'warm', 'yes','no'
-- )

-- select * from followups
-- insert into followups(
-- followup_id, visit_id,
-- f_date, f_status, remarks
-- ) values (
-- 47, 118, '2026-03-23', 'booked', 'booked AURA prime succesfully'
-- )

-- insert into followups (
-- followup_id, visit_id, f_date, f_status, remarks
-- ) values (
-- 50,123, '2026-03-29','interested', 'he wants to see new exter then will choose the car '
-- )


-- select distinct customers.customer_name, visits.visit_id, model, occupation 
-- from  customers 
-- join visits 
-- on customers.customer_id = visits.customer_id
-- join followups
-- on visits.visit_id = followups.visit_id
-- where f_status = 'interested'

