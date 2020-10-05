﻿

CREATE TABLE employees (
    emp_no      INT             NOT NULL,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      ENUM ('M','F')  NOT NULL,    
    hire_date   DATE            NOT NULL,
    PRIMARY KEY (emp_no)
);

insert into employees values (1,'2012-01-01','raj','rana','M','2012-01-01')
insert into employees values (2,'2012-02-01','rajendra','rana','M','2012-02-01')
