CREATE TABLE post(
    id INTEGER NOT NULL PRIMARY KEY,
    name_post VARCHAR(100)  NOT NULL
);

CREATE TABLE users(
    id INTEGER NOT NULL PRIMARY KEY,
    login VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL
);

CREATE TABLE personnel(
    id INTEGER NOT NULL PRIMARY KEY,
    surname VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    patronymic VARCHAR(100) NOT NULL UNIQUE,
    date_of_birth VARCHAR(100) NOT NULL,
    post_id INTEGER,
    FOREIGN KEY(post_id) REFERENCES post(id)
);

CREATE TABLE zoo(
    id INTEGER NOT NULL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    phone VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL
);

CREATE TABLE animals(
    id INTEGER NOT NULL PRIMARY KEY,
    nickname VARCHAR(100) NOT NULL,
    average_life_expectancy VARCHAR(100) NOT NULL,
    homeland_id INTEGER,
    class_id INTEGER,
    zoo_id INTEGER,
    tickets_id INTEGER,
    FOREIGN KEY(homeland_id) REFERENCES homeland(id),
    FOREIGN KEY(class_id) REFERENCES class(id),
    FOREIGN KEY(zoo_id) REFERENCES zoo(id),
    FOREIGN KEY(tickets_id) REFERENCES tickets(id)
);

CREATE TABLE class(
    id INTEGER NOT NULL PRIMARY KEY,
    name_class VARCHAR(100) NOT NULL
);

CREATE TABLE homeland(
    id INTEGER NOT NULL PRIMARY KEY,
    name_homeland VARCHAR(100) NOT NULL
);

CREATE TABLE tickets(
    id INTEGER NOT NULL PRIMARY KEY,
    name_tickets VARCHAR(100) NOT NULL
);
