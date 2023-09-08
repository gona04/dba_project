-- MySQL Script generated by MySQL Workbench
-- Wed Aug 16 10:20:42 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering
-- Temitope Adebiyi(A00277004)
-- &
-- Goonja Gandhi(A00277328)


SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema local_library
-- -----------------------------------------------------
-- This is a schema for the local_library Case Study 2
DROP SCHEMA IF EXISTS `local_library` ;

-- -----------------------------------------------------
-- Schema local_library
--
-- This is a schema for the local_library Case Study 2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `local_library` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema new_schema1
-- -----------------------------------------------------
USE `local_library` ;

-- -----------------------------------------------------
-- Table `local_library`.`members`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `local_library`.`members` ;

CREATE TABLE IF NOT EXISTS `local_library`.`members` (
  `membership_card_id` INT NOT NULL AUTO_INCREMENT,
  `member_first_name` VARCHAR(50) NOT NULL,
  `member_last_name` VARCHAR(50) NOT NULL,
  `member_joining_date` DATETIME NOT NULL,
  `member_phone_no` VARCHAR(12) NOT NULL,
  `member_email_id` VARCHAR(100) NOT NULL,
  `member_address_line_1` VARCHAR(100) NOT NULL,
  `member_state` VARCHAR(50) NOT NULL DEFAULT 'Ontario',
  `member_city` VARCHAR(50) NOT NULL DEFAULT 'Sudbury',
  `member_country` VARCHAR(50) NOT NULL DEFAULT 'Canada',
  PRIMARY KEY (`membership_card_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `local_library`.`book_categories`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `local_library`.`book_categories` ;

CREATE TABLE IF NOT EXISTS `local_library`.`book_categories` (
  `book_category_id` INT NOT NULL AUTO_INCREMENT,
  `book_category_name` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`book_category_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `local_library`.`books`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `local_library`.`books` ;

CREATE TABLE IF NOT EXISTS `local_library`.`books` (
  `book_id` INT NOT NULL AUTO_INCREMENT,
  `book_title` VARCHAR(300) NOT NULL,
  `book_checked_out` VARCHAR(1) NOT NULL DEFAULT 'N',
  `book_in_library` VARCHAR(1) NOT NULL DEFAULT 'N',
  `book_category_id` INT NOT NULL,
  PRIMARY KEY (`book_id`),
  INDEX `fk_books_book_categories_idx` (`book_category_id` ASC) VISIBLE,
  CONSTRAINT `fk_books_book_categories`
    FOREIGN KEY (`book_category_id`)
    REFERENCES `local_library`.`book_categories` (`book_category_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `local_library`.`members_book_intrests`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `local_library`.`members_book_intrests` ;

CREATE TABLE IF NOT EXISTS `local_library`.`members_book_intrests` (
  `members_book_intrests_id` INT NOT NULL AUTO_INCREMENT,
  `membership_card_id` INT NOT NULL,
  `book_category_id` INT NOT NULL,
  PRIMARY KEY (`members_book_intrests_id`),
  INDEX `fk_members_book_intrests_members1_idx` (`membership_card_id` ASC) VISIBLE,
  INDEX `fk_members_book_intrests_book_categories1_idx` (`book_category_id` ASC) VISIBLE,
  CONSTRAINT `fk_members_book_intrests_members1`
    FOREIGN KEY (`membership_card_id`)
    REFERENCES `local_library`.`members` (`membership_card_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_members_book_intrests_book_categories1`
    FOREIGN KEY (`book_category_id`)
    REFERENCES `local_library`.`book_categories` (`book_category_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `local_library`.`book_request_item`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `local_library`.`book_request_item` ;

CREATE TABLE IF NOT EXISTS `local_library`.`book_request_item` (
  `book_request_id` INT NOT NULL AUTO_INCREMENT,
  `book_id` INT NOT NULL,
  `new_book_arrival_date` DATETIME NULL,
  PRIMARY KEY (`book_request_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `local_library`.`members_book_requests`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `local_library`.`members_book_requests` ;

CREATE TABLE IF NOT EXISTS `local_library`.`members_book_requests` (
  `members_book_requests_id` INT NOT NULL AUTO_INCREMENT,
  `membership_card_id` INT NOT NULL,
  `book_request_id` INT NOT NULL,
  PRIMARY KEY (`members_book_requests_id`),
  INDEX `fk_members_book_requests_members1_idx` (`membership_card_id` ASC) VISIBLE,
  INDEX `fk_members_book_requests_book_request_item1_idx` (`book_request_id` ASC) VISIBLE,
  CONSTRAINT `fk_members_book_requests_members1`
    FOREIGN KEY (`membership_card_id`)
    REFERENCES `local_library`.`members` (`membership_card_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_members_book_requests_book_request_item1`
    FOREIGN KEY (`book_request_id`)
    REFERENCES `local_library`.`book_request_item` (`book_request_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `local_library`.`author`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `local_library`.`author` ;

CREATE TABLE IF NOT EXISTS `local_library`.`author` (
  `author_id` INT NOT NULL AUTO_INCREMENT,
  `author_first_name` VARCHAR(50) NOT NULL,
  `author_last_name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`author_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `local_library`.`books_authors`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `local_library`.`books_authors` ;

CREATE TABLE IF NOT EXISTS `local_library`.`books_authors` (
  `books_authors_id` INT NOT NULL AUTO_INCREMENT,
  `books_id` INT NOT NULL,
  `author_id` INT NOT NULL,
  PRIMARY KEY (`books_authors_id`),
  INDEX `fk_books_authors_author1_idx` (`author_id` ASC) VISIBLE,
  INDEX `fk_books_authors_books1_idx` (`books_id` ASC) VISIBLE,
  CONSTRAINT `fk_books_authors_author1`
    FOREIGN KEY (`author_id`)
    REFERENCES `local_library`.`author` (`author_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_books_authors_books1`
    FOREIGN KEY (`books_id`)
    REFERENCES `local_library`.`books` (`book_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `local_library`.`checkout`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `local_library`.`checkout` ;

CREATE TABLE IF NOT EXISTS `local_library`.`checkout` (
  `checkout_id` INT NOT NULL AUTO_INCREMENT,
  `checkout_date` DATE NOT NULL,
  `due_date` DATE NOT NULL,
  `over_due_amount` DECIMAL(2) NOT NULL DEFAULT 0.00,
  `over_due_days` INT NOT NULL DEFAULT 0,
  `membership_card_id` INT NOT NULL,
  PRIMARY KEY (`checkout_id`),
  INDEX `fk_checkout_members1_idx` (`membership_card_id` ASC) VISIBLE,
  CONSTRAINT `fk_checkout_members1`
    FOREIGN KEY (`membership_card_id`)
    REFERENCES `local_library`.`members` (`membership_card_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `local_library`.`checkout_items`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `local_library`.`checkout_items` ;

CREATE TABLE IF NOT EXISTS `local_library`.`checkout_items` (
  `checkout_items_id` INT NOT NULL AUTO_INCREMENT,
  `checkout_id` INT NOT NULL,
  `book_id` INT NOT NULL,
  PRIMARY KEY (`checkout_items_id`),
  INDEX `fk_checkout_items_checkout1_idx` (`checkout_id` ASC) VISIBLE,
  INDEX `fk_checkout_items_books1_idx` (`book_id` ASC) VISIBLE,
  CONSTRAINT `fk_checkout_items_checkout1`
    FOREIGN KEY (`checkout_id`)
    REFERENCES `local_library`.`checkout` (`checkout_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_checkout_items_books1`
    FOREIGN KEY (`book_id`)
    REFERENCES `local_library`.`books` (`book_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;