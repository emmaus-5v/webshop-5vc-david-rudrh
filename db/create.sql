--
-- create tables
--

DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS ratings;
DROP TABLE IF EXISTS GameGenre;
DROP TABLE IF EXISTS GameGenre_Game;
DROP TABLE IF EXISTS MinimumAge;

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  rating_id INTEGER,
  MinimumAge_id INTEGER
);

CREATE TABLE ratings (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  rating TEXT
);

CREATE TABLE GameGenre (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  typegame TEXT
);

CREATE TABLE GameGenre_Game (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  products_id INTEGER,
  typegame_id INTEGER
);

CREATE TABLE MinimumAge (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  MinimumAge TEXT
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, rating_id, MinimumAge_id) values ('GTA VI', 'Follow-up game of GTA V. A game in which you can do whatever you want, primarily being a criminal. Oh, and you can race as well. There is also a new story that takes place in South and North America. GTA Online has also changed. You can make your own house and car!!', '891778674-5', 49.95, 4, 5);
insert into products (name, description, code, price, rating_id, MinimumAge_id) values ('Hide Online 2', 'Follow- up game of the mobile game, named Hide Online. It has become a really good survival game, where you need to hide from the seekers to not get shot by them. It is also a mutliplayer game so you can play the game with all of your friends. Games like Hide Online 2 are: GMOD and Minecraft Prophunt. The game is playable on Mobile, Pc and Ps4', '786543564-6', 20, 2, 3);
insert into products (name, description, code, price, rating_id, MinimumAge_id) values ('Pokémon Legends: Arceus', 'Pokémon Legends: Arceus is an action role-playing game that preserves the core gameplay of past entries in the main line series. The game is set in a bygone era of the Sinnoh regions history, when it was known as the Hisui region, long before the events of Pokémon Diamond and Pearl take place.', '445924201-X', 60, 3, 2);
insert into products (name, description, code, price, rating_id, MinimumAge_id) values ('ARK 2', 'Ark 2 is the highly anticipated sequel to Ark: Survival Evolved. In case you've never played the first game, it's a survival game with a twist. Instead of competing for resources with everyday people and animals, you instead have to navigate a world full of dinosaurs and other prehistoric beasts.', '693155505-7', 45, 1, 4);
insert into products (name, description, code, price, rating_id, MinimumAge_id) values ('FIFA 23', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 50, 2, 1);
insert into products (name, description, code, price, rating_id, MinimumAge_id) values ('My Hero Academia RPG', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 30, 4, 1);
insert into products (name, description, code, price, rating_id, MinimumAge_id) values ('Call of Duty: Black Ops 6', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 60, 3, 4);
insert into products (name, description, code, price, rating_id, MinimumAge_id) values ('One Piece RPG', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 40, 4, 1);
insert into products (name, description, code, price, rating_id, MinimumAge_id) values ('Robooy Hunt Quest', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 13, 1, 5);
insert into products (name, description, code, price, rating_id, MinimumAge_id) values ('Squid Game Online', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 30, 3, 3);
insert into products (name, description, code, price, rating_id, MinimumAge_id) values ('Blimbs TD Battles', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 4.95, 3, 1);



insert into ratings (rating) values ("A decent game");
insert into ratings (rating) values ("A good game worth of playing");
insert into ratings (rating) values ("An awesome game we admire");
insert into ratings (rating) values ("One of the best games in the world");



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



insert into MinimumAge (MinimumAge) values ("All ages");
insert into MinimumAge (MinimumAge) values ("7+");
insert into MinimumAge (MinimumAge) values ("12+");
insert into MinimumAge (MinimumAge) values ("16+");
insert into MinimumAge (MinimumAge) values ("18+");
