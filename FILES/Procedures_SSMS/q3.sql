CREATE PROCEDURE Question3
AS
BEGIN
 
Select Genre.Name , count(*) as num_of_songs_from_this_genre 
from Genre,Track,InvoiceLine
where InvoiceLine.TrackId = Track.TrackId AND Track.GenreId = Genre.GenreId
group by Genre.Name
order by num_of_songs_from_this_genre DESC

END
