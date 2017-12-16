SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `MinTest` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `MinTest` ;

-- -----------------------------------------------------
-- Table `MinTest`.`Terraintype`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `MinTest`.`Terraintype` (
  `TerraintypeId` INT NOT NULL AUTO_INCREMENT ,
  `Name` VARCHAR(255) NULL ,
  `Code` VARCHAR(5) NULL ,
  `LandCost` INT NULL ,
  `AirCost` INT NULL ,
  `NavalCost` INT NULL ,
  `DisplaySymbol` VARCHAR(45) NULL ,
  `DisplayX` INT NULL ,
  `DisplayY` INT NULL ,
  `TerraintypeDescription` TEXT NULL ,
  PRIMARY KEY (`TerraintypeId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MinTest`.`Region`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `MinTest`.`Region` (
  `RegionId` INT NOT NULL AUTO_INCREMENT ,
  `Name` VARCHAR(255) NULL ,
  `TerraintypeId` INT NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`RegionId`) ,
  INDEX `TerraintypeId` (`TerraintypeId` ASC) ,
  CONSTRAINT `TerraintypeId`
    FOREIGN KEY (`TerraintypeId` )
    REFERENCES `MinTest`.`Terraintype` (`TerraintypeId` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MinTest`.`Bordertype`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `MinTest`.`Bordertype` (
  `BordertypeId` INT NOT NULL AUTO_INCREMENT ,
  `Name` VARCHAR(255) NULL ,
  `Code` VARCHAR(5) NULL ,
  `LandCost` INT NULL ,
  `AirCost` VARCHAR(45) NULL ,
  `NavalCost` VARCHAR(45) NULL ,
  `BordertypeEffect` TEXT NULL ,
  PRIMARY KEY (`BordertypeId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MinTest`.`RegionNeighbor`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `MinTest`.`RegionNeighbor` (
  `RegionsNeighborsId` INT NOT NULL AUTO_INCREMENT ,
  `Name` VARCHAR(255) NULL ,
  `SourceId` INT NULL ,
  `SinkId` INT NULL ,
  `BordertypeId` INT NULL ,
  `IsDirectional` INT NULL DEFAULT 0 ,
  `IsSecret` INT NULL DEFAULT 0 ,
  PRIMARY KEY (`RegionsNeighborsId`) ,
  INDEX `SourceId` (`SourceId` ASC) ,
  INDEX `SinkId` (`SinkId` ASC) ,
  INDEX `BordertypeId` (`BordertypeId` ASC) ,
  CONSTRAINT `SourceId`
    FOREIGN KEY (`SourceId` )
    REFERENCES `MinTest`.`Region` (`RegionId` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `SinkId`
    FOREIGN KEY (`SinkId` )
    REFERENCES `MinTest`.`Region` (`RegionId` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `BordertypeId`
    FOREIGN KEY (`BordertypeId` )
    REFERENCES `MinTest`.`Bordertype` (`BordertypeId` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
