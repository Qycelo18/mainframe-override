-- show all authors that mention both "emptystack" and "dad" in the content of their post
SELECT author, content FROM forum_posts WHERE content ILIKE '%emptystack%' AND content ILIKE '%dad%';
-- author  smart-money-44 made a post that tells people to invest in empystack solutions because his dad
-- works there and has serious inside intel


-- finds the last name of the author that made the post
SELECT last_name FROM forum_accounts WHERE username = 'smart-money-44';
-- authors last name is Steele, which is the same as his father which works for emptystack solutions


-- finds all other users with the same last name as the author of the post
SELECT username, first_name FROM forum_accounts WHERE last_name = 'Steele';
-- there are 2 other users with the last name Steele


-- finds all the information about emptystack acoounts with the last name Steele
SELECT * FROM emptystack_accounts WHERE last_name = 'Steele'; 
-- there are 2 accounts with the last name Steele, but only one has a first name of Andrew that matches the 
-- first name of a forum account. The other emptystack account holder does not have a forum account
-- the username of the correct emptystack account is  "triple-cart-38"
--the password is "password456"


-- gets the username of the account that sent the massage mentioning the taxi project, as well 
-- as the project code
SELECT "from", body FROM emptystack_messages WHERE body ILIKE '%taxi%';
-- admin account = your-boss-99
-- project code = TAXI


-- finds account information for the account that sent the message about the taxi projext
SELECT * FROM emptystack_accounts WHERE username = 'your-boss-99';
-- name = Skylar Singer
-- password = notagaincarter


--finds the project id for the taxi project
SELECT id FROM emptystack_projects WHERE code = 'TAXI';
--id =  DczE0v2b