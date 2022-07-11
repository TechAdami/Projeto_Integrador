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

insert into PESSOA (id, nome, dat_nasc, email, usuario,senha) values
(1, 'Julia Alana Caldeira', '1999/05/12', 'juliaalanacaldeira@uol.com','Aluno_set','5hs3hOcDF9'),
(2, 'Maria Aparecida Tereza Melo', '1998/05/25', 'maria-melo94@jotace.eti.br','Rocket_aluno','ukiMk3ySoD'),
(3, 'Cauê Gael Benjamin Aragão', '1952/06/19', 'caue-aragao96@rodomen.com.br', 'Sun_aluno','D0N9qxP1BG'),
(4, 'Geraldo Caleb da Cunha', '1960/05/11', 'caleb_dacunha@goldfinger.com','Bay_aluno','7GrxBer6gE'),
(5, 'Cecília Francisca Sandra Lima', '1988/01/09', 'cecilia_francisca_lima@pepsico.com', 'Stat_aluno','18xtquBE9h'),
(6, 'Mário Iago Cavalcanti', '1978/02/07', 'mario_cavalcanti@novotempo.com','Extend_prof','I2rFRk3saF'),
(7, 'Lorenzo Thales Corte Real', '1975/02/09', 'lorenzo-cortereal83@r7.com','Prof_bazar','abXz2oZIXK'),
(8, 'Samuel Mário Pinto', '1947/03/04', 'samuelmariopinto@scalioni.com.br','Conf_prof','bPyJq1gxrO'),
(9, 'Francisca Amanda da Mota', '1989/06/22', 'franciscaamandadamota@graffiti.net','Vale_prof','jrfaKmgnmo'),
(10, 'Yago Gael Carlos Eduardo Costa', '1990/03/20', 'yago-costa71@engineer.com', 'Prof_fogo','kskzx4lfa5');


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

insert into PROFESSOR (id_prof,bio) values
(6, 'Meu nome é Mário e eu ensino inglês e espanhol.'),
(7, 'Meu nome é Lorenzo e eu ensino espanhol.'),
(8, 'Meu nome é Samuel e eu ensino inglês.'),
(9, 'Meu nome é Francisca e eu ensino inglês.'),
(10,'Meu nome é Yago e eu ensino inglês e espanhol.');

-- -----------------------------------------------------
-- Table `DIAS_SEMANA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DIAS_SEMANA` (
  `id_dia` INT NOT NULL,
  `nom_dia` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_dia`))
ENGINE = InnoDB;

insert into DIAS_SEMANA (id_dia,nom_dia) values 
(1, 'Domingo'), (2, 'Segunda'), (3, 'Terça'), (4, 'Quarta'), (5, 'Quinta'),
(6, 'Sexta'), (7, 'Sábado');

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

insert into DISPONIBILIDADE (horario_inicio, horario_fim, id_dia, id_prof) values
('060000','130000',2,6), ('070000','140000',4,7), ('080000','150000',3,8),
('090000','160000',1,9), ('100000','170000',7,10);

-- -----------------------------------------------------
-- Table `IDIOMA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IDIOMA` (
  `id_idioma` INT NOT NULL,
  `nom_idioma` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_idioma`))
ENGINE = InnoDB;

insert into IDIOMA (id_idioma,nom_idioma) values 
(1, 'Inglês'), (2, 'Espanhol');

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

insert into Estudado (id,id_idioma) values
(1,1), (1,2), (2,2), (3,1), (4,1), (5,2),
(5,1);

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

insert into Ensina (id_prof,id_idioma) values
(6,1), (6,2), (7,2), (8,1), (9,1), (10,2),
(10,1);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
