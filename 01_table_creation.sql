CREATE TABLE Track (
	Track_Name varchar(50) NOT NULL,
	AlbumID varchar(10) NOT NULL,
	Genre VARCHAR(50),
	Price INTEGER NOT NULL,
	TrackID varchar(15) NOT NULL,
	PRIMARY KEY (TrackID)
);

CREATE TABLE Album (
	Album_Name varchar(50) NOT NULL,
	Artist varchar(50) NOT NULL,
	Year_Released INT NOT NULL,
	Genre varchar(40) NOT NULL,
	Price INTEGER NOT NULL,
	AlbumID varchar(10) NOT NULL,
	PRIMARY KEY (AlbumID)
);

CREATE TABLE Artist (
	Name varchar(50) NOT NULL,
	Genre varchar(40) NOT NULL,
	PRIMARY KEY (Name)
);

CREATE TABLE Member (
	MemberID varchar(10) NOT NULL,
	Password varchar(40) NOT NULL,
	F_name varchar(30) NOT NULL,
	M_name varchar(30) NOT NULL,
	L_name varchar(30) NOT NULL,
	Date_of_joining DATE NOT NULL,
	Premium BOOLEAN NOT NULL,
	PRIMARY KEY (MemberID)
);

CREATE TABLE Member_Buys_Album (
	MemberID varchar(10) NOT NULL,
	AlbumID varchar(10) NOT NULL,
	Date DATE NOT NULL
);

CREATE TABLE Member_Buys_Track (
	MemberID varchar(10) NOT NULL,
	TrackID varchar(15) NOT NULL,
	Date DATE NOT NULL
);

CREATE TABLE Playlist (
	Playlist_Name varchar(50) NOT NULL UNIQUE,
	PlaylistID varchar(5) NOT NULL,
	PRIMARY KEY (PlaylistID)
);

CREATE TABLE Track_Belongs_Playlist (
	TrackID varchar(15) NOT NULL,
	PlaylistID varchar(5) NOT NULL
);

ALTER TABLE Track ADD CONSTRAINT Track_fk0 FOREIGN KEY (AlbumID) REFERENCES Album(AlbumID);

ALTER TABLE Album ADD CONSTRAINT Album_fk0 FOREIGN KEY (Artist) REFERENCES Artist(Name);

ALTER TABLE Member_Buys_Album ADD CONSTRAINT Member_Buys_Album_fk0 FOREIGN KEY (MemberID) REFERENCES Member(MemberID);

ALTER TABLE Member_Buys_Album ADD CONSTRAINT Member_Buys_Album_fk1 FOREIGN KEY (AlbumID) REFERENCES Album(AlbumID);

ALTER TABLE Member_Buys_Track ADD CONSTRAINT Member_Buys_Track_fk0 FOREIGN KEY (MemberID) REFERENCES Member(MemberID);

ALTER TABLE Member_Buys_Track ADD CONSTRAINT Member_Buys_Track_fk1 FOREIGN KEY (TrackID) REFERENCES Track(TrackID);

ALTER TABLE Track_Belongs_Playlist ADD CONSTRAINT Track_Belongs_Playlist_fk0 FOREIGN KEY (TrackID) REFERENCES Track(TrackID);

ALTER TABLE Track_Belongs_Playlist ADD CONSTRAINT Track_Belongs_Playlist_fk1 FOREIGN KEY (PlaylistID) REFERENCES Playlist(PlaylistID);
