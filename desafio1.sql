DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.plans(
	  plan_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      `type` VARCHAR(255) NOT NULL,
      price DOUBLE NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.users(
      user_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      username VARCHAR(255) NOT NULL,
      age TINYINT,
      plan_id INT NOT NULL,
      subscription_date DATE,
      FOREIGN KEY (plan_id) REFERENCES SpotifyClone.plans (plan_id)
  ) engine = InnoDB;

    CREATE TABLE SpotifyClone.artists(
      artist_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      `name` VARCHAR(255) NOT NULL
  ) engine = InnoDB;

    CREATE TABLE SpotifyClone.artists_followed(
	  user_id INT NOT NULL,
      artist_id INT NOT NULL,
      CONSTRAINT PRIMARY KEY (user_id, artist_id)
  ) engine = InnoDB;

    CREATE TABLE SpotifyClone.albums(
      album_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      title VARCHAR(255) NOT NULL,
      artist_id INT NOT NULL,
      release_year YEAR,
      FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artists (artist_id)    
  ) engine = InnoDB;

    CREATE TABLE SpotifyClone.songs(
      song_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      song_name VARCHAR(255) NOT NULL,
      song_duration INT,
      album_id INT,
      FOREIGN KEY (album_id) REFERENCES SpotifyClone.albums (album_id) 
  ) engine = InnoDB;

    CREATE TABLE SpotifyClone.listening_history(
	  user_id INT NOT NULL,
      song_id INT NOT NULL,
      listening_date DATETIME,
      CONSTRAINT PRIMARY KEY (user_id, song_id)
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.plans (`type`, price)
  VALUES
    ('gratuito', 0.00),
    ('familiar', 7.99),
    ('universitário', 5.99),
    ('pessoal', 6.99);

  INSERT INTO SpotifyClone.users (username, age, plan_id, subscription_date)
  VALUES
    ('Barbara Liskov', 82, 1, '2019-10-20'),
    ('Robert Cecil Martin', 58, 1, '2017-01-06'),
    ('Ada Lovelace', 37, 2, '2017-12-30'),
    ('Martin Fowler', 46, 2, '2017-01-17'),
    ('Sandi Metz', 58, 2, '2018-04-29'),
    ('Paulo Freire', 19, 3, '2018-02-14'),
    ('Bell Hooks', 26, 3, '2018-01-05'),
    ('Christopher Alexander', 85, 4, '2019-06-05'),
    ('Judith Butler', 45, 4, '2020-05-13'),
    ('Jorge Amado', 58, 4, '2017-02-17')
    ;

  INSERT INTO SpotifyClone.artists (`name`)
  VALUES
    ('Beyoncé'),
    ('Queen'),
    ('Elis Regina'),
    ('Baco Exu do Blues'),
    ('Blind Guardian'),
    ('Nina Simone');

  INSERT INTO SpotifyClone.artists_followed (user_id, artist_id)
  VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (4, 4),
    (5, 5),
    (5, 6),
    (6, 1),
    (7, 6),
    (9, 3),
    (10, 2);

  INSERT INTO SpotifyClone.albums (title, artist_id, release_year)
  VALUES
    ('Renaissance', 1, 2022),
    ('Jazz', 2, 1978),
    ('Hot Space', 2, 1982),
    ('Falso Brilhante', 3, 1998),
    ('Vento de Maio', 3, 2001),
    ('QVVJFA?', 4, 2003),
    ('Somewhere Far Beyond', 5, 2007),
    ('I Put A Spell On You', 6, 2012);

  INSERT INTO SpotifyClone.songs (song_name, song_duration, album_id)
  VALUES
    ('Samba em Paris', 267, 6),
    ('VIRGO’S GROOVE', 369, 1),
    ('Feeling Good', 100, 8),
    ('O Medo de Amar é o Medo de Ser Livre', 207, 5),
    ('Under Pressure', 152, 3),
    ('BREAK MY SOUL', 279, 1),
    ('Don’t Stop Me Now', 203, 2),
    ('The Bard’s Song', 244, 7),
    ('ALIEN SUPERSTAR', 116, 1),
    ('Como nossos pais', 105, 4);

  INSERT INTO SpotifyClone.listening_history (user_id, song_id, listening_date)
  VALUES
    (1, 1, "2022-02-28 10:45:55"),
    (1, 2, "2020-05-02 05:30:35"),
    (1, 3, "2020-03-06 11:22:33"),
    (2, 3, "2022-08-05 08:05:17"),
    (2, 4, "2020-01-02 07:40:33"),
    (3, 3, "2020-11-13 16:55:13"),
    (3, 2, "2020-12-05 18:38:30"),
    (4, 1, "2021-08-15 17:10:10"),
    (5, 1, "2022-01-09 01:44:33"),
    (5, 5, "2020-08-06 15:23:43"),
    (6, 4, "2017-01-24 00:31:17"),
    (6, 6, "2017-10-12 12:35:20"),
    (7, 7, "2011-12-15 22:30:49"),
    (8, 7, "2012-03-17 14:56:41"),
    (9, 8,"2022-02-24 21:14:22"),
    (10, 9, "2015-12-13 08:30:22");
