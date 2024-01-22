INSERT IGNORE INTO SchemaStatus (scriptName, schemaStatus) VALUES ('2024_01_22_shipping_is_financed.sql', 'ONGOING');

ALTER TABLE `pydb`.`Shipping`
ADD COLUMN `is_financed` TINYINT(1) NULL DEFAULT '0' AFTER `tracking_number`;

UPDATE SchemaStatus SET schemaStatus = 'DONE' WHERE scriptName = '2024_01_22_shipping_is_financed.sql';