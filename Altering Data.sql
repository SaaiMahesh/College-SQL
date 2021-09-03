USE employee;
ALTER TABLE employee
ADD leaving_date varchar(50);

ALTER TABLE employee
MODIFY COLUMN leaving_date DATETIME;

ALTER TABLE employee
CHANGE leaving_date leaving DATETIME;

ALTER TABLE employee
DROP COLUMN leaving;
