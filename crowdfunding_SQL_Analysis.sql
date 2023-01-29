-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
-- select cf_id, backers_count
-- from campaign
-- where outcome = 'live'
-- order by backers_count desc

-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.

-- select cf_id, count(cf_id)
-- from backers
-- group by cf_id
-- order by count desc



-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 

-- select c.first_name, c.last_name, c.email,ca.goal - ca.pledged as remaining_goal_amount
-- into email_contacts_remaining_goal_amount
-- from contacts c
-- left join campaign ca on (c.contact_id = ca.contact_id)
-- where ca.outcome = 'live'
-- order by remaining_goal_amount desc


-- Check the table
-- select *
-- from email_contacts_remaining_goal_amount

-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 

--The instruction say to have backer's email address in descending order but the picture module instructions that we're
-- supposed to match have the last name field in ascending order. This is what I did with the below SQL query.

-- select distinct b.email,b.first_name, b.last_name,b.cf_id,ca.company_name,ca.end_date, ca.description,ca.goal - ca.pledged as Left_of_goal
-- into email_backers_remaining_goal_amount
-- from campaign ca
-- left join backers b on (ca.cf_id = b.cf_id)
-- where ca.outcome = 'live'
-- order by b.last_name

-- Check the table
-- select *
-- from email_backers_remaining_goal_amount