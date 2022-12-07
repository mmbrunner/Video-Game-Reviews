/* Create a database */
CREATE DATABASE video_game_review;
/* Create a table */
CREATE TABLE video_game_review.games (
	vg_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    rating INT,
    published_status boolean,
    PRIMARY KEY (vg_id)
);
/* Select 10 Most Recent Records */
SELECT *
FROM (
    SELECT *
    FROM video_game_review.games
    ORDER BY vg_id DESC
    LIMIT 100
    ) Rec10
ORDER BY vg_id DESC;
/* Create/Insert new record */
INSERT INTO video_game_review.games (title, description, rating, published_status) 
VALUES ('','','',1);
/* Update record by ID (0 is a place holder)*/
UPDATE video_game_review.games 
SET title = '', description = '', rating = '', published_status = 1 
WHERE vg_id = 0;
/* Delete record by ID (0 is a place holder)*/
DELETE FROM video_game_review.games
WHERE vg_id = 0;
/* Select Top 10 Published Rated Games */
SELECT *
FROM (
	SELECT *
    FROM video_game_review.games
    WHERE published_status >= 1
    ORDER BY rating DESC
    LIMIT 10
    ) Top10
ORDER BY rating DESC;
/* Find a Game By Title */
SELECT *
FROM (
	SELECT *
    FROM video_game_review.games
    WHERE title RLIKE ''
    ORDER BY title ASC
    ) findByTitle;