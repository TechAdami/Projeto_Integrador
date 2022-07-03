-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema YoLearn
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `YoLearn` ;

-- -----------------------------------------------------
-- Schema YoLearn
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `YoLearn` DEFAULT CHARACTER SET utf8 ;
USE `YoLearn` ;

-- -----------------------------------------------------
-- Table `CADASTRO_PROF`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CADASTRO_PROF` (
  `usuario_prof` VARCHAR(12) NOT NULL,
  `senha_prof` VARCHAR(16) NOT NULL,
  PRIMARY KEY (`usuario_prof`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CADASTRO_ALUNO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CADASTRO_ALUNO` (
  `usuario_aluno` VARCHAR(12) NOT NULL,
  `senha_aluno` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`usuario_aluno`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ALUNO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ALUNO` (
  `id_aluno` INT NOT NULL AUTO_INCREMENT,
  `nom_aluno` VARCHAR(100) NOT NULL,
  `dat_nasc_aluno` DATE NOT NULL,
  `email_aluno` VARCHAR(45) NOT NULL,
  `usuario_aluno` VARCHAR(12) NOT NULL,
  PRIMARY KEY (`id_aluno`),
  INDEX `fk_ALUNO_CADASTRO_ALUNO1_idx` (`usuario_aluno` ASC) VISIBLE,
  CONSTRAINT `fk_ALUNO_CADASTRO_ALUNO1`
    FOREIGN KEY (`usuario_aluno`)
    REFERENCES `CADASTRO_ALUNO` (`usuario_aluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PROFESSOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PROFESSOR` (
  `id_prof` INT NOT NULL AUTO_INCREMENT,
  `nom_prof` VARCHAR(100) NOT NULL,
  `dat_nasc_prof` DATE NOT NULL,
  `email_prof` VARCHAR(45) NOT NULL,
  `bio` MEDIUMTEXT NOT NULL,
  `usuario_prof` VARCHAR(12) NOT NULL,
  PRIMARY KEY (`id_prof`),
  INDEX `fk_PROFESSOR_CADASTRO_PROF_idx` (`usuario_prof` ASC) VISIBLE,
  CONSTRAINT `fk_PROFESSOR_CADASTRO_PROF`
    FOREIGN KEY (`usuario_prof`)
    REFERENCES `CADASTRO_PROF` (`usuario_prof`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DISPONIBILIDADE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DISPONIBILIDADE` (
  `horario_inicio` TIME NOT NULL,
  `horario_fim` TIME NOT NULL,
  `id_prof` INT NOT NULL,
  PRIMARY KEY (`id_prof`),
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
  `id_idioma` INT NOT NULL AUTO_INCREMENT,
  `nom_idioma` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_idioma`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DIAS_SEMANA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DIAS_SEMANA` (
  `id_dia` INT NOT NULL AUTO_INCREMENT,
  `nom_dia` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_dia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ESPANHOL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ESPANHOL` (
  `id_espanhol` INT NOT NULL,
  PRIMARY KEY (`id_espanhol`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Avalia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Avalia` (
  `id_prof` INT NOT NULL,
  `id_aluno` INT NOT NULL,
  PRIMARY KEY (`id_prof`, `id_aluno`),
  INDEX `fk_PROFESSOR_has_ALUNO_ALUNO1_idx` (`id_aluno` ASC) VISIBLE,
  INDEX `fk_PROFESSOR_has_ALUNO_PROFESSOR1_idx` (`id_prof` ASC) VISIBLE,
  CONSTRAINT `fk_PROFESSOR_has_ALUNO_PROFESSOR1`
    FOREIGN KEY (`id_prof`)
    REFERENCES `PROFESSOR` (`id_prof`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PROFESSOR_has_ALUNO_ALUNO1`
    FOREIGN KEY (`id_aluno`)
    REFERENCES `ALUNO` (`id_aluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Tem` (
  `id_prof` INT NOT NULL,
  `id_dia` INT NOT NULL,
  PRIMARY KEY (`id_prof`, `id_dia`),
  INDEX `fk_DISPONIBILIDADE_has_DIAS_SEMANA_DIAS_SEMANA1_idx` (`id_dia` ASC) VISIBLE,
  INDEX `fk_DISPONIBILIDADE_has_DIAS_SEMANA_DISPONIBILIDADE1_idx` (`id_prof` ASC) VISIBLE,
  CONSTRAINT `fk_DISPONIBILIDADE_has_DIAS_SEMANA_DISPONIBILIDADE1`
    FOREIGN KEY (`id_prof`)
    REFERENCES `DISPONIBILIDADE` (`id_prof`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_DISPONIBILIDADE_has_DIAS_SEMANA_DIAS_SEMANA1`
    FOREIGN KEY (`id_dia`)
    REFERENCES `DIAS_SEMANA` (`id_dia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Estuda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Estuda` (
  `id_aluno` INT NOT NULL,
  `id_idioma` INT NOT NULL,
  PRIMARY KEY (`id_aluno`, `id_idioma`),
  INDEX `fk_ALUNO_has_IDIOMA_IDIOMA1_idx` (`id_idioma` ASC) VISIBLE,
  INDEX `fk_ALUNO_has_IDIOMA_ALUNO1_idx` (`id_aluno` ASC) VISIBLE,
  CONSTRAINT `fk_ALUNO_has_IDIOMA_ALUNO1`
    FOREIGN KEY (`id_aluno`)
    REFERENCES `ALUNO` (`id_aluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ALUNO_has_IDIOMA_IDIOMA1`
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
  PRIMARY KEY (`id_prof`, `id_idioma`),
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
