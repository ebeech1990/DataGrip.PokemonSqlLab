SELECT p.name AS 'Pokemon Name', t.trainername AS 'Trainer Name', 
pt.pokelevel AS Level, p.primary_type AS 'Primary Type', p.secondary_type AS
'Secondary Type', (pt.hp + pt.attack + pt.defense + pt.spatk + pt.spdef +
pt.speed) AS base FROM pokemons AS p JOIN pokemon_trainer AS pt ON pt.trainerID
= p.id JOIN trainers AS t ON pt.trainerID = t.trainerID ORDER BY base DESC,
pt.pokelevel DESC;

#Ace Duo Elina & Sean
#primary order by is the pokemons base stat (hp + attack + defense + special
#attack + special defense + speed) secondary order by is by level  
