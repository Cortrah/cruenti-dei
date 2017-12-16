SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Agenttypes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Agenttypes` (
  `agenttype_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `agenttype_description_xml` TEXT NULL DEFAULT NULL ,
  PRIMARY KEY (`agenttype_id`) );


-- -----------------------------------------------------
-- Table `mydb`.`Religions`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Religions` (
  `religion_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `religion_effect_xml` TEXT NULL DEFAULT NULL ,
  `religion_description_xml` TEXT NULL DEFAULT NULL ,
  PRIMARY KEY (`religion_id`) );


-- -----------------------------------------------------
-- Table `mydb`.`Trainingtypes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Trainingtypes` (
  `trainingtype_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `trainingtype_code` TEXT NULL DEFAULT NULL ,
  `trainingtype_effect_xml` TEXT NULL DEFAULT NULL ,
  `trainingtype_description_xml` TEXT NULL DEFAULT NULL ,
  PRIMARY KEY (`trainingtype_id`) );


-- -----------------------------------------------------
-- Table `mydb`.`Veiledrealmrows`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Veiledrealmrows` (
  `veiledrealmrow_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `realm_id` INT NULL DEFAULT NULL ,
  `mana` DECIMAL NULL DEFAULT NULL ,
  `region_gp` DECIMAL NULL DEFAULT NULL ,
  `urban_gp` DECIMAL NULL DEFAULT NULL ,
  `ict_gp` DECIMAL NULL DEFAULT NULL ,
  `pwb_gp` DECIMAL NULL DEFAULT NULL ,
  `road_gp` INT NULL DEFAULT NULL ,
  `saved_gp` DECIMAL NULL DEFAULT NULL ,
  `prod_ap` DECIMAL NULL DEFAULT NULL ,
  `saved_ap` DECIMAL NULL DEFAULT NULL ,
  `total_ap` DECIMAL NULL DEFAULT NULL ,
  `nfp` DECIMAL NULL DEFAULT NULL ,
  `sfp` DECIMAL NULL DEFAULT NULL ,
  `army_support` DECIMAL NULL DEFAULT NULL ,
  `cav_qr` INT NULL DEFAULT NULL ,
  `inf_qr` INT NULL DEFAULT NULL ,
  `sge_qr` INT NULL DEFAULT NULL ,
  `nav_qr` INT NULL DEFAULT NULL ,
  `air_qr` INT NULL DEFAULT NULL ,
  `nsr_qr` INT NULL DEFAULT NULL ,
  `ir_qr` INT NULL DEFAULT NULL ,
  `bl_qr` INT NULL DEFAULT NULL ,
  `rs_qr` DECIMAL NULL DEFAULT NULL ,
  `cav_investment` INT NULL DEFAULT NULL ,
  `inf_investment` INT NULL DEFAULT NULL ,
  `sge_investment` INT NULL DEFAULT NULL ,
  `nav_investment` INT NULL DEFAULT NULL ,
  `air_investment` INT NULL DEFAULT NULL ,
  `ir_investment` INT NULL DEFAULT NULL ,
  `bl_investment` INT NULL DEFAULT NULL ,
  `nsr_investment` INT NULL DEFAULT NULL ,
  `corruption_percentage` DECIMAL NULL DEFAULT NULL ,
  `plague_percentage` DECIMAL NULL DEFAULT NULL ,
  `notes_xml` TEXT NULL DEFAULT NULL ,
  `gm_only_notes_xml` TEXT NULL DEFAULT NULL ,
  PRIMARY KEY (`veiledrealmrow_id`) );


-- -----------------------------------------------------
-- Table `mydb`.`Bordertypes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Bordertypes` (
  `bordertype_id` INT NULL DEFAULT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `land_cost` INT NULL DEFAULT NULL ,
  `air_cost` INT NULL DEFAULT NULL ,
  `naval_cost` INT NULL DEFAULT NULL ,
  `bordertype_effect_xml` TEXT NULL DEFAULT NULL ,
  UNIQUE INDEX (`bordertype_id` ASC) ,
  PRIMARY KEY (`bordertype_id`) );


-- -----------------------------------------------------
-- Table `mydb`.`Veiledplayerrows`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Veiledplayerrows` (
  `veiledplayerrow_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `player_id` INT NULL DEFAULT NULL ,
  `email` TEXT NULL DEFAULT NULL ,
  `password` TEXT NULL DEFAULT NULL ,
  `first_name` TEXT NULL DEFAULT NULL ,
  `last_name` TEXT NULL DEFAULT NULL ,
  `credits` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`veiledplayerrow_id`) );


-- -----------------------------------------------------
-- Table `mydb`.`Kindreds`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Kindreds` (
  `kindred_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `kindred_code` TEXT NULL DEFAULT NULL ,
  `age_of_majority` INT NULL DEFAULT NULL ,
  `average_life_expectancy` INT NULL DEFAULT NULL ,
  `average_couth` INT NULL DEFAULT NULL ,
  `average_ferocity` INT NULL DEFAULT NULL ,
  `average_intelligence` INT NULL DEFAULT NULL ,
  `average_lifespan` INT NULL DEFAULT NULL ,
  `average_loyalty` INT NULL DEFAULT NULL ,
  `amphibian`  NULL DEFAULT NULL ,
  `flyer`  NULL DEFAULT NULL ,
  `natural_armor`  NULL DEFAULT NULL ,
  `vacuum_protected`  NULL DEFAULT NULL ,
  `notes_xml` TEXT NULL DEFAULT NULL ,
  `is_secret`  NULL DEFAULT NULL ,
  PRIMARY KEY (`kindred_id`) );


-- -----------------------------------------------------
-- Table `mydb`.`Spelltypes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Spelltypes` (
  `spelltype_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `level` TEXT NULL DEFAULT NULL ,
  `nsr` INT NULL DEFAULT NULL ,
  `mana_initial_cost` INT NULL DEFAULT NULL ,
  `mana_per_unit_cost` INT NULL DEFAULT NULL ,
  `time_to_cast` INT NULL DEFAULT NULL ,
  `when_to_cast` TEXT NULL DEFAULT NULL ,
  `allow_multiple_casters`  NULL DEFAULT NULL ,
  `spelltype_effect_xml` TEXT NULL DEFAULT NULL ,
  `spelltype_description_xml` TEXT NULL DEFAULT NULL ,
  `is_secret`  NULL DEFAULT NULL ,
  PRIMARY KEY (`spelltype_id`) );


-- -----------------------------------------------------
-- Table `mydb`.`Items`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Items` (
  `item_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `code` TEXT NULL DEFAULT NULL ,
  `mana_cost` INT NULL DEFAULT NULL ,
  `ap_cost` INT NULL DEFAULT NULL ,
  `nfp_cost` INT NULL DEFAULT NULL ,
  `gp_cost` INT NULL DEFAULT NULL ,
  `item_description_xml` TEXT NULL DEFAULT NULL ,
  `item_effect` TEXT NULL DEFAULT NULL ,
  `spelltype_id` INT NULL DEFAULT NULL ,
  `mana_charge` INT NULL DEFAULT NULL ,
  `blank_cost` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`item_id`) ,
  INDEX `spelltype_id_idxfk` (`spelltype_id` ASC) ,
  CONSTRAINT `spelltype_id_idxfk`
    FOREIGN KEY (`spelltype_id` )
    REFERENCES `mydb`.`Spelltypes` (`spelltype_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`SpellsReligions`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpellsReligions` (
  `spelltype_religion_id` INT NOT NULL AUTO_INCREMENT ,
  `spelltype_id` INT NULL DEFAULT NULL ,
  `religion_id` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`spelltype_religion_id`) ,
  INDEX `spelltype_id_idxfk` (`spelltype_id` ASC) ,
  INDEX `religion_id_idxfk` (`religion_id` ASC) ,
  CONSTRAINT `spelltype_id_idxfk_1`
    FOREIGN KEY (`spelltype_id` )
    REFERENCES `mydb`.`Spelltypes` (`spelltype_id` ),
  CONSTRAINT `religion_id_idxfk`
    FOREIGN KEY (`religion_id` )
    REFERENCES `mydb`.`Religions` (`religion_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`Majormaps`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Majormaps` (
  `majormap_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `path` TEXT NULL DEFAULT NULL ,
  `x` INT NULL DEFAULT NULL ,
  `y` INT NULL DEFAULT NULL ,
  `is_secret`  NULL DEFAULT NULL ,
  PRIMARY KEY (`majormap_id`) );


-- -----------------------------------------------------
-- Table `mydb`.`Terraintypes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Terraintypes` (
  `terraintype_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `land_cost` INT NULL DEFAULT NULL ,
  `air_cost` INT NULL DEFAULT NULL ,
  `naval_cost` INT NULL DEFAULT NULL ,
  `display_symbol` TEXT NULL DEFAULT NULL ,
  `display_x` INT NULL DEFAULT NULL ,
  `display_y` INT NULL DEFAULT NULL ,
  `terraintype_description_xml` TEXT NULL DEFAULT NULL ,
  PRIMARY KEY (`terraintype_id`) );


-- -----------------------------------------------------
-- Table `mydb`.`Constructtypes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Constructtypes` (
  `constructtype_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `code` TEXT NULL DEFAULT NULL ,
  `gp_cost` INT NULL DEFAULT NULL ,
  `ap_cost` INT NULL DEFAULT NULL ,
  `nfp_cost` INT NULL DEFAULT NULL ,
  `mana_cost` INT NULL DEFAULT NULL ,
  `upgradefrom_id` INT NULL DEFAULT NULL ,
  `constructtype_effect_xml` TEXT NULL DEFAULT NULL ,
  `constructtype_description_xml` TEXT NULL DEFAULT NULL ,
  `provides_gp` INT NULL DEFAULT NULL ,
  `provides_ap` INT NULL DEFAULT NULL ,
  `provides_nfp` INT NULL DEFAULT NULL ,
  `provides_mana` INT NULL DEFAULT NULL ,
  `city_forts` INT NULL DEFAULT NULL ,
  `display_symbol` TEXT NULL DEFAULT NULL ,
  PRIMARY KEY (`constructtype_id`) );


-- -----------------------------------------------------
-- Table `mydb`.`Movementtypes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Movementtypes` (
  `movementtype_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  PRIMARY KEY (`movementtype_id`) );


-- -----------------------------------------------------
-- Table `mydb`.`Unittypes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Unittypes` (
  `unitytype_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `code` TEXT NULL DEFAULT NULL ,
  `cost_gp` INT NULL DEFAULT NULL ,
  `cost_ap` INT NULL DEFAULT NULL ,
  `cost_nfp` INT NULL DEFAULT NULL ,
  `cost_cargo` DECIMAL NULL DEFAULT NULL ,
  `mta` INT NULL DEFAULT NULL ,
  `move` INT NULL DEFAULT NULL ,
  `react` INT NULL DEFAULT NULL ,
  `underlands_move` INT NULL DEFAULT NULL ,
  `mtu` INT NULL DEFAULT NULL ,
  `gq` INT NULL DEFAULT NULL ,
  `mq` INT NULL DEFAULT NULL ,
  `description` TEXT NULL DEFAULT NULL ,
  `qrtype` TEXT NULL DEFAULT NULL ,
  `is_allied`  NULL DEFAULT NULL ,
  `air_cargo_capacity` DECIMAL NULL DEFAULT NULL ,
  `naval_cargo_capacity` DECIMAL NULL DEFAULT NULL ,
  `ground_cargo_capacity` DECIMAL NULL DEFAULT NULL ,
  `movementtype_id` INT NULL DEFAULT NULL ,
  `is_secret`  NULL DEFAULT NULL ,
  PRIMARY KEY (`unitytype_id`) ,
  INDEX `movementtype_id_idxfk` (`movementtype_id` ASC) ,
  CONSTRAINT `movementtype_id_idxfk`
    FOREIGN KEY (`movementtype_id` )
    REFERENCES `mydb`.`Movementtypes` (`movementtype_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`Allegiancetypes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Allegiancetypes` (
  `allegiancetype_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  PRIMARY KEY (`allegiancetype_id`) );


-- -----------------------------------------------------
-- Table `mydb`.`Provinces`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Provinces` (
  `province_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  PRIMARY KEY (`province_id`) );


-- -----------------------------------------------------
-- Table `mydb`.`Realms`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Realms` (
  `realm_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `display_color` INT NULL DEFAULT NULL ,
  `tv` DECIMAL NULL DEFAULT NULL ,
  `isi` DECIMAL NULL DEFAULT NULL ,
  `religion_id` INT NULL DEFAULT NULL ,
  `realm_type` TEXT NULL DEFAULT NULL ,
  `capitallocation_id` INT NULL DEFAULT NULL ,
  `homeregion_id` INT NULL DEFAULT NULL ,
  `is_secret`  NULL DEFAULT NULL ,
  `veiledrealmrow_id` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`realm_id`) ,
  INDEX `religion_id_idxfk` (`religion_id` ASC) ,
  INDEX `veiledrealmrow_id_idxfk` (`veiledrealmrow_id` ASC) ,
  CONSTRAINT `religion_id_idxfk_1`
    FOREIGN KEY (`religion_id` )
    REFERENCES `mydb`.`Religions` (`religion_id` ),
  CONSTRAINT `veiledrealmrow_id_idxfk`
    FOREIGN KEY (`veiledrealmrow_id` )
    REFERENCES `mydb`.`Veiledrealmrows` (`veiledrealmrow_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`KnownUnittypes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`KnownUnittypes` (
  `knownunitytype_id` INT NOT NULL AUTO_INCREMENT ,
  `grealm_id` INT NULL DEFAULT NULL ,
  `unittype_id` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`knownunitytype_id`) ,
  INDEX `grealm_id_idxfk` (`grealm_id` ASC) ,
  INDEX `unittype_id_idxfk` (`unittype_id` ASC) ,
  CONSTRAINT `grealm_id_idxfk`
    FOREIGN KEY (`grealm_id` )
    REFERENCES `mydb`.`Realms` (`realm_id` ),
  CONSTRAINT `unittype_id_idxfk`
    FOREIGN KEY (`unittype_id` )
    REFERENCES `mydb`.`Unittypes` (`unitytype_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`RealmsTradepartners`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`RealmsTradepartners` (
  `realmtradepartner_id` INT NULL DEFAULT NULL AUTO_INCREMENT ,
  `realm_id` INT NULL DEFAULT NULL ,
  `tradepartner_id` INT NULL DEFAULT NULL ,
  UNIQUE INDEX (`realmtradepartner_id` ASC) ,
  PRIMARY KEY (`realmtradepartner_id`) ,
  INDEX `realm_id_idxfk` (`realm_id` ASC) ,
  INDEX `tradepartner_id_idxfk` (`tradepartner_id` ASC) ,
  CONSTRAINT `realm_id_idxfk`
    FOREIGN KEY (`realm_id` )
    REFERENCES `mydb`.`Realms` (`realm_id` ),
  CONSTRAINT `tradepartner_id_idxfk`
    FOREIGN KEY (`tradepartner_id` )
    REFERENCES `mydb`.`Realms` (`realm_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`KnownRealms`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`KnownRealms` (
  `knownrealm_id` INT NOT NULL AUTO_INCREMENT ,
  `realm_id` INT NULL DEFAULT NULL ,
  `knowingrealm_id` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`knownrealm_id`) ,
  INDEX `realm_id_idxfk` (`realm_id` ASC) ,
  INDEX `knowingrealm_id_idxfk` (`knowingrealm_id` ASC) ,
  CONSTRAINT `realm_id_idxfk_1`
    FOREIGN KEY (`realm_id` )
    REFERENCES `mydb`.`Realms` (`realm_id` ),
  CONSTRAINT `knowingrealm_id_idxfk`
    FOREIGN KEY (`knowingrealm_id` )
    REFERENCES `mydb`.`Realms` (`realm_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`Players`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Players` (
  `player_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `realm_id` INT NULL DEFAULT NULL ,
  `veiledplayerrow_id` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`player_id`) ,
  INDEX `realm_id_idxfk` (`realm_id` ASC) ,
  INDEX `veiledplayerrow_id_idxfk` (`veiledplayerrow_id` ASC) ,
  CONSTRAINT `realm_id_idxfk_2`
    FOREIGN KEY (`realm_id` )
    REFERENCES `mydb`.`Realms` (`realm_id` ),
  CONSTRAINT `veiledplayerrow_id_idxfk`
    FOREIGN KEY (`veiledplayerrow_id` )
    REFERENCES `mydb`.`Veiledplayerrows` (`veiledplayerrow_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`RealmsNonhostilepartners`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`RealmsNonhostilepartners` (
  `realmnonhostilepartner_id` INT NOT NULL AUTO_INCREMENT ,
  `realm_id` INT NULL DEFAULT NULL ,
  `nonhostilepartner_id` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`realmnonhostilepartner_id`) ,
  INDEX `realm_id_idxfk` (`realm_id` ASC) ,
  INDEX `nonhostilepartner_id_idxfk` (`nonhostilepartner_id` ASC) ,
  CONSTRAINT `realm_id_idxfk_3`
    FOREIGN KEY (`realm_id` )
    REFERENCES `mydb`.`Realms` (`realm_id` ),
  CONSTRAINT `nonhostilepartner_id_idxfk`
    FOREIGN KEY (`nonhostilepartner_id` )
    REFERENCES `mydb`.`Realms` (`realm_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`KnownSpelltypes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`KnownSpelltypes` (
  `knownspelltype_id` INT NOT NULL AUTO_INCREMENT ,
  `spelltype_id` INT NULL DEFAULT NULL ,
  `realm_id` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`knownspelltype_id`) ,
  INDEX `spelltype_id_idxfk` (`spelltype_id` ASC) ,
  INDEX `realm_id_idxfk` (`realm_id` ASC) ,
  CONSTRAINT `spelltype_id_idxfk_2`
    FOREIGN KEY (`spelltype_id` )
    REFERENCES `mydb`.`Spelltypes` (`spelltype_id` ),
  CONSTRAINT `realm_id_idxfk_4`
    FOREIGN KEY (`realm_id` )
    REFERENCES `mydb`.`Realms` (`realm_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`KnownMajormaps`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`KnownMajormaps` (
  `knownmajormap_id` INT NOT NULL AUTO_INCREMENT ,
  `majormap_id` INT NULL DEFAULT NULL ,
  `realm_id` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`knownmajormap_id`) ,
  INDEX `majormap_id_idxfk` (`majormap_id` ASC) ,
  INDEX `realm_id_idxfk` (`realm_id` ASC) ,
  CONSTRAINT `majormap_id_idxfk`
    FOREIGN KEY (`majormap_id` )
    REFERENCES `mydb`.`Majormaps` (`majormap_id` ),
  CONSTRAINT `realm_id_idxfk_5`
    FOREIGN KEY (`realm_id` )
    REFERENCES `mydb`.`Realms` (`realm_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`Minormaps`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Minormaps` (
  `minormap_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `code` TEXT NULL DEFAULT NULL ,
  `path` TEXT NULL DEFAULT NULL ,
  `x` INT NULL DEFAULT NULL ,
  `y` INT NULL DEFAULT NULL ,
  `is_secret`  NULL DEFAULT NULL ,
  PRIMARY KEY (`minormap_id`) );


-- -----------------------------------------------------
-- Table `mydb`.`KnownMinormaps`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`KnownMinormaps` (
  `knownminormap_id` INT NOT NULL AUTO_INCREMENT ,
  `minormap_id` INT NULL DEFAULT NULL ,
  `realm_id` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`knownminormap_id`) ,
  INDEX `minormap_id_idxfk` (`minormap_id` ASC) ,
  INDEX `realm_id_idxfk` (`realm_id` ASC) ,
  CONSTRAINT `minormap_id_idxfk`
    FOREIGN KEY (`minormap_id` )
    REFERENCES `mydb`.`Minormaps` (`minormap_id` ),
  CONSTRAINT `realm_id_idxfk_6`
    FOREIGN KEY (`realm_id` )
    REFERENCES `mydb`.`Realms` (`realm_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`Buildlocationtypes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Buildlocationtypes` (
  `buildlocationtype_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  PRIMARY KEY (`buildlocationtype_id`) );


-- -----------------------------------------------------
-- Table `mydb`.`Actioncategorytypes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Actioncategorytypes` (
  `actioncategory_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  PRIMARY KEY (`actioncategory_id`) );


-- -----------------------------------------------------
-- Table `mydb`.`Leadersactions`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Leadersactions` (
  `leaderaction_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `code` TEXT NULL DEFAULT NULL ,
  `realm_id` INT NULL DEFAULT NULL ,
  `atlocation_id` INT NULL DEFAULT NULL ,
  `use_road`  NULL DEFAULT NULL ,
  `starting_phase` INT NULL DEFAULT NULL ,
  `movement_cost` INT NULL DEFAULT NULL ,
  `is_secret`  NULL DEFAULT NULL ,
  `monitor_level` TEXT NULL DEFAULT NULL ,
  `gp_cost` INT NULL DEFAULT NULL ,
  `ap_cost` INT NULL DEFAULT NULL ,
  `nfp_cost` INT NULL DEFAULT NULL ,
  `sfp_cost` INT NULL DEFAULT NULL ,
  `mana_cost` INT NULL DEFAULT NULL ,
  `total_mana_cost` INT NULL DEFAULT NULL ,
  `with_others`  NULL DEFAULT NULL ,
  `is_primary_target`  NULL DEFAULT NULL ,
  `unittype_id` INT NULL DEFAULT NULL ,
  `unittype_code` TEXT NULL DEFAULT NULL ,
  `unit_count` INT NULL DEFAULT NULL ,
  `item_id` INT NULL DEFAULT NULL ,
  `item_name` TEXT NULL DEFAULT NULL ,
  `tolocation_id` INT NULL DEFAULT NULL ,
  `other_location` TEXT NULL DEFAULT NULL ,
  `notes_xml` TEXT NULL DEFAULT NULL ,
  `effect_xml` TEXT NULL DEFAULT NULL ,
  `description_xml` TEXT NULL DEFAULT NULL ,
  `actioncategorytype_id` INT NULL DEFAULT NULL ,
  `movementtype_id` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`leaderaction_id`) ,
  INDEX `actioncategorytype_id_idxfk` (`actioncategorytype_id` ASC) ,
  INDEX `movementtype_id_idxfk` (`movementtype_id` ASC) ,
  CONSTRAINT `actioncategorytype_id_idxfk`
    FOREIGN KEY (`actioncategorytype_id` )
    REFERENCES `mydb`.`Actioncategorytypes` (`actioncategory_id` ),
  CONSTRAINT `movementtype_id_idxfk_1`
    FOREIGN KEY (`movementtype_id` )
    REFERENCES `mydb`.`Movementtypes` (`movementtype_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`GameInfo`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`GameInfo` (
  `gameInfo_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `path` TEXT NULL DEFAULT NULL ,
  `turn` INT NULL DEFAULT NULL ,
  `year` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`gameInfo_id`) );


-- -----------------------------------------------------
-- Table `mydb`.`Featuretypes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Featuretypes` (
  `featuretype_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `featuretype_description_xml` TEXT NULL DEFAULT NULL ,
  PRIMARY KEY (`featuretype_id`) );


-- -----------------------------------------------------
-- Table `mydb`.`UnittypesBuildlocationtypes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`UnittypesBuildlocationtypes` (
  `unittype_buildlocationtype_id` INT NOT NULL AUTO_INCREMENT ,
  `unittype_id` INT NULL DEFAULT NULL ,
  `buildlocationtype_id` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`unittype_buildlocationtype_id`) ,
  INDEX `unittype_id_idxfk` (`unittype_id` ASC) ,
  INDEX `buildlocationtype_id_idxfk` (`buildlocationtype_id` ASC) ,
  CONSTRAINT `unittype_id_idxfk_1`
    FOREIGN KEY (`unittype_id` )
    REFERENCES `mydb`.`Unittypes` (`unitytype_id` ),
  CONSTRAINT `buildlocationtype_id_idxfk`
    FOREIGN KEY (`buildlocationtype_id` )
    REFERENCES `mydb`.`Buildlocationtypes` (`buildlocationtype_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`Veiledregionrows`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Veiledregionrows` (
  `veiledregionrow_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `region_id` INT NULL DEFAULT NULL ,
  `pwb` INT NULL DEFAULT NULL ,
  `tv` INT NULL DEFAULT NULL ,
  `status_mult` DECIMAL NULL DEFAULT NULL ,
  `resistance` INT NULL DEFAULT NULL ,
  `status` TEXT NULL DEFAULT NULL ,
  `notes_xml` TEXT NULL DEFAULT NULL ,
  PRIMARY KEY (`veiledregionrow_id`) ,
  INDEX `region_id_idxfk` (`region_id` ASC) ,
  CONSTRAINT `region_id_idxfk_1`
    FOREIGN KEY (`region_id` )
    REFERENCES `mydb`.`Regions` (`region_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`Regions`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Regions` (
  `region_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `majormap_id` INT NULL DEFAULT NULL ,
  `minormap_id` INT NULL DEFAULT NULL ,
  `allegiancetype_id` INT NULL DEFAULT NULL ,
  `realm_id` INT NULL DEFAULT NULL ,
  `secondtributorrealm_id` INT NULL DEFAULT NULL ,
  `minormapquadrant` TEXT NULL DEFAULT NULL ,
  `religion_id` INT NULL DEFAULT NULL ,
  `gp` INT NULL DEFAULT NULL ,
  `ap` INT NULL DEFAULT NULL ,
  `nfp` INT NULL DEFAULT NULL ,
  `mana` INT NULL DEFAULT NULL ,
  `has_road`  NULL DEFAULT NULL ,
  `borders_volcano`  NULL DEFAULT NULL ,
  `is_inimical`  NULL DEFAULT NULL ,
  `is_floating`  NULL DEFAULT NULL ,
  `is_flying`  NULL DEFAULT NULL ,
  `province_id` INT NULL DEFAULT NULL ,
  `terraintype_id` INT NULL DEFAULT NULL ,
  `display_path` TEXT NULL DEFAULT NULL ,
  `display_x` INT NULL DEFAULT NULL ,
  `display_y` INT NULL DEFAULT NULL ,
  `kindred_id` INT NULL DEFAULT NULL ,
  `location_id` INT NULL DEFAULT NULL ,
  `veiledregionrow_id` INT NULL DEFAULT NULL ,
  `is_secret`  NULL DEFAULT NULL ,
  PRIMARY KEY (`region_id`) ,
  INDEX `majormap_id_idxfk` (`majormap_id` ASC) ,
  INDEX `minormap_id_idxfk` (`minormap_id` ASC) ,
  INDEX `allegiancetype_id_idxfk` (`allegiancetype_id` ASC) ,
  INDEX `religion_id_idxfk` (`religion_id` ASC) ,
  INDEX `province_id_idxfk` (`province_id` ASC) ,
  INDEX `terraintype_id_idxfk` (`terraintype_id` ASC) ,
  INDEX `kindred_id_idxfk` (`kindred_id` ASC) ,
  INDEX `location_id_idxfk` (`location_id` ASC) ,
  INDEX `veiledregionrow_id_idxfk` (`veiledregionrow_id` ASC) ,
  CONSTRAINT `majormap_id_idxfk_1`
    FOREIGN KEY (`majormap_id` )
    REFERENCES `mydb`.`Majormaps` (`majormap_id` ),
  CONSTRAINT `minormap_id_idxfk_1`
    FOREIGN KEY (`minormap_id` )
    REFERENCES `mydb`.`Minormaps` (`minormap_id` ),
  CONSTRAINT `allegiancetype_id_idxfk`
    FOREIGN KEY (`allegiancetype_id` )
    REFERENCES `mydb`.`Allegiancetypes` (`allegiancetype_id` ),
  CONSTRAINT `religion_id_idxfk_2`
    FOREIGN KEY (`religion_id` )
    REFERENCES `mydb`.`Religions` (`religion_id` ),
  CONSTRAINT `province_id_idxfk`
    FOREIGN KEY (`province_id` )
    REFERENCES `mydb`.`Provinces` (`province_id` ),
  CONSTRAINT `terraintype_id_idxfk`
    FOREIGN KEY (`terraintype_id` )
    REFERENCES `mydb`.`Terraintypes` (`terraintype_id` ),
  CONSTRAINT `kindred_id_idxfk_1`
    FOREIGN KEY (`kindred_id` )
    REFERENCES `mydb`.`Kindreds` (`kindred_id` ),
  CONSTRAINT `location_id_idxfk_5`
    FOREIGN KEY (`location_id` )
    REFERENCES `mydb`.`Locations` (`location_id` ),
  CONSTRAINT `veiledregionrow_id_idxfk`
    FOREIGN KEY (`veiledregionrow_id` )
    REFERENCES `mydb`.`Veiledregionrows` (`veiledregionrow_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`Locations`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Locations` (
  `location_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `region_id` INT NULL DEFAULT NULL ,
  `realm_id` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`location_id`) ,
  INDEX `region_id_idxfk` (`region_id` ASC) ,
  INDEX `realm_id_idxfk` (`realm_id` ASC) ,
  CONSTRAINT `region_id_idxfk_3`
    FOREIGN KEY (`region_id` )
    REFERENCES `mydb`.`Regions` (`region_id` ),
  CONSTRAINT `realm_id_idxfk_12`
    FOREIGN KEY (`realm_id` )
    REFERENCES `mydb`.`Realms` (`realm_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`Constructs`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Constructs` (
  `construct_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `construct_description` TEXT NULL DEFAULT NULL ,
  `location_id` INT NULL DEFAULT NULL ,
  `region_id` INT NULL DEFAULT NULL ,
  `realm_id` INT NULL DEFAULT NULL ,
  `construct_constructtype_id` INT NULL DEFAULT NULL ,
  `level` INT NULL DEFAULT NULL ,
  `current_investment` INT NULL DEFAULT NULL ,
  `display_symbol` TEXT NULL DEFAULT NULL ,
  `display_x` INT NULL DEFAULT NULL ,
  `display_y` INT NULL DEFAULT NULL ,
  `is_secret`  NULL DEFAULT NULL ,
  `veiledconstructrow_id` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`construct_id`) ,
  INDEX `location_id_idxfk` (`location_id` ASC) ,
  INDEX `region_id_idxfk` (`region_id` ASC) ,
  INDEX `realm_id_idxfk` (`realm_id` ASC) ,
  INDEX `veiledconstructrow_id_idxfk` (`veiledconstructrow_id` ASC) ,
  CONSTRAINT `location_id_idxfk_2`
    FOREIGN KEY (`location_id` )
    REFERENCES `mydb`.`Locations` (`location_id` ),
  CONSTRAINT `region_id_idxfk_2`
    FOREIGN KEY (`region_id` )
    REFERENCES `mydb`.`Regions` (`region_id` ),
  CONSTRAINT `realm_id_idxfk_11`
    FOREIGN KEY (`realm_id` )
    REFERENCES `mydb`.`Realms` (`realm_id` ),
  CONSTRAINT `veiledconstructrow_id_idxfk`
    FOREIGN KEY (`veiledconstructrow_id` )
    REFERENCES `mydb`.`Veiledconstructrows` (`veiledconsructrow_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`Veiledconstructrows`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Veiledconstructrows` (
  `veiledconsructrow_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `construct_id` INT NULL DEFAULT NULL ,
  `provides_gp` INT NULL DEFAULT NULL ,
  `provides_ap` INT NULL DEFAULT NULL ,
  `provides_nfp` INT NULL DEFAULT NULL ,
  `provides_sfp` INT NULL DEFAULT NULL ,
  `provides_mana` INT NULL DEFAULT NULL ,
  `city_forts` INT NULL DEFAULT NULL ,
  `notes_xml` TEXT NULL DEFAULT NULL ,
  PRIMARY KEY (`veiledconsructrow_id`) ,
  INDEX `construct_id_idxfk` (`construct_id` ASC) ,
  CONSTRAINT `construct_id_idxfk`
    FOREIGN KEY (`construct_id` )
    REFERENCES `mydb`.`Constructs` (`construct_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`ConstructsConstructtypes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`ConstructsConstructtypes` (
  `construct_constructtype_id` INT NOT NULL AUTO_INCREMENT ,
  `construct_id` INT NULL DEFAULT NULL ,
  `constructtype_id` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`construct_constructtype_id`) ,
  INDEX `construct_id_idxfk` (`construct_id` ASC) ,
  INDEX `constructtype_id_idxfk` (`constructtype_id` ASC) ,
  CONSTRAINT `construct_id_idxfk_1`
    FOREIGN KEY (`construct_id` )
    REFERENCES `mydb`.`Constructs` (`construct_id` ),
  CONSTRAINT `constructtype_id_idxfk`
    FOREIGN KEY (`constructtype_id` )
    REFERENCES `mydb`.`Constructtypes` (`constructtype_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`KnownConstructs`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`KnownConstructs` (
  `knownconstruct_id` INT NOT NULL AUTO_INCREMENT ,
  `realm_id` INT NULL DEFAULT NULL ,
  `construct_id` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`knownconstruct_id`) ,
  INDEX `realm_id_idxfk` (`realm_id` ASC) ,
  INDEX `construct_id_idxfk` (`construct_id` ASC) ,
  CONSTRAINT `realm_id_idxfk_7`
    FOREIGN KEY (`realm_id` )
    REFERENCES `mydb`.`Realms` (`realm_id` ),
  CONSTRAINT `construct_id_idxfk_2`
    FOREIGN KEY (`construct_id` )
    REFERENCES `mydb`.`Constructs` (`construct_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`LocationsItems`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`LocationsItems` (
  `location_item_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `Item_id` INT NULL DEFAULT NULL ,
  `location_id` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`location_item_id`) ,
  INDEX `Item_id_idxfk` (`Item_id` ASC) ,
  INDEX `location_id_idxfk` (`location_id` ASC) ,
  CONSTRAINT `Item_id_idxfk`
    FOREIGN KEY (`Item_id` )
    REFERENCES `mydb`.`Items` (`item_id` ),
  CONSTRAINT `location_id_idxfk`
    FOREIGN KEY (`location_id` )
    REFERENCES `mydb`.`Locations` (`location_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`Leaders`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Leaders` (
  `leader_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `code` TEXT NULL DEFAULT NULL ,
  `homeregion_id` INT NULL DEFAULT NULL ,
  `trainingtype_id` INT NULL DEFAULT NULL ,
  `kindred_id` INT NULL DEFAULT NULL ,
  `command` INT NULL DEFAULT NULL ,
  `loyalty` INT NULL DEFAULT NULL ,
  `combat` INT NULL DEFAULT NULL ,
  `dipomacy` INT NULL DEFAULT NULL ,
  `sorcery` INT NULL DEFAULT NULL ,
  `age` INT NULL DEFAULT NULL ,
  `sex` CHAR NULL DEFAULT NULL ,
  `notes_xml` TEXT NULL DEFAULT NULL ,
  `display_symbol` INT NULL DEFAULT NULL ,
  `display_x` INT NULL DEFAULT NULL ,
  `display_y` INT NULL DEFAULT NULL ,
  `location_id` INT NULL DEFAULT NULL ,
  `agenttype_id` INT NULL DEFAULT NULL ,
  `realm_id` INT NULL DEFAULT NULL ,
  `carying_gp` INT NULL DEFAULT NULL ,
  `carying_ap` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`leader_id`) ,
  INDEX `homeregion_id_idxfk` (`homeregion_id` ASC) ,
  INDEX `trainingtype_id_idxfk` (`trainingtype_id` ASC) ,
  INDEX `kindred_id_idxfk` (`kindred_id` ASC) ,
  INDEX `location_id_idxfk` (`location_id` ASC) ,
  INDEX `agenttype_id_idxfk` (`agenttype_id` ASC) ,
  INDEX `realm_id_idxfk` (`realm_id` ASC) ,
  CONSTRAINT `homeregion_id_idxfk`
    FOREIGN KEY (`homeregion_id` )
    REFERENCES `mydb`.`Regions` (`region_id` ),
  CONSTRAINT `trainingtype_id_idxfk`
    FOREIGN KEY (`trainingtype_id` )
    REFERENCES `mydb`.`Trainingtypes` (`trainingtype_id` ),
  CONSTRAINT `kindred_id_idxfk`
    FOREIGN KEY (`kindred_id` )
    REFERENCES `mydb`.`Kindreds` (`kindred_id` ),
  CONSTRAINT `location_id_idxfk_3`
    FOREIGN KEY (`location_id` )
    REFERENCES `mydb`.`Locations` (`location_id` ),
  CONSTRAINT `agenttype_id_idxfk`
    FOREIGN KEY (`agenttype_id` )
    REFERENCES `mydb`.`Agenttypes` (`agenttype_id` ),
  CONSTRAINT `realm_id_idxfk_13`
    FOREIGN KEY (`realm_id` )
    REFERENCES `mydb`.`Realms` (`realm_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`LeadersItems`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`LeadersItems` (
  `leader_item_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `leader_id` INT NULL DEFAULT NULL ,
  `item_id` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`leader_item_id`) ,
  INDEX `leader_id_idxfk` (`leader_id` ASC) ,
  INDEX `item_id_idxfk` (`item_id` ASC) ,
  CONSTRAINT `leader_id_idxfk`
    FOREIGN KEY (`leader_id` )
    REFERENCES `mydb`.`Leaders` (`leader_id` ),
  CONSTRAINT `item_id_idxfk`
    FOREIGN KEY (`item_id` )
    REFERENCES `mydb`.`Items` (`item_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`RegionsFeaturetypes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`RegionsFeaturetypes` (
  `region_featuretype_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `featuretype_id` INT NULL DEFAULT NULL ,
  `region_id` INT NULL DEFAULT NULL ,
  `display_symbol` TEXT NULL DEFAULT NULL ,
  `display_x` INT NULL DEFAULT NULL ,
  `display_y` INT NULL DEFAULT NULL ,
  `location_id` INT NULL DEFAULT NULL ,
  `is_secret`  NULL DEFAULT NULL ,
  PRIMARY KEY (`region_featuretype_id`) ,
  INDEX `featuretype_id_idxfk` (`featuretype_id` ASC) ,
  INDEX `region_id_idxfk` (`region_id` ASC) ,
  INDEX `location_id_idxfk` (`location_id` ASC) ,
  CONSTRAINT `featuretype_id_idxfk`
    FOREIGN KEY (`featuretype_id` )
    REFERENCES `mydb`.`Featuretypes` (`featuretype_id` ),
  CONSTRAINT `region_id_idxfk_4`
    FOREIGN KEY (`region_id` )
    REFERENCES `mydb`.`Regions` (`region_id` ),
  CONSTRAINT `location_id_idxfk_4`
    FOREIGN KEY (`location_id` )
    REFERENCES `mydb`.`Locations` (`location_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`KnownRegionsfeaturetypes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`KnownRegionsfeaturetypes` (
  `knownregionfeaturetype_id` INT NOT NULL AUTO_INCREMENT ,
  `region_featuretype_id` INT NULL DEFAULT NULL ,
  `realm_id` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`knownregionfeaturetype_id`) ,
  INDEX `region_featuretype_id_idxfk` (`region_featuretype_id` ASC) ,
  INDEX `realm_id_idxfk` (`realm_id` ASC) ,
  CONSTRAINT `region_featuretype_id_idxfk`
    FOREIGN KEY (`region_featuretype_id` )
    REFERENCES `mydb`.`RegionsFeaturetypes` (`region_featuretype_id` ),
  CONSTRAINT `realm_id_idxfk_8`
    FOREIGN KEY (`realm_id` )
    REFERENCES `mydb`.`Realms` (`realm_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`Unittypegroups`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Unittypegroups` (
  `unittypegroup_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `unittype_id` INT NULL DEFAULT NULL ,
  `count` INT NULL DEFAULT NULL ,
  `homeregion_id` INT NULL DEFAULT NULL ,
  `realm_id` INT NULL DEFAULT NULL ,
  `display_symbol` TEXT NULL DEFAULT NULL ,
  `display_x` INT NULL DEFAULT NULL ,
  `display_y` INT NULL DEFAULT NULL ,
  `air_cargo_capacity` DECIMAL NULL DEFAULT NULL ,
  `naval_cargo_capacity` DECIMAL NULL DEFAULT NULL ,
  `ground_cargo_capacity` DECIMAL NULL DEFAULT NULL ,
  `air_cargo_used` DECIMAL NULL DEFAULT NULL ,
  `naval_cargo_used` DECIMAL NULL DEFAULT NULL ,
  `ground_cargo_used` DECIMAL NULL DEFAULT NULL ,
  PRIMARY KEY (`unittypegroup_id`) ,
  INDEX `unittype_id_idxfk` (`unittype_id` ASC) ,
  INDEX `homeregion_id_idxfk` (`homeregion_id` ASC) ,
  INDEX `realm_id_idxfk` (`realm_id` ASC) ,
  CONSTRAINT `unittype_id_idxfk_2`
    FOREIGN KEY (`unittype_id` )
    REFERENCES `mydb`.`Unittypes` (`unitytype_id` ),
  CONSTRAINT `homeregion_id_idxfk_1`
    FOREIGN KEY (`homeregion_id` )
    REFERENCES `mydb`.`Regions` (`region_id` ),
  CONSTRAINT `realm_id_idxfk_14`
    FOREIGN KEY (`realm_id` )
    REFERENCES `mydb`.`Realms` (`realm_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`LeadersUnittypegroups`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`LeadersUnittypegroups` (
  `leader_unittypegroup_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `leader_id` INT NULL DEFAULT NULL ,
  `unittypegroup_id` INT NULL DEFAULT NULL ,
  `air_cargo_capacity` DECIMAL NULL DEFAULT NULL ,
  `naval_cargo_capacity` DECIMAL NULL DEFAULT NULL ,
  `ground_cargo_capacity` DECIMAL NULL DEFAULT NULL ,
  `air_cargo_used` DECIMAL NULL DEFAULT NULL ,
  `naval_cargo_used` DECIMAL NULL DEFAULT NULL ,
  `ground_cargo_used` DECIMAL NULL DEFAULT NULL ,
  PRIMARY KEY (`leader_unittypegroup_id`) ,
  INDEX `leader_id_idxfk` (`leader_id` ASC) ,
  INDEX `unittypegroup_id_idxfk` (`unittypegroup_id` ASC) ,
  CONSTRAINT `leader_id_idxfk_1`
    FOREIGN KEY (`leader_id` )
    REFERENCES `mydb`.`Leaders` (`leader_id` ),
  CONSTRAINT `unittypegroup_id_idxfk`
    FOREIGN KEY (`unittypegroup_id` )
    REFERENCES `mydb`.`Unittypegroups` (`unittypegroup_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`LocationsUnittypegroups`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`LocationsUnittypegroups` (
  `location_unittypegroup_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `location_id` INT NULL DEFAULT NULL ,
  `unittypegroup_id` INT NULL DEFAULT NULL ,
  `air_cargo_capacity` DECIMAL NULL DEFAULT NULL ,
  `naval_cargo_capacity` DECIMAL NULL DEFAULT NULL ,
  `ground_cargo_capacity` DECIMAL NULL DEFAULT NULL ,
  `air_cargo_used` DECIMAL NULL DEFAULT NULL ,
  `naval_cargo_used` DECIMAL NULL DEFAULT NULL ,
  `ground_cargo_used` DECIMAL NULL DEFAULT NULL ,
  PRIMARY KEY (`location_unittypegroup_id`) ,
  INDEX `location_id_idxfk` (`location_id` ASC) ,
  INDEX `unittypegroup_id_idxfk` (`unittypegroup_id` ASC) ,
  CONSTRAINT `location_id_idxfk_1`
    FOREIGN KEY (`location_id` )
    REFERENCES `mydb`.`Locations` (`location_id` ),
  CONSTRAINT `unittypegroup_id_idxfk_1`
    FOREIGN KEY (`unittypegroup_id` )
    REFERENCES `mydb`.`Unittypegroups` (`unittypegroup_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`KnownRegions`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`KnownRegions` (
  `knownregion_id` INT NOT NULL AUTO_INCREMENT ,
  `region_id` INT NULL DEFAULT NULL ,
  `realm_id` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`knownregion_id`) ,
  INDEX `region_id_idxfk` (`region_id` ASC) ,
  INDEX `realm_id_idxfk` (`realm_id` ASC) ,
  CONSTRAINT `region_id_idxfk`
    FOREIGN KEY (`region_id` )
    REFERENCES `mydb`.`Regions` (`region_id` ),
  CONSTRAINT `realm_id_idxfk_9`
    FOREIGN KEY (`realm_id` )
    REFERENCES `mydb`.`Realms` (`realm_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`Regionsneighbors`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Regionsneighbors` (
  `region_neighbor_id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL DEFAULT NULL ,
  `source_id` INT NULL DEFAULT NULL ,
  `sink_id` INT NULL DEFAULT NULL ,
  `bordertype_id` INT NULL DEFAULT NULL ,
  `directional`  NULL DEFAULT NULL ,
  `is_secret`  NULL DEFAULT NULL ,
  PRIMARY KEY (`region_neighbor_id`) ,
  INDEX `source_id_idxfk` (`source_id` ASC) ,
  INDEX `sink_id_idxfk` (`sink_id` ASC) ,
  INDEX `bordertype_id_idxfk` (`bordertype_id` ASC) ,
  CONSTRAINT `source_id_idxfk`
    FOREIGN KEY (`source_id` )
    REFERENCES `mydb`.`Regions` (`region_id` ),
  CONSTRAINT `sink_id_idxfk`
    FOREIGN KEY (`sink_id` )
    REFERENCES `mydb`.`Regions` (`region_id` ),
  CONSTRAINT `bordertype_id_idxfk`
    FOREIGN KEY (`bordertype_id` )
    REFERENCES `mydb`.`Bordertypes` (`bordertype_id` ));


-- -----------------------------------------------------
-- Table `mydb`.`KnownRegionsneighbors`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`KnownRegionsneighbors` (
  `knownregionsneighbor_id` INT NOT NULL AUTO_INCREMENT ,
  `region_neighbor_id` INT NULL DEFAULT NULL ,
  `realm_id` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`knownregionsneighbor_id`) ,
  INDEX `region_neighbor_id_idxfk` (`region_neighbor_id` ASC) ,
  INDEX `realm_id_idxfk` (`realm_id` ASC) ,
  CONSTRAINT `region_neighbor_id_idxfk`
    FOREIGN KEY (`region_neighbor_id` )
    REFERENCES `mydb`.`Regionsneighbors` (`region_neighbor_id` ),
  CONSTRAINT `realm_id_idxfk_10`
    FOREIGN KEY (`realm_id` )
    REFERENCES `mydb`.`Realms` (`realm_id` ));



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
