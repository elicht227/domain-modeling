DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS followers;
DROP TABLE IF EXISTS followings;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS likes;

CREATE TABLE users(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    screen_name TEXT,
    first_name TEXT,
    last_name TEXT,
    location TEXT
);

CREATE TABLE posts(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    created_at TEXT,
    file_name TEXT
);

CREATE TABLE followers(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER
);

CREATE TABLE followings(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER
);

CREATE TABLE comments(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    photo_id INTEGER,
    comment TEXT
);

CREATE TABLE likes(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    photo_id INTEGER
);
