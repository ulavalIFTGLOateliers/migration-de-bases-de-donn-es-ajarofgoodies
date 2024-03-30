# Creer table band
CREATE TABLE band (bandName varchar(50) PRIMARY KEY, creation YEAR, genre varchar(50));

INSERT INTO band VALUES ("Crazy Duo", 2015, "rock"),
                         ("Luna", 2009, "classical"),
                         ("Mysterio", 2019, "pop");

# Alterner table singer (maintenant musician) :
ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician RENAME COLUMN singerName to musicianName;
ALTER TABLE musician ADD COLUMN role varchar(50);
ALTER TABLE musician ADD COLUMN bandName varchar(50);

UPDATE musician
SET role = "vocals", bandName = "Crazy Duo"
WHERE musician.musicianName = "Alina";

UPDATE musician
SET role = "guitar", bandName = "Mysterio"
WHERE musician.musicianName = "Mysterio";

UPDATE musician
SET role = "percussion", bandName = "Crazy Duo"
WHERE musician.musicianName = "Rainbow";

UPDATE musician
SET role = "piano", bandName = "Luna"
WHERE musician.musicianName = "Luna";