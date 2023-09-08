-- Temitope Adebiyi(A00277004)
-- &
-- Goonja Gandhi(A00277328)

-- Delete data from checkout_items
DELETE FROM `local_library`.`checkout_items` WHERE `checkout_id` IN (SELECT `checkout_id` FROM `local_library`.`checkout` WHERE `membership_card_id` = 1);

-- Delete data from checkout
DELETE FROM `local_library`.`checkout` WHERE `membership_card_id` = 1;

-- Delete data from members_book_intrests
DELETE FROM `local_library`.`members_book_intrests` WHERE `membership_card_id` = 1;

-- Delete data from books
DELETE FROM `local_library`.`books` WHERE `book_request_item_book_request_id` IN (SELECT `members_book_requests_id` FROM `local_library`.`members_book_requests` WHERE `membership_card_id` = 1);


-- Delete data from members_book_requests
DELETE FROM `local_library`.`members_book_requests` WHERE `membership_card_id` = 1;

-- Delete data from book_request_item
DELETE FROM `local_library`.`book_request_item` WHERE `member_book_requests` IN (SELECT `members_book_requests_id` FROM `local_library`.`members_book_requests` WHERE `membership_card_id` = 1);

-- Delete data from books_authors
DELETE FROM `local_library`.`books_authors` WHERE `books_id` IN (SELECT `book_id` FROM `local_library`.`books` WHERE `book_request_item_book_request_id` IN (SELECT `members_book_requests_id` FROM `local_library`.`members_book_requests` WHERE `membership_card_id` = 1));


-- Delete data from members
DELETE FROM `local_library`.`members` WHERE `membership_card_id` = 1;