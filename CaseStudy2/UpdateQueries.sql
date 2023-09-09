
-- Update data in book_categories
UPDATE `local_library`.`book_categories` SET `book_category_name` = 'New Fiction' WHERE `book_category_id` = 1;
UPDATE `local_library`.`book_categories` SET `book_category_name` = 'Technology' WHERE `book_category_id` = 2;
UPDATE `local_library`.`book_categories` SET `book_category_name` = 'Horror' WHERE `book_category_id` = 3;

-- Update data in author
UPDATE `local_library`.`author` SET `author_first_name` = 'Mark', `author_last_name` = 'Johnson' WHERE `author_id` = 1;
UPDATE `local_library`.`author` SET `author_first_name` = 'Lisa', `author_last_name` = 'Davis' WHERE `author_id` = 2;
UPDATE `local_library`.`author` SET `author_first_name` = 'Alex', `author_last_name` = 'Wilson' WHERE `author_id` = 3;

-- Update data in members
UPDATE `local_library`.`members` SET `member_first_name` = 'Ethan', `member_last_name` = 'Robinson' WHERE `membership_card_id` = 1;
UPDATE `local_library`.`members` SET `member_first_name` = 'Sophie', `member_last_name` = 'Adams' WHERE `membership_card_id` = 2;
UPDATE `local_library`.`members` SET `member_first_name` = 'Jackson', `member_last_name` = 'Lewis' WHERE `membership_card_id` = 3;

-- Update data in members_book_requests
UPDATE `local_library`.`members_book_requests` SET `membership_card_id` = 4 WHERE `members_book_requests_id` = 1;
UPDATE `local_library`.`members_book_requests` SET `membership_card_id` = 5 WHERE `members_book_requests_id` = 2;
UPDATE `local_library`.`members_book_requests` SET `membership_card_id` = 6 WHERE `members_book_requests_id` = 3;

-- Update data in book_request_item
UPDATE `local_library`.`book_request_item` SET `book_id` = 3 WHERE `member_book_requests` = 1;
UPDATE `local_library`.`book_request_item` SET `book_id` = 4 WHERE `member_book_requests` = 2;
UPDATE `local_library`.`book_request_item` SET `book_id` = 5 WHERE `member_book_requests` = 3;


-- Update data in books
UPDATE `local_library`.`books` SET `book_title` = 'new Book 1' WHERE `book_id` = 22;
UPDATE `local_library`.`books` SET `book_title` = 'Updated Book 2' WHERE `book_id` = 23;
UPDATE `local_library`.`books` SET `book_title` = 'Updated Book 3' WHERE `book_id` = 24;

-- Update data in members_book_intrests
UPDATE `local_library`.`members_book_intrests` SET `book_catergory_id` = 4 WHERE `members_book_intrests_id` = 1;
UPDATE `local_library`.`members_book_intrests` SET `book_catergory_id` = 5 WHERE `members_book_intrests_id` = 2;
UPDATE `local_library`.`members_book_intrests` SET `book_catergory_id` = 6 WHERE `members_book_intrests_id` = 3;

-- Update data in checkout
UPDATE `local_library`.`checkout` SET `over_due_amount` = 2.50 WHERE `checkout_id` = 1;
UPDATE `local_library`.`checkout` SET `over_due_amount` = 1.75 WHERE `checkout_id` = 2;
UPDATE `local_library`.`checkout` SET `over_due_amount` = 3.00 WHERE `checkout_id` = 3;

-- Update data in checkout_items
UPDATE `local_library`.`checkout_items` SET `book_id` = 6 WHERE `checkout_items_id` = 1;
UPDATE `local_library`.`checkout_items` SET `book_id` = 7 WHERE `checkout_items_id` = 2;
UPDATE `local_library`.`checkout_items` SET `book_id` = 8 WHERE `checkout_items_id` = 3;

-- Update data in books_authors
UPDATE `local_library`.`books_authors` SET `author_id` = 4 WHERE `books_authors_id` = 1;
UPDATE `local_library`.`books_authors` SET `author_id` = 5 WHERE `books_authors_id` = 2;
UPDATE `local_library`.`books_authors` SET `author_id` = 6 WHERE `books_authors_id` = 3;
