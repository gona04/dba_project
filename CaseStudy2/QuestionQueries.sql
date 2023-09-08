-- Temitope Adebiyi(A00277004)
-- &
-- Goonja Gandhi(A00277328)

-- -----------------------------------------------------
-- QUESTION 1 Caculating over_due amount and days and showing the amount
-- -----------------------------------------------------

-- Seting the over_due days
UPDATE checkout
SET over_due_days = DATEDIFF(due_date, NOW())
WHERE due_date > NOW()
AND checkout_id > 0; -- The update query has a safety lock so this condition is necessary if that is not disabled

-- Calculating the over_due_amount
UPDATE checkout 
SET over_due_amount = CAST(over_due_days AS DECIMAL(10, 2)) * 0.50
WHERE over_due_days != 0 
AND checkout_id != 0; -- The update query has a safety lock so this condition is necessary if that is not disabled

-- SELECT query to see all the over due amount and details to call the member accordingly
SELECT 
over_due_days AS 'Delayed Days',
over_due_amount AS 'Amount Due',
CONCAT(member_first_name, ' ', member_last_name) AS "Members' Name",
member_phone_no AS 'Phone Number', 
member_email_id AS 'Email Id',
CONCAT(member_address_line_1, ' ', member_city, ' ', member_state) AS 'Address'
FROM 
checkout 
JOIN members USING(membership_card_id)
WHERE over_due_amount != 0;

-- -----------------------------------------------------
-- QUESTION 2 Search for a book with very little book title that they remember using LIKE key word
-- -----------------------------------------------------

SELECT 
*
FROM books
WHERE book_checked_out = 'N'
AND book_title LIKE '%p%';

-- -----------------------------------------------------
-- QUESTION 3 Top 10 checkouts
-- -----------------------------------------------------
SELECT
  b.book_title,
  COUNT(*) AS checkout_count
FROM
  checkout c
JOIN
  checkout_items ci ON c.checkout_id = ci.checkout_id
JOIN
  books b ON ci.book_id = b.book_id
WHERE
  c.checkout_date BETWEEN '2023-08-01' AND NOW()
GROUP BY
  b.book_title
ORDER BY
  checkout_count DESC
LIMIT 10;

-- -----------------------------------------------------
-- Question 4 Most popular day of the week
-- ----------------------------------------------------- 
SELECT
  DAYNAME(c.checkout_date) AS day_of_week,
  COUNT(*) AS visit_count
FROM
  checkout c
JOIN
  checkout_items ci ON c.checkout_id = ci.checkout_id
GROUP BY
  day_of_week
ORDER BY
  visit_count DESC
LIMIT 1;

-- -----------------------------------------------------
-- Question 5 Most popular book category
-- ----------------------------------------------------- 
SELECT 
	book_category_name,
    COUNT(*) AS 'No Of People Intrested'
FROM 
members AS m
JOIN members_book_intrests AS mi USING(membership_card_id)
JOIN book_categories AS c USING(book_category_id)
GROUP BY 
book_category_name
ORDER BY 
 COUNT(*) DESC
LIMIT 1;