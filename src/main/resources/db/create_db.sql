CREATE TABLE `goplandb`.`users` (
  `name` VARCHAR(20) NOT NULL,
  `password` VARCHAR(20) NOT NULL,
  `id` INT AUTO_INCREMENT NOT NULL,
  UNIQUE INDEX `name_UNIQUE` (`name` ASC),
  PRIMARY KEY (`id`));