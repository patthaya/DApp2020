/*
 *  create database: simpledbapp
 */
CREATE DATABASE simpledbapp;

/*
 *  create table: accounts
 */
USE simpledbapp;
CREATE TABLE accounts (
    id      INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    uname   VARCHAR(50),
    passw   VARCHAR(50),
    created TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

/*
 *  insert sample data
 */
 INSERT INTO accounts(uname, passw) values 
 (
    'fintech',
    'password'
 ),
 (
    'utcc',
    'simple_passw'
 );

 /*
  * create DB user: fintech
  */
CREATE USER 'fintech'@'localhost' IDENTIFIED WITH mysql_native_password BY 'P@ssw0rd';

/*
 *  assign the privileges to 'fintech'
 */
GRANT ALL PRIVILEGES ON simpledbapp.* to 'fintech'@'localhost';
