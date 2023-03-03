--liquibase formatted sql

--changeset Jeyadev labels:Person context:v.0.1
--comment: v.0.1
create table person (
    id int identity(1,1) primary key not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE person;

--changeset Jeyadev labels:Company context:v.0.1
--comment: v.0.1
create table company (
    id int identity(1,1) primary key not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE company;

--changeset Jeyadev labels:Person context:v.0.1
--comment: v.0.1
alter table person add column country varchar(2)
--rollback ALTER TABLE person DROP COLUMN country;

