-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


-- -----------------------------------------------------
-- Schema spotify
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema spotify
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `spotify` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `spotify` ;

-- -----------------------------------------------------
-- Table `spotify`.`artistas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`artistas` (
  `Artist` TEXT NOT NULL,
  `Genre` TEXT NULL DEFAULT NULL,
  `Nacimiento_formacion` TEXT NULL DEFAULT NULL,
  `Nacionalidad_origen` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`Artist`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `spotify`.`albums`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`albums` (
  `Year` INT NULL DEFAULT NULL,
  `Ranking` INT NULL DEFAULT NULL,
  `Artist` TEXT NULL DEFAULT NULL,
  `Album` TEXT NULL DEFAULT NULL,
  `Worldwide Sales` TEXT NULL DEFAULT NULL,
  `CDs` INT NULL DEFAULT NULL,
  `Tracks` INT NULL DEFAULT NULL,
  `Genre` TEXT NULL DEFAULT NULL,
  `album_id` TEXT NOT NULL,
  `popularity` INT NULL DEFAULT NULL,
  `artistas_Artist` TEXT NOT NULL,
  PRIMARY KEY (`album_id`, `artistas_Artist`),
  INDEX `fk_albums_artistas1_idx` (`artistas_Artist` ASC) VISIBLE,
  CONSTRAINT `fk_albums_artistas1`
    FOREIGN KEY (`artistas_Artist`)
    REFERENCES `spotify`.`artistas` (`Artist`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `spotify`.`canciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`canciones` (
  `Artist` TEXT NOT NULL,
  `Album` TEXT NULL DEFAULT NULL,
  `album_id` TEXT NULL DEFAULT NULL,
  `Cancion 1` TEXT NULL DEFAULT NULL,
  `Cancion 2` TEXT NULL DEFAULT NULL,
  `Cancion 3` TEXT NULL DEFAULT NULL,
  `Cancion 4` TEXT NULL DEFAULT NULL,
  `Cancion 5` TEXT NULL DEFAULT NULL,
  `Cancion 6` TEXT NULL DEFAULT NULL,
  `Cancion 7` TEXT NULL DEFAULT NULL,
  `Cancion 8` TEXT NULL DEFAULT NULL,
  `Cancion 9` TEXT NULL DEFAULT NULL,
  `Cancion 10` TEXT NULL DEFAULT NULL,
  `Cancion 11` TEXT NULL DEFAULT NULL,
  `Cancion 12` TEXT NULL DEFAULT NULL,
  `Cancion 13` TEXT NULL DEFAULT NULL,
  `Cancion 14` TEXT NULL DEFAULT NULL,
  `Cancion 15` TEXT NULL DEFAULT NULL,
  `Cancion 16` TEXT NULL DEFAULT NULL,
  `Cancion 17` TEXT NULL DEFAULT NULL,
  `Cancion 18` TEXT NULL DEFAULT NULL,
  `Cancion 19` TEXT NULL DEFAULT NULL,
  `Cancion 20` TEXT NULL DEFAULT NULL,
  `albums_album_id` TEXT NOT NULL,
  PRIMARY KEY (`Artist`, `albums_album_id`),
  INDEX `fk_canciones_albums_idx` (`albums_album_id` ASC) VISIBLE,
  CONSTRAINT `fk_canciones_albums`
    FOREIGN KEY (`albums_album_id`)
    REFERENCES `spotify`.`albums` (`album_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
