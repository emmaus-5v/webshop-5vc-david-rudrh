--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  rating_id INTEGER
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, rating_id) values ('GTA VI', 'Follow-up game of GTA V. A game in which you can do whatever you want, primarily being a criminal. Oh, and you can race as well.', '891778674-5', 49.95, "5");
insert into products (name, description, code, price, rating_id) values ('Hide Online 2', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '077030122-3', 20, "2");
insert into products (name, description, code, price, rating_id) values ('Pokémon Legends: Arceus', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '445924201-X', 60, "3");
insert into products (name, description, code, price, rating_id) values ('ARK 2', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '693155505-7', 45, "1");
insert into products (name, description, code, price, rating_id) values ('FIFA 23', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 50, "2");
insert into products (name, description, code, price, rating_id) values ('My Hero Academia RPG', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 30, "4");
insert into products (name, description, code, price, rating_id) values ('Call of Duty: Black Ops 6', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 60, "3");
insert into products (name, description, code, price, rating_id) values ('One Piece RPG', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 40, "4");
insert into products (name, description, code, price, rating_id) values ('Robooy Simulator', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 13, "1");
insert into products (name, description, code, price, rating_id) values ('Squid Game Online', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 30, "3");

DROP TABLE IF EXISTS rating;
CREATE TABLE rating (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  rating TEXT
);

insert into rating (rating) values ("A decent game");
insert into rating (rating) values ("A good game worth of playing");
insert into rating (rating) values ("An awesome game we admire");
insert into rating (rating) values ("One of the best games in the world");

DROP TABLE IF EXISTS typegame;
CREATE TABLE typegame (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  typegame TEXT
);

insert into typegame (typegame) values ("RPG");
insert into typegame (typegame) values ("MMORPG");
insert into typegame (typegame) values ("Survival");
insert into typegame (typegame) values ("Shooter");
insert into typegame (typegame) values ("RPG");
insert into typegame (typegame) values ("Plaform");
insert into typegame (typegame) values ("Battle Royale");
insert into typegame (typegame) values ("Horror");
insert into typegame (typegame) values ("Sport");
insert into typegame (typegame) values ("Racing");
insert into typegame (typegame) values ("Wargame");
insert into typegame (typegame) values ("Tower Defense");

DROP TABLE IF EXISTS typegamenaam;
CREATE TABLE typegamenaam (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  products_id INTEGER,
  typegame_id INTEGER

);

insert into typegamenaam (products_id, typegame_id) values (1, 2);
insert into typegamenaam (products_id, typegame_id) values (2, 3);
insert into typegamenaam (products_id, typegame_id) values (3, 1);
insert into typegamenaam (products_id, typegame_id) values (4, 3);
insert into typegamenaam (products_id, typegame_id) values (5, 9);
insert into typegamenaam (products_id, typegame_id) values (6, 1);
insert into typegamenaam (products_id, typegame_id) values (7, 4);
insert into typegamenaam (products_id, typegame_id) values (8, 1);
insert into typegamenaam (products_id, typegame_id) values (9, 8);
insert into typegamenaam (products_id, typegame_id) values (10,3);
