-- Temitope Adebiyi(A00277004)
-- &
-- Goonja Gandhi(A00277328)

-- Insert data into members
INSERT INTO `local_library`.`members` (`member_first_name`, `member_last_name`, `member_joining_date`, `member_phone_no`, `member_email_id`, `member_address_line_1`, `member_state`, `member_city`, `member_country`) VALUES
  ('Alice', 'Johnson', NOW(), '123-456-7890', 'alice@example.com', '123 Main St', 'Ontario', 'Sudbury', 'Canada'),
  ('Bob', 'Smith', NOW(), '987-654-3210', 'bob@example.com', '456 Elm St', 'Ontario', 'Sudbury', 'Canada'),
  ('Charlie', 'Williams', NOW(), '555-123-4567', 'charlie@example.com', '789 Oak St', 'Ontario', 'Sudbury', 'Canada'),
  ('David', 'Brown', DATE_SUB(NOW(), INTERVAL -1 MONTH), '111-222-3333', 'david@example.com', '567 Maple Ave', 'Ontario', 'Sudbury', 'Canada'),
  ('Emma', 'Davis', DATE_SUB(NOW(), INTERVAL -2 MONTH), '777-888-9999', 'emma@example.com', '890 Pine Rd', 'Ontario', 'Sudbury', 'Canada'),
  ('Oliver', 'Miller', DATE_SUB(NOW(), INTERVAL -3 MONTH), '333-444-5555', 'oliver@example.com', '234 Birch Ln', 'Ontario', 'Sudbury', 'Canada'),
  ('Sophia', 'Smith', DATE_SUB(NOW(), INTERVAL -4 MONTH), '999-888-7777', 'sophia@example.com', '678 Cedar St', 'Ontario', 'Sudbury', 'Canada'),
  ('Liam', 'Johnson', DATE_SUB(NOW(), INTERVAL -5 MONTH), '444-555-6666', 'liam@example.com', '567 Oak St', 'Ontario', 'Sudbury', 'Canada'),
  ('Ava', 'Brown', DATE_SUB(NOW(), INTERVAL -6 MONTH), '222-333-4444', 'ava@example.com', '345 Elm Ave', 'Ontario', 'Sudbury', 'Canada'),
  ('Noah', 'Taylor', DATE_SUB(NOW(), INTERVAL -7 MONTH), '888-777-6666', 'noah@example.com', '456 Pine Rd', 'Ontario', 'Sudbury', 'Canada'),
  ('James', 'Williams', DATE_SUB(NOW(), INTERVAL -8 MONTH), '111-222-3333', 'james@example.com', '789 Maple Ave', 'Ontario', 'Sudbury', 'Canada'),
  ('Ella', 'Davis', DATE_SUB(NOW(), INTERVAL -9 MONTH), '777-888-9999', 'ella@example.com', '890 Oak St', 'Ontario', 'Sudbury', 'Canada'),
  ('Lucas', 'Miller', DATE_SUB(NOW(), INTERVAL -10 MONTH), '333-444-5555', 'lucas@example.com', '234 Pine Rd', 'Ontario', 'Sudbury', 'Canada'),
  ('Mia', 'Smith', DATE_SUB(NOW(), INTERVAL -11 MONTH), '999-888-7777', 'mia@example.com', '678 Elm Ave', 'Ontario', 'Sudbury', 'Canada'),
  ('Benjamin', 'Johnson', DATE_SUB(NOW(), INTERVAL -12 MONTH), '444-555-6666', 'benjamin@example.com', '567 Birch Ln', 'Ontario', 'Sudbury', 'Canada'),
  ('Evelyn', 'Brown', DATE_SUB(NOW(), INTERVAL -13 MONTH), '222-333-4444', 'evelyn@example.com', '345 Cedar St', 'Ontario', 'Sudbury', 'Canada'),
  ('William', 'Taylor', DATE_SUB(NOW(), INTERVAL -14 MONTH), '888-777-6666', 'william@example.com', '456 Oak St', 'Ontario', 'Sudbury', 'Canada'),
  ('Grace', 'Williams', DATE_SUB(NOW(), INTERVAL -15 MONTH), '111-222-3333', 'grace@example.com', '789 Pine Rd', 'Ontario', 'Sudbury', 'Canada'),
  ('Henry', 'Davis', DATE_SUB(NOW(), INTERVAL -16 MONTH), '777-888-9999', 'henry@example.com', '890 Elm Ave', 'Ontario', 'Sudbury', 'Canada'),
  ('Victoria', 'Miller', DATE_SUB(NOW(), INTERVAL -17 MONTH), '333-444-5555', 'victoria@example.com', '234 Birch Ln', 'Ontario', 'Sudbury', 'Canada'),
  ('Daniel', 'Smith', DATE_SUB(NOW(), INTERVAL -18 MONTH), '999-888-7777', 'daniel@example.com', '678 Cedar St', 'Ontario', 'Sudbury', 'Canada');

-- Insert data into book_categories
INSERT INTO `local_library`.`book_categories` (`book_category_name`) VALUES
  ('Fiction'),
  ('Non-Fiction'),
  ('Science Fiction'),
  ('Mystery'),
  ('Romance'),
  ('Biography'),
  ('History'),
  ('Fantasy'),
  ('Thriller'),
  ('Self-Help');

-- Insert data into books a flag for checkout or if the book is in libriary incase the new book arrives late thats why
INSERT INTO `local_library`.`books` (`book_title`, `book_checked_out`, `book_in_library`, `book_category_id`)
VALUES
  ('Pride and Prejudice', 'N', 'N', 1), -- 1 New
  ('Jane Eyre', 'Y', 'N', 1), -- 2 Checked out
  ('Sapiens: A Brief History of Humankind', 'Y', 'N', 2), -- 3 Checked out
  ('The Immortal Life of Henrietta Lacks', 'Y', 'N', 2), -- 4 Checkout
  ('Dune', 'Y', 'N', 3), -- 5 Checked out
  ('Foundation', 'Y', 'N', 3), -- 6 Checkout
  ('The Girl with the Dragon Tattoo', 'Y', 'N', 4), -- 7 Checkout
  ('Gone Girl', 'N', 'Y', 4), -- 8 In library
  ('Pride and Prejudice', 'Y', 'N', 5), -- 9 Checked out
  ('The Notebook', 'N', 'N', 5), -- 10 New
  ('Steve Jobs', 'N', 'Y', 6), -- 11 in Library
  ('Becoming', 'Y', 'N', 6), -- 12 checkout
  ('A People''s History of the United States', 'N', 'Y', 7), -- 13 in Library
  ('The Guns of August', 'N', 'Y', 7), -- 14 in library
  ('Harry Potter and the Sorcerer''s Stone', 'N', 'N', 8), -- 15 New
  ('Game of Thrones', 'Y', 'N', 8), -- 16 Checked out
  ('The Da Vinci Code', 'Y', 'N', 9), -- 17 Checkout
  ('The Girl on the Train', 'Y', 'N', 9), -- 18 Checked out
  ('Awaken the Giant Within', 'Y', 'N', 10), -- 19 Checkout
  ('The Power of Now', 'N', 'N', 10),-- 20 New book
  ('Sense and Sensibility', 'N', 'N', 1), -- 21 New book
  ('Emma', 'Y', 'N', 1), -- 22 Checked out
  ('Neuromancer', 'Y', 'N', 3), -- 23 Checked out
   ('Snow Crash', 'Y', 'N', 3); -- 24 Checked out
  
-- Insert data into author
INSERT INTO `local_library`.`author` (`author_first_name`, `author_last_name`)
VALUES
  ('Jane', 'Austen'),
  ('Charlotte', 'Brontë'),
  ('Yuval', 'Noah Harari'),
  ('Rebecca', 'Skloot'),
  ('Frank', 'Herbert'),
  ('Isaac', 'Asimov'),
  ('Stieg', 'Larsson'),
  ('Gillian', 'Flynn'),
  ('Jane', 'Austen'),
  ('Nicholas', 'Sparks'),
  ('Walter', 'Isaacson'),
  ('Michelle', 'Obama'),
  ('Howard', 'Zinn'),
  ('Barbara', 'Tuchman'),
  ('J.K.', 'Rowling'),
  ('George', 'R.R. Martin'),
  ('Dan', 'Brown'),
  ('Paula', 'Hawkins'),
  ('Tony', 'Robbins'),
  ('Eckhart', 'Tolle'),
  ('William', 'Gibson'),
  ('Neal', 'Stephenson');

-- Insert data into books_authors
INSERT INTO `local_library`.`books_authors` (`books_id`, `author_id`)
VALUES
  (1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
  (6, 6), (7, 7), (8, 8), (9, 1), (10, 9),
  (11, 10), (12, 11), (13, 12), (14, 13), (15, 14),
  (16, 15), (17, 16), (18, 17), (19, 18), (20, 19), (22, 1), (23, 21), (24, 22);
  
  -- Insert data into checkout
INSERT INTO `local_library`.`checkout` (`checkout_date`, `due_date`, `membership_card_id`)
VALUES
(DATE_SUB(NOW(), INTERVAL 5 DAY), DATE_ADD(NOW(), INTERVAL -10 DAY), 1),
  (DATE_SUB(NOW(), INTERVAL 10 DAY), DATE_ADD(NOW(), INTERVAL 20 DAY), 2),
  (DATE_SUB(NOW(), INTERVAL 5 DAY), DATE_ADD(NOW(), INTERVAL 25 DAY), 3),
  (DATE_SUB(NOW(), INTERVAL 10 DAY), DATE_ADD(NOW(), INTERVAL -30 DAY), 4),
  (DATE_SUB(NOW(), INTERVAL 20 DAY), DATE_ADD(NOW(), INTERVAL 35 DAY), 5),
  (DATE_SUB(NOW(), INTERVAL 10 DAY), DATE_ADD(NOW(), INTERVAL -40 DAY), 6),
  (DATE_SUB(NOW(), INTERVAL 5 DAY), DATE_ADD(NOW(), INTERVAL -45 DAY), 7),
  (DATE_SUB(NOW(), INTERVAL 30 DAY), DATE_ADD(NOW(), INTERVAL -50 DAY), 8),
  (DATE_SUB(NOW(), INTERVAL 25 DAY), DATE_ADD(NOW(), INTERVAL -55 DAY), 9),
  (DATE_SUB(NOW(), INTERVAL 10 DAY), DATE_ADD(NOW(), INTERVAL 60 DAY), 10),
  (DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 60 DAY), 1),
  (DATE_SUB(NOW(), INTERVAL 10 DAY), DATE_ADD(NOW(), INTERVAL 60 DAY), 1),
  (DATE_SUB(NOW(), INTERVAL 10 DAY), DATE_ADD(NOW(), INTERVAL 60 DAY), 21),
  (DATE_SUB(NOW(), INTERVAL 5 DAY), DATE_ADD(NOW(), INTERVAL -10 DAY), 20);


-- Insert data into checkout_items
INSERT INTO `local_library`.`checkout_items` (`checkout_id`, `book_id`)
VALUES
   (1, 3),
   (14, 3),
    (13, 3),
  (1, 5),
  (2, 7),
  (2, 9),
  (3, 12),
  (3, 16),
  (4, 17),
  (4, 2),
  (5, 4),
  (5, 6),
  (11, 22),
  (12, 23),
  (13, 24);

-- Insert data into members_book_intrests
INSERT INTO `local_library`.`members_book_intrests` (`book_category_id`, `membership_card_id`)
VALUES
 (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7),
  (8, 8),
  (9, 9),
  (10, 10),
  (1, 10),
  (1, 11),
  (1, 12),
  (1, 13),
  (2, 14),
  (4, 15),
  (1, 16),
  (2, 18),
  (1, 19),
  (2, 20);
  
  -- Insert data into book_request_item for book IDs 1, 10, and 20
INSERT INTO `local_library`.`book_request_item` (`book_id`, `new_book_arrival_date`)
VALUES
  (1, DATE_SUB(NOW(), INTERVAL -12 DAY)),
  (10, DATE_SUB(NOW(), INTERVAL -20 DAY)),
  (20, DATE_SUB(NOW(), INTERVAL 15 DAY)),
 (21, DATE_SUB(NOW(), INTERVAL 22 DAY)); 
 
-- Insert data into members_book_requests for book_request_item entries
INSERT INTO `local_library`.`members_book_requests` (`membership_card_id`, `book_request_id`)
VALUES
  (1, 1), 
  (2, 2), 
  (3, 3);




