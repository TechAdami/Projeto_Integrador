-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema yolearn
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `yolearn` ;

-- -----------------------------------------------------
-- Schema yolearn
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `yolearn` DEFAULT CHARACTER SET utf8 ;
USE `yolearn` ;

-- -----------------------------------------------------
-- Table `PESSOA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PESSOA` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(160) NOT NULL,
  `dat_nasc` DATE NOT NULL,
  `email` VARCHAR(150) NOT NULL,
  `usuario` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PROFESSOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PROFESSOR` (
  `bio` TINYTEXT NOT NULL,
  `id_prof` INT NOT NULL,
  PRIMARY KEY (`id_prof`),
  INDEX `fk_PROFESSOR_PESSOA1_idx` (`id_prof` ASC) VISIBLE,
  CONSTRAINT `fk_PROFESSOR_PESSOA1`
    FOREIGN KEY (`id_prof`)
    REFERENCES `PESSOA` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DIAS_SEMANA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DIAS_SEMANA` (
  `id_dia` INT NOT NULL,
  `nom_dia` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_dia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DISPONIBILIDADE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DISPONIBILIDADE` (
  `horario_inicio` TIME NOT NULL,
  `horario_fim` TIME NOT NULL,
  `id_dia` INT NOT NULL,
  `id_prof` INT NOT NULL,
  PRIMARY KEY (`id_prof`),
  INDEX `fk_DISPONIBILIDADE_DIAS_SEMANA1_idx` (`id_dia` ASC) VISIBLE,
  INDEX `fk_DISPONIBILIDADE_PROFESSOR1_idx` (`id_prof` ASC) VISIBLE,
  CONSTRAINT `fk_DISPONIBILIDADE_DIAS_SEMANA1`
    FOREIGN KEY (`id_dia`)
    REFERENCES `DIAS_SEMANA` (`id_dia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_DISPONIBILIDADE_PROFESSOR1`
    FOREIGN KEY (`id_prof`)
    REFERENCES `PROFESSOR` (`id_prof`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IDIOMA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IDIOMA` (
  `id_idioma` INT NOT NULL,
  `nom_idioma` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_idioma`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Estudado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Estudado` (
  `id` INT NOT NULL,
  `id_idioma` INT NOT NULL,
  INDEX `fk_PESSOA_has_IDIOMA_IDIOMA1_idx` (`id_idioma` ASC) VISIBLE,
  INDEX `fk_PESSOA_has_IDIOMA_PESSOA1_idx` (`id` ASC) VISIBLE,
  CONSTRAINT `fk_PESSOA_has_IDIOMA_PESSOA1`
    FOREIGN KEY (`id`)
    REFERENCES `PESSOA` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PESSOA_has_IDIOMA_IDIOMA1`
    FOREIGN KEY (`id_idioma`)
    REFERENCES `IDIOMA` (`id_idioma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ensina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ensina` (
  `id_prof` INT NOT NULL,
  `id_idioma` INT NOT NULL,
  INDEX `fk_PROFESSOR_has_IDIOMA_IDIOMA1_idx` (`id_idioma` ASC) VISIBLE,
  INDEX `fk_PROFESSOR_has_IDIOMA_PROFESSOR1_idx` (`id_prof` ASC) VISIBLE,
  CONSTRAINT `fk_PROFESSOR_has_IDIOMA_PROFESSOR1`
    FOREIGN KEY (`id_prof`)
    REFERENCES `PROFESSOR` (`id_prof`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PROFESSOR_has_IDIOMA_IDIOMA1`
    FOREIGN KEY (`id_idioma`)
    REFERENCES `IDIOMA` (`id_idioma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
