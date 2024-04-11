-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema movies
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `movies` ;

-- -----------------------------------------------------
-- Schema movies
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `movies` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `movies` ;

-- -----------------------------------------------------
-- Table `movies`.`ratings`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies`.`ratings` ;

CREATE TABLE IF NOT EXISTS `movies`.`ratings` (
  `tconst` VARCHAR(55) NOT NULL,
  `average_rating` FLOAT NULL DEFAULT NULL,
  `number_of_votes` INT NULL DEFAULT NULL,
  PRIMARY KEY (`tconst`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `movies`.`title_basics`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies`.`title_basics` ;

CREATE TABLE IF NOT EXISTS `movies`.`title_basics` (
  `tconst` VARCHAR(55) NOT NULL,
  `primary_title` VARCHAR(255) NULL DEFAULT NULL,
  `start_year` INT NULL DEFAULT NULL,
  `runtime` BIGINT NULL DEFAULT NULL,
  PRIMARY KEY (`tconst`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `movies`.`title_has_genres`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies`.`title_has_genres` ;

CREATE TABLE IF NOT EXISTS `movies`.`title_has_genres` (
  `tconst` VARCHAR(55) NULL DEFAULT NULL,
  `genre_id` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `movies`.`genres`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies`.`genres` ;

CREATE TABLE IF NOT EXISTS `movies`.`genres` (
  `genre_name` VARCHAR(55) NULL DEFAULT NULL,
  `genre_id` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `movies`.`tmdb_data`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies`.`tmdb_data` ;

CREATE TABLE IF NOT EXISTS `movies`.`tmdb_data` (
  `imdb_id` CHAR(11) NOT NULL,
  `revenue` FLOAT NULL DEFAULT NULL,
  `budget` FLOAT NULL DEFAULT NULL,
  `certification` CHAR(11) NULL DEFAULT NULL,
  PRIMARY KEY (`imdb_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
