-- https://en.wikibooks.org/wiki/SQL_Exercises/Planet_Express 
-- 7.1 Who receieved a 1.5kg package?
    -- The result is "Al Gore's Head".
SELECT Name from Client
join Package on Client.AccountNumber = Package.Recipient
where Weight = 1.5;

-- 7.2 What is the total weight of all the packages that he sent?
select Client.Name, Package.Sender, SUM(Weight) AS TotalWeight FROM Client 
join Package on Client.AccountNumber = Package.Sender
where Client.Name = 'AI Gore''s Head'
group by Client.Name, Package.Sender

SELECT *
FROM   client
WHERE  accountnumber IN (SELECT recipient
                         FROM   package
                         WHERE  weight = 1.5); 

select Recipient from Package 