/* Create a database */
CREATE DATABASE video_game_review;
/* Create a table */
CREATE TABLE video_game_review.games (
	vg_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(50),
    description VARCHAR(200),
    rating INT,
    published_status boolean,
    PRIMARY KEY (vg_id)
);
/* Select 10 Most Recent Records */
SELECT *
FROM (SELECT * FROM video_game_review.games ORDER BY vg_id DESC LIMIT 10) Rec10
ORDER BY vg_id ASC;
/* Create/Insert new record */
INSERT INTO video_game_review.games (title, description, rating, published_status) VALUES ('','','','');
/* Update record by ID */
UPDATE video_game_review.games 
SET title = '', description = '', rating = '', published_status = '' 
WHERE vg_id = 0;
/* Delete record by ID */
DELETE FROM video_game_review.games
WHERE vg_id = 0;
/* Select Top 10 Published Rated Games */
SELECT *
FROM (SELECT * FROM video_game_review.games WHERE published_status = '1' ORDER BY rating DESC LIMIT 10) Top10
ORDER BY rating DESC