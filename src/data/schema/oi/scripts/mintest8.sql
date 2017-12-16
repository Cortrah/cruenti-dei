SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `MinTest` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `MinTest` ;

-- -----------------------------------------------------
-- Table `MinTest`.`terraintype`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `MinTest`.`terraintype` (
  `Terraintype_id` INT NOT NULL AUTO_INCREMENT ,
  `Name` VARCHAR(255) NULL ,
  `Code` VARCHAR(5) NULL ,
  `LandCost` INT NULL ,
  `AirCost` INT NULL ,
  `NavalCost` INT NULL ,
  `DisplaySymbol` VARCHAR(45) NULL ,
  `DisplayX` INT NULL ,
  `DisplayY` INT NULL ,
  `TerraintypeDescription` TEXT NULL ,
  PRIMARY KEY (`Terraintype_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MinTest`.`region`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `MinTest`.`region` (
  `Region_id` INT NOT NULL AUTO_INCREMENT ,
  `Name` VARCHAR(255) NULL ,
  `Terraintype_id` INT NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`Region_id`) ,
  INDEX `Terraintype_id` (`Terraintype_id` ASC) ,
  CONSTRAINT `Terraintype_id`
    FOREIGN KEY (`Terraintype_id` )
    REFERENCES `MinTest`.`terraintype` (`Terraintype_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MinTest`.`bordertype`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `MinTest`.`bordertype` (
  `Bordertype_id` INT NOT NULL AUTO_INCREMENT ,
  `Name` VARCHAR(255) NULL ,
  `Code` VARCHAR(5) NULL ,
  `LandCost` INT NULL ,
  `AirCost` VARCHAR(45) NULL ,
  `NavalCost` VARCHAR(45) NULL ,
  `BordertypeEffect` TEXT NULL ,
  PRIMARY KEY (`Bordertype_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MinTest`.`regionneighbor`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `MinTest`.`regionneighbor` (
  `RegionsNeighbors_id` INT NOT NULL AUTO_INCREMENT ,
  `Name` VARCHAR(255) NULL ,
  `Source_id` INT NULL ,
  `Sink_id` INT NULL ,
  `Bordertype_id` INT NULL ,
  `Is_directional` INT NULL DEFAULT 0 ,
  `Is_secret` INT NULL DEFAULT 0 ,
  PRIMARY KEY (`RegionsNeighbors_id`) ,
  INDEX `Source_id` (`Source_id` ASC) ,
  INDEX `Sink_id` (`Sink_id` ASC) ,
  INDEX `Bordertype_id` (`Bordertype_id` ASC) ,
  CONSTRAINT `Source_id`
    FOREIGN KEY (`Source_id` )
    REFERENCES `MinTest`.`region` (`Region_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Sink_id`
    FOREIGN KEY (`Sink_id` )
    REFERENCES `MinTest`.`region` (`Region_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Bordertype_id`
    FOREIGN KEY (`Bordertype_id` )
    REFERENCES `MinTest`.`bordertype` (`Bordertype_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
