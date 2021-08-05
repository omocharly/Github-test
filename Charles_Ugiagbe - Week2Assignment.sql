# Solution to Week 2 Assignment

# solution to Question 1

CREATE TABLE Videos (
      Id INT NOT NULL,
      Title VARCHAR(30) NOT NULL,
      Length INT NULL,
      Url VARCHAR(255) NOT NULL
);

INSERT INTO Videos ( Id, Title, Length, Url ) VALUES ( 1, 'Stalker', 60, 'https://youtu.be/BN8q9JFlevA');
INSERT INTO Videos ( Id, Title, Length, Url ) VALUES ( 2, 'Jailer', 115, 'https://youtu.be/a98Bg_kJnIE');
INSERT INTO Videos ( Id, Title, Length, Url ) VALUES ( 3, 'Master Planner', 68, 'https://youtu.be/b3MpR3lxh9M');
INSERT INTO Videos ( Id, Title, Length, Url ) VALUES ( 4, 'Open Secret', 79, 'https://youtu.be/JjaVI0xLdKY');

SELECT * FROM Videos;

# solution to Question 2

CREATE TABLE Reviewers (
      User VARCHAR(50) NOT NULL,
      Rating INT NULL,
      Review VARCHAR(100),
      videoId INT REFERENCES Reviewers
);  

INSERT INTO Reviewers ( User, Rating, Review, videoId) VALUES ( 'Mike', 5, 'Loved it!', 1);
INSERT INTO Reviewers ( User, Rating, Review, videoId) VALUES ( 'Grace', 4, 'Nice movie!', 1);
INSERT INTO Reviewers ( User, Rating, Review, videoId) VALUES ( 'Loveth', 4, 'Loved it!', 3);
INSERT INTO Reviewers ( User, Rating, Review, videoId) VALUES ( 'Smith', 5, 'Interesting!', 3);
INSERT INTO Reviewers ( User, Rating, Review, videoId) VALUES ( 'Joyce', 5, 'So nice!', 3);
     
SELECT * FROM Reviewers;

# solution to Question 3

SELECT * FROM videos AS v
INNER JOIN reviewers AS r
ON v.Id = r.videoId;