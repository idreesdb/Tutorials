DROP TABLE IF EXISTS Entries;
CREATE TABLE Entries
(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Title STRING NOT NULL,
    Text STRING NOT NULL
);
