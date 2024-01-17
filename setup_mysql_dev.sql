-- A script that prepares mySQL server for thr project
-- creates a project databse hbnb_dev_db
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;
-- creatse a new user hbnb_dev  with all privilleges
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';
-- grant all privilleges to user hbnb_dev on database hbnb_dev_db
GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost';
-- flush privileges to take effect
FLUSH PRIVILEGES;
-- grant select privilges on performance schema databse to user hbnb_dev
GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost';
-- flush privileges
FLUSH PRIVILEGES;
