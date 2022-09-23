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
      data_assinatura DATE,
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
      album_id YEAR,
      FOREIGN KEY (album_id) REFERENCES SpotifyClone.albums (album_id) 
  ) engine = InnoDB;

    CREATE TABLE SpotifyClone.listening_history(
	  user_id INT NOT NULL,
      song_id INT NOT NULL,
      CONSTRAINT PRIMARY KEY (user_id, song_id)
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.plans (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados A'),
    ('exemplo de dados 2', 'exemplo de dados B'),
    ('exemplo de dados 3', 'exemplo de dados C');

  INSERT INTO SpotifyClone.users (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados X'),
    ('exemplo de dados 2', 'exemplo de dados Y');

  INSERT INTO SpotifyClone.artists (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados X'),
    ('exemplo de dados 2', 'exemplo de dados Y');

  INSERT INTO SpotifyClone.artists_followed (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados A'),
    ('exemplo de dados 2', 'exemplo de dados B'),
    ('exemplo de dados 3', 'exemplo de dados C');

  INSERT INTO SpotifyClone.albums (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados X'),
    ('exemplo de dados 2', 'exemplo de dados Y');

  INSERT INTO SpotifyClone.songs (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados X'),
    ('exemplo de dados 2', 'exemplo de dados Y');

  INSERT INTO SpotifyClone.listening_history (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados X'),
    ('exemplo de dados 2', 'exemplo de dados Y');