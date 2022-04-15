DROP TABLE Entry;
DROP TABLE Mood;


CREATE TABLE `Entry` (
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `concept` VARCHAR(30), 
    `entry` VARCHAR(50),
    `mood_id` INTEGER,
    `date` VARCHAR(20), 
    FOREIGN KEY(`mood_id`) REFERENCES `Mood`(`id`)
);

CREATE TABLE `Mood` (
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `label` VARCHAR(20) ); 

INSERT INTO `Entry` VALUES (null, "INNER JOINS", "I love me some INNER JOINS, but OUTER JOINS can take a hike", 2, "4/15/22");
INSERT INTO `Entry` VALUES (null, "Python", "Python sucks! I prefer Rattlesnakes!", 1, "4/16/22");

INSERT INTO `Entry` VALUES (null, "Debugging", "I hate things not going my way but the debugger always saves the day", 3, "4/17/22");
INSERT INTO `Entry` VALUES (null, "Request Handler", "I am upset with the Request Handler not handling my requests!", 2, "4/18/22");


INSERT INTO `Mood` VALUES (null, "Angry");
INSERT INTO `Mood` VALUES (null, "Excited");
INSERT INTO `Mood` VALUES (null, "Optimistic");
INSERT INTO `Mood` VALUES (null, "Happy");

