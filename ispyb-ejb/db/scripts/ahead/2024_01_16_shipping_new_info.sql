INSERT IGNORE INTO SchemaStatus (scriptName, schemaStatus) VALUES ('2024_01_16_shipping_new_info.sql', 'ONGOING');

ALTER TABLE `pydb`.`Shipping`
ADD COLUMN `pickup_time_preference` VARCHAR(20) NULL DEFAULT NULL AFTER `safetyLevel`,
ADD COLUMN `weight_dimensions` VARCHAR(45) NULL DEFAULT NULL AFTER `pickup_time_preference`,
ADD COLUMN `tracking_number` VARCHAR(45) NULL DEFAULT NULL AFTER `weight_dimensions`;

UPDATE SchemaStatus SET schemaStatus = 'DONE' WHERE scriptName = '2024_01_16_shipping_new_info.sql';