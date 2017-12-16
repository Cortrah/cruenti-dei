SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `MinTest` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `MinTest` ;

-- -----------------------------------------------------
-- Table `MinTest`.`terraintype`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `MinTest`.`terraintype` (
  `terraintype_id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(255) NULL ,
  `code` VARCHAR(5) NULL ,
  `land_cost` INT NULL ,
  `air_cost` INT NULL ,
  `naval_cost` INT NULL ,
  `display_symbol` VARCHAR(45) NULL ,
  `displayx` INT NULL ,
  `displayy` INT NULL ,
  `terraintypedescription` TEXT NULL ,
  PRIMARY KEY (`terraintype_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MinTest`.`region`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `MinTest`.`region` (
  `region_id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(255) NULL ,
  `terraintype_id` INT NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`region_id`) ,
  INDEX `terraintype_id` (`terraintype_id` ASC) ,
  CONSTRAINT `Terraintype_id`
    FOREIGN KEY (`terraintype_id` )
    REFERENCES `MinTest`.`terraintype` (`terraintype_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MinTest`.`bordertype`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `MinTest`.`bordertype` (
  `bordertype_id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(255) NULL ,
  `code` VARCHAR(5) NULL ,
  `land_cost` INT NULL ,
  `air_cost` VARCHAR(45) NULL ,
  `naval_cost` VARCHAR(45) NULL ,
  `bordertype_effect` TEXT NULL ,
  PRIMARY KEY (`bordertype_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MinTest`.`regionneighbor`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `MinTest`.`regionneighbor` (
  `regionsneighbors_id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(255) NULL ,
  `source_id` INT NULL ,
  `sink_id` INT NULL ,
  `bordertype_id` INT NULL ,
  `is_directional` INT NULL DEFAULT 0 ,
  `is_secret` INT NULL DEFAULT 0 ,
  PRIMARY KEY (`regionsneighbors_id`) ,
  INDEX `source_id` (`source_id` ASC) ,
  INDEX `sink_id` (`sink_id` ASC) ,
  INDEX `bordertype_id` (`bordertype_id` ASC) ,
  CONSTRAINT `source_id`
    FOREIGN KEY (`source_id` )
    REFERENCES `MinTest`.`region` (`region_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `sink_id`
    FOREIGN KEY (`sink_id` )
    REFERENCES `MinTest`.`region` (`region_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `bordertype_id`
    FOREIGN KEY (`bordertype_id` )
    REFERENCES `MinTest`.`bordertype` (`bordertype_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
