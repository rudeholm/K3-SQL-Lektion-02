USE FailSafeIT_Local;
GO

-- Uppgift 1
-- Den interna inventeringen. Skriv en INNER JOIN som listar alla aktiva servrar
-- tillsammans med Username och Email på den användare som hanterar servern
-- (ManagedByUserId).
SELECT s.ServerName, u.Username, u.Email
	FROM Users u
	INNER JOIN Servers s ON u.Id = s.ManagedByUserId AND s.IsActive = 1;

SELECT * FROM Users;
INSERT INTO Users (Username, Email, Role)
	VALUES	('FooBar', 'foo@failsafe.it', 'Generic'),
			('Bork', 'bork@failsafe.it', 'DevOps');

-- Uppgift 2
-- Orkestreringsluckan. Skriv en LEFT JOIN som listar samtliga användare i databasen,
-- oavsett om de hanterar en server eller inte. Sortera resultatet så att användare utan
-- servrar hamnar överst.
SELECT u.Username, s.ServerName
	FROM Users u
	LEFT JOIN Servers s ON u.Id = s.ManagedByUserId
	ORDER BY s.ServerName;


