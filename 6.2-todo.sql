CREATE TABLE "todos" (
  "id" SERIAL NOT NULL PRIMARY KEY,
  "title" varchar(255) NOT NULL,
  "details" varchar,
  "priority" int DEFAULT 1,
  "created_at" timestamp NOT NULL,
  "completed_at" timestamp
);

INSERT INTO todos (title, details, created_at, completed_at)
VALUES ('buy groceries', 'picnic supplies: burgers, dogs, buns, utensils, fixins',
        '2017-06-25 17:37:12', '2017-06-27 09:16:09');
INSERT INTO todos (title, details, created_at)
VALUES ('tidy yard', 'pull weeds, mow, spray for bugs',
        '2017-06-25 17:39');
INSERT INTO todos (title, details, created_at)
VALUES ('tidy house', 'vacuum, mop, take out trash',
        '2017-06-25 17:37:12');
INSERT INTO todos (title, details, created_at)
VALUES ('borrow picnic table', 'get Nancys table from her back yard',
        '2017-06-25 17:40:02');
INSERT INTO todos (title, details, created_at)
VALUES ('fix meal', 'prep drinks and sides, grill',
        '2017-06-25 17:55:44');

UPDATE todos SET priority = 2 WHERE title = 'tidy yard';

SELECT title FROM todos WHERE completed_at is NULL;

SELECT title FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = '2017-06-27 16:13:50' WHERE id = 2;

DELETE FROM todos WHERE completed_at is not NULL;
