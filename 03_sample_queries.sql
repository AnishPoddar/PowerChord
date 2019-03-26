
/* Q1: Show all albums purchased by premium members.*/
select a.Album_Name from Album a, Member_Buys_Album mba, Member m where (mba.AlbumID = a.AlbumID and mba.MemberID = m.MemberID and m.Premium = true);

/* Q2: Show all songs whose genre does not match the genre of their parent album.*/
select t.Track_Name, t.Genre as Track_Genre, a.Genre as Album_Genre from Track t, Album a where (t.AlbumiD = a.AlbumID and t.Genre!=a.Genre);

/* Q3: Show most purchased track(s) of all time (based on track purchase count). */
create view purchase_count as (select track_name, count(mbt.TrackID) from member_buys_track mbt, track t where mbt.TrackID = t.TrackID group by t.Track_Name order by count);
select p.Track_Name, p.count from purchase_count p where (p.count = (select max(count) from purchase_count));

/* Q4: Show a particular member's favourite Artist (most purchased artist based on tracks purchased).*/
create view harry_purchases as (select track_name, count(mbt.TrackID) from member_buys_track mbt, track t where mbt.TrackID = t.TrackID and mbt.MemberID = 'M1' group by t.Track_Name);
select p.Track_Name, p.count from harry_purchases p where (p.count = (select max(count) from harry_purchases));
drop view harry_purchases;

/* Alternate method: (fusing joins into a single statement)*/
select p.Track_Name, p.count from (select track_name, count(mbt.TrackID) from member_buys_track mbt, track t 
	where mbt.TrackID = t.TrackID and mbt.MemberID = 'M1' group by t.Track_Name) as p 
		where (p.count = (select max(count) from (select track_name, count(mbt.TrackID) from member_buys_track mbt, track t 
			where mbt.TrackID = t.TrackID and mbt.MemberID = 'M1' group by t.Track_Name) as q));
			
/* Q5: Show the ID's and names of all members who have never purchased albums.*/
select m.MemberID, m.f_name, m.l_name from member m where (m.memberID not in (select memberID from member_buys_album));

/* Q6: Show all members who have purchased albums of the metal genre.*/
select m.f_name, m.l_name from member m, member_buys_album mba, album a where (m.memberID = mba.memberID and mba.albumID = a.albumID and a.genre = 'Metal');

/* --Q7: INCOMPLETE - Show the most popular playlist (playlist containing more popular songs).*/
select t.track_name, p.playlistID, count(mbt.TrackID) from member_buys_track mbt, track t, playlist p, track_belongs_playlist tbp
where(mbt.trackID = t.trackID and t.trackID = tbp.trackID and tbp.playlistID = p.playlistID) group by mbt.TrackID;

/* --Q8: Show all members who have bought all of a particular artist's albums.*/
/* --Q9: Show members who have bought tracks similar to those bought by a particular member.*/
