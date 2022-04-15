-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS activities;

-- CREATE TABLES
CREATE TABLE users(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT
);

CREATE TABLE contacts(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    title TEXT,
    phone_number TEXT,
    email TEXT,
    company_id INTEGER
);

CREATE TABLE companies(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    company_name TEXT
);

CREATE TABLE activities(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created_at TEXT,
    message TEXT,
    activity_type TEXT,
    user_id INTEGER,
    contact_id INTEGER
);