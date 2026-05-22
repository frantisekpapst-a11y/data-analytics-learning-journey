CREATE TABLE zakaznici (
    id INT PRIMARY KEY IDENTITY,
    jmeno NVARCHAR(50),
    mesto NVARCHAR(50)
);

INSERT INTO zakaznici (id, jmeno, mesto)
VALUES
('Jan', 'Praha'),
('Eva', 'Brno');