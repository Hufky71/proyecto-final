CREATE TABLE airport (
    `faa` VARCHAR(3) PRIMARY KEY,
    `name` VARCHAR(60),
    `lat` FLOAT,
    `lon` FLOAT,
    `alt` INT NOT NULL,
    `tz` INT NOT NULL,
    `dst` VARCHAR(3) NULL,
    `tzone` VARCHAR(60)
);

CREATE TABLE planes (
    `tailnum` VARCHAR(10) PRIMARY KEY,
    `year` INT NOT NULL,
    `type` VARCHAR(60),
    `manufacturer` VARCHAR(60),
    `model` VARCHAR(60),
    `engines` SMALLINT NOT NULL,
    `seats` INT NOT NULL,
    `speed` VARCHAR(10),
    `engine` VARCHAR(60)
);

CREATE TABLE airlines (
    `carrier` VARCHAR(2) PRIMARY KEY,
    `name` VARCHAR(60)
);

CREATE TABLE weather (
    `year` INT,
    `month` INT,
    `day` INT,
    `hour` INT,
    `origin` VARCHAR(3),
    `temp` FLOAT,
    `dewp` FLOAT,
    `humid` FLOAT,
    `wind_dir` INT,
    `wind_speed` FLOAT,
    `wind_gust` VARCHAR(10),
    `precip` INT,
    `pressure` FLOAT,
    `visib` INT,
    `time_hour` DATE
);

CREATE TABLE flights (
    `flight` INT PRIMARY KEY,
    `year` INT NULL,
    `month` INT NULL,
    `day` INT NULL,
    `hour` INT NULL,
    `minute` INT NULL,
    `origin` VARCHAR(3) NULL,
    `dest` VARCHAR(3) NULL,
    `tailnum` VARCHAR(10) NULL,
    `dep_time` INT NULL,
    `sched_dep_time` INT NULL,
    `dep_delay` INT NULL,
    `arr_time` INT NULL,
    `sched_arr_time` INT NULL,
    `arr_delay` INT NULL,
    `carrier` VARCHAR(3) NULL,
    `air_time` INT NULL,
    `distance` INT NULL,
    `time_hour` DATE NULL
   
);


drop table airlines;
drop table airport;
drop table flights;
drop table planes;
drop table weather;


select * from planes p  limit 5;
select * from flights f ;
select * from airlines a  limit 5;
select * from airport a ;
select * from weather w  limit 5;



UPDATE flights 
SET time_hour  = STR_TO_DATE(time_hour , '%Y-%m-%d %H:%i:%s')
WHERE STR_TO_DATE(time_hour , '%Y-%m-%d %H:%i:%s') IS NOT NULL;

