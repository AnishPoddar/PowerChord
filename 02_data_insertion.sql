insert into artist values ('Opeth', 'Metal');
insert into artist values ('Poets of the Fall', 'Alternative');
insert into artist values ('Metallica', 'Metal');

insert into album values('Ghost Reveries', 'Opeth', 2005, 'Metal', 1599, 'AL1');
insert into album values('Blackwater Park', 'Opeth', 2001, 'Metal', 1499, 'AL2');
insert into album values('Ride The Lightning', 'Metallica', 1991, 'Metal', 1699, 'AL3');
insert into album values('Clearview', 'Poets of the Fall', 2016, 'Alternative', 1399, 'AL4');

insert into track values ('The Baying of The Hounds', 'AL1', 'Metal', 250, 'T1');
insert into track values ('The Grand Conjuration', 'AL1', 'Metal', 250, 'T2');
insert into track values ('Fade to Black', 'AL3', 'Metal', 350, 'T3');
insert into track values ('Harvest', 'AL2', 'Acoustic', 200, 'T4');
insert into track values ('Shadow Play', 'AL4', 'Alternative', 300, 'T5');
insert into track values ('Dirge for November', 'AL2', 'Metal', 200, 'T6');
insert into track values ('Atonement', 'AL1', 'Psychedelic', 250, 'T7');
insert into track values ('Nothing Else Matters', 'AL3', 'Metal', 350, 'T8');
insert into track values ('Drama for Life', 'AL4', 'Alternative', 300, 'T9');
insert into track values ('Harlequin Forest', 'AL1', 'Metal', 250, 'T10');
insert into track values ('The Game', 'AL4', 'Alternative', 300, 'T11');
insert into track values ('The Leper Affinity', 'AL2', 'Metal', 200, 'T12');
insert into track values ('Ghost of Perdition', 'AL1', 'Metal', 250, 'T13');

insert into member values('M1', 'password', 'Harry', 'James', 'Potter', '2015/12/03', false);
insert into member values('M2', 'hermione', 'Ronald', 'Bilius', 'Weasley', '2015/11/13', true);
insert into member values('M3', 'pureblood', 'Tom', 'Marvolo', 'Riddle', '1999/07/23', true);
insert into member values('M2', 'deathstick', 'Albus', 'Percival', 'Dumbledore', '2010/01/03', false);
insert into member values('M5', 'prophecy', 'Albus', 'Severus', 'Potter', '2009/22/02', false);
insert into member values('M6', 'ministry', 'Ginevra', 'Bilius', 'Weasley', '2015/12/03', false);

insert into member_buys_track values('M1', 'T1', '2015/12/10');
insert into member_buys_track values('M2', 'T11', '2015/12/13');
insert into member_buys_track values('M3', 'T1', '2000/02/10');
insert into member_buys_track values('M2', 'T9', '2015/12/13');
insert into member_buys_track values('M1', 'T2', '2016/02/10');
insert into member_buys_track values('M1', 'T9', '2016/03/10');
insert into member_buys_track values('M5', 'T3', '2016/02/10');

insert into member_buys_album values ('M1', 'AL1', '2015/12/11');
insert into member_buys_album values ('M4', 'AL3', '2005/10/21');
insert into member_buys_album values ('M3', 'AL3', '2014/09/15');

insert into playlist values ('Metal Masterpieces', 'P1');
insert into playlist values ('Strange Melodies', 'P2');

insert into track_belongs_playlist values ('T1', 'P1');
insert into track_belongs_playlist values ('T6', 'P1');
insert into track_belongs_playlist values ('T7', 'P2');
insert into track_belongs_playlist values ('T10', 'P1');
insert into track_belongs_playlist values ('T3', 'P1');
insert into track_belongs_playlist values ('T4', 'P2');
insert into track_belongs_playlist values ('T11', 'P2');
insert into track_belongs_playlist values ('T9', 'P2');
