USE FailSafeIT_Local;
GO

-- Uppgift 1
-- Den interna inventeringen. Skriv en INNER JOIN som listar alla aktiva servrar
-- tillsammans med Username och Email på den användare som hanterar servern
-- (ManagedByUserId).
SELECT s.ServerName, u.Username, u.Email
	FROM Users u
	INNER JOIN Servers s ON u.Id = s.ManagedByUserId AND s.IsActive = 1;



