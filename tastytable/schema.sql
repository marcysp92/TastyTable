DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS post;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  salt TEXT NOT NULL
);

CREATE TABLE post(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  author_id INTEGER NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  title TEXT NOT NULL,
  body TEXT NOT NULL,
  FOREIGN KEY (author_id) REFERENCES user (id)
);

CREATE TABLE recipe (
  recipe_id INTEGER PRIMARY KEY AUTOINCREMENT,
  author_id INTEGER NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  title TEXT NOT NULL,
  body TEXT NOT NULL,
  FOREIGN KEY (author_id) REFERENCES user (id)
)

CREATE TABLE recipe_ingredients

(recipe_id_fk INTEGER NOT NULL,

id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,

name TEXT NOT NULL,

quantity INTEGER NOT NULL,

measure_type TEXT NOT NULL,

FOREIGN KEY (recipe_id_fk) REFERENCES recipe (id)

);


CREATE TABLE ingredients 
(
    id_pk INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT NOT NULL
);


CREATE TABLE steps
(
recipe_id_fk INTEGER NOT NULL,
step_num INTEGER NOT NULL,
description TEXT NOT NULL,
FOREIGN KEY (recipe_id_fk) REFERENCES recipe (id)
);





