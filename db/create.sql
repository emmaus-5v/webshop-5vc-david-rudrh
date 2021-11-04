--
-- create tables
--

DROP TABLE IF EXISTS products; 
DROP TABLE IF EXISTS ratings;
DROP TABLE IF EXISTS GameGenre;
DROP TABLE IF EXISTS GameGenre_Game;

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  rating_id INTEGER,
  MinimumAge_id INTEGER
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, rating_id, MinimumAge_id) values ('GTA VI', 'Follow-up game of GTA V. A game in which you can do whatever you want, primarily being a criminal. Oh, and you can race as well.', '891778674-5', 49.95, 4);
insert into products (name, description, code, price, rating_id, MinimumAge_id) values ('Hide Online 2', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '077030122-3', 20, 2);
insert into products (name, description, code, price, rating_id, MinimumAge_id) values ('Pokémon Legends: Arceus', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '445924201-X', 60, 3);
insert into products (name, description, code, price, rating_id, MinimumAge_id) values ('ARK 2', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '693155505-7', 45, 1);
insert into products (name, description, code, price, rating_id, MinimumAge_id) values ('FIFA 23', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 50, 2);
insert into products (name, description, code, price, rating_id, MinimumAge_id) values ('My Hero Academia RPG', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 30, 4);
insert into products (name, description, code, price, rating_id, MinimumAge_id) values ('Call of Duty: Black Ops 6', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 60, 3);
insert into products (name, description, code, price, rating_id. MinimumAge_id) values ('One Piece RPG', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 40, 4);
insert into products (name, description, code, price, rating_id, MinimumAge_id) values ('Robooy Hunt Quest', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 13, 1);
insert into products (name, description, code, price, rating_id, MinimumAge_id) values ('Squid Game Online', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 30, 3);
insert into products (name, description, code, price, rating_id, MinimumAge_id) values ('Blimbs TD Battles', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 4.95, 3);

CREATE TABLE ratings (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  rating TEXT
);

insert into ratings (rating) values ("A decent game");
insert into ratings (rating) values ("A good game worth of playing");
insert into ratings (rating) values ("An awesome game we admire");
insert into ratings (rating) values ("One of the best games in the world");

CREATE TABLE GameGenre (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  typegame TEXT
);

insert into GameGenre (typegame) values ("RPG");
insert into GameGenre (typegame) values ("MMORPG");
insert into GameGenre (typegame) values ("Survival");
insert into GameGenre (typegame) values ("Shooter");
insert into GameGenre (typegame) values ("Platform");
insert into GameGenre (typegame) values ("Battle Royale");
insert into GameGenre (typegame) values ("Horror");
insert into GameGenre (typegame) values ("Sport");
insert into GameGenre (typegame) values ("Racing");
insert into GameGenre (typegame) values ("Wargame");
insert into GameGenre (typegame) values ("Tower Defense");
insert into GameGenre (typegame) values ("Open World");
insert into GameGenre (typegame) values ("Multiplayer");

CREATE TABLE GameGenre_Game (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  products_id INTEGER,
  typegame_id INTEGER
);

insert into GameGenre_Game (products_id, typegame_id) values (1, 2);
insert into GameGenre_Game (products_id, typegame_id) values (1, 4);
insert into GameGenre_Game (products_id, typegame_id) values (1, 9);
insert into GameGenre_Game (products_id, typegame_id) values (1, 12);
insert into GameGenre_Game (products_id, typegame_id) values (1, 13);
insert into GameGenre_Game (products_id, typegame_id) values (2, 3);
insert into GameGenre_Game (products_id, typegame_id) values (2, 4);
insert into GameGenre_Game (products_id, typegame_id) values (2, 13);
insert into GameGenre_Game (products_id, typegame_id) values (3, 1);
insert into GameGenre_Game (products_id, typegame_id) values (3, 12);
insert into GameGenre_Game (products_id, typegame_id) values (4, 3);
insert into GameGenre_Game (products_id, typegame_id) values (4, 12);
insert into GameGenre_Game (products_id, typegame_id) values (4, 13);
insert into GameGenre_Game (products_id, typegame_id) values (5, 8);
insert into GameGenre_Game (products_id, typegame_id) values (5, 13);
insert into GameGenre_Game (products_id, typegame_id) values (6, 1);
insert into GameGenre_Game (products_id, typegame_id) values (6, 12);
insert into GameGenre_Game (products_id, typegame_id) values (7, 4);
insert into GameGenre_Game (products_id, typegame_id) values (7, 10);
insert into GameGenre_Game (products_id, typegame_id) values (7, 13);
insert into GameGenre_Game (products_id, typegame_id) values (8, 1);
insert into GameGenre_Game (products_id, typegame_id) values (9, 3);
insert into GameGenre_Game (products_id, typegame_id) values (9, 5);
insert into GameGenre_Game (products_id, typegame_id) values (9, 7);
insert into GameGenre_Game (products_id, typegame_id) values (10, 3);
insert into GameGenre_Game (products_id, typegame_id) values (10, 6);
insert into GameGenre_Game (products_id, typegame_id) values (10, 9);
insert into GameGenre_Game (products_id, typegame_id) values (11, 10);
insert into GameGenre_Game (products_id, typegame_id) values (11, 13);
