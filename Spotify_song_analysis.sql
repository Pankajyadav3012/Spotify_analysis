Create database cw;
use cw;  
select * from cleaned_dataset_;
SELECT 
    AVG(popularity) AS avg_popularity,
    AVG(duration) AS avg_duration,
    AVG(stream) AS avg_streamed
FROM cleaned_dataset_;

# Top 5 popular songs
SELECT 
    song_title,
    artist,
    popularity
FROM cleaned_dataset_
ORDER BY popularity DESC
LIMIT 5;

# top 5 popular artist
SELECT 
    artist,
    AVG(popularity) AS avg_popularity,
    COUNT(*) AS song_count
FROM cleaned_dataset_
GROUP BY artist
ORDER BY avg_popularity DESC
LIMIT 5;

#Top 5 album by steam

SELECT 
    album,
    SUM(stream) AS total_streams
FROM cleaned_dataset_
GROUP BY album
ORDER BY total_streams DESC
LIMIT 5;

# top 5 album by popularity

SELECT 
    album,
    AVG(popularity) AS avg_popularity
FROM cleaned_dataset_
GROUP BY album
ORDER BY avg_popularity DESC
LIMIT 5;

# top 5 song by label

SELECT 
    song_title,
    label,
    stream
FROM cleaned_dataset_
ORDER BY stream DESC
LIMIT 5;


#top 5 producer by popularity

SELECT 
    label,
    SUM(stream) AS total_streams
FROM cleaned_dataset_
GROUP BY label
ORDER BY total_streams DESC
LIMIT 5;

# Popularity by label

SELECT 
    label,
    AVG(popularity) AS avg_popularity,
    COUNT(*) AS song_count
FROM cleaned_dataset_
GROUP BY label
ORDER BY avg_popularity DESC;

# song count per language

SELECT 
    language,
    COUNT(*) AS song_count
FROM cleaned_dataset_
GROUP BY language
ORDER BY song_count DESC;

# genre distribution per song

SELECT 
    genre,
    COUNT(*) AS song_count
FROM cleaned_dataset_
GROUP BY genre
ORDER BY song_count DESC;



