CREATE TABLE `projects` (
             `projectID` INT NOT NULL AUTO_INCREMENT,
             `projectName` varchar(45) NOT NULL,
             `projectDescription` TEXT NOT NULL,
             PRIMARY KEY (`projectID`)
             );

             CREATE TABLE `todoItems` (
             `todoID` INT NOT NULL AUTO_INCREMENT,
             `todoItem` varchar(45) NOT NULL, 
             `dateCreated` DATETIME NOT NULL,
             `todoStatus` TEXT NOT NULL,
             `projectID` INT NOT NULL,
             PRIMARY KEY (`todoID`)
             );

             ALTER TABLE `todoItems` ADD CONSTRAINT `todoItems_fk0` FOREIGN KEY (`projectID`) REFERENCES `projects`(`projectID`) ON DELETE CASCADE ON UPDATE RESTRICT;

             CREATE INDEX todoItem
             ON todoItems (todoItem);
