#What is each pokemon's primary type?
SELECT pokemons.name, types.name FROM types RIGHT JOIN pokemons
ON types.id = pokemons.primary_type;

#What is Rufflet's secondary type?
SELECT pokemons.name, types.name FROM types RIGHT JOIN pokemons
ON types.id = pokemons.secondary_type WHERE pokemons.name = 'Rufflet';

#What are the names of the pokemon that belong to 
#the trainer with trainerID 303?
SELECT pokemons.name FROM pokemons RIGHT JOIN pokemon_trainer ON
pokemon_trainer.pokemon_id = pokemons.id WHERE pokemon_trainer.trainerID = 303;

#How many pokemon have a secondary type Poison
SELECT COUNT(*) AS poison FROM pokemons RIGHT JOIN types ON
pokemons.secondary_type = types.id WHERE types.name = 'Poison';

#What are all the primary types and how many pokemon have that type?
SELECT types.name, COUNT(*) FROM pokemons RIGHT JOIN types ON
pokemons.primary_type = types.id GROUP BY types.id;

#How many pokemon at level 100 does each trainer with at least 
#one level 100 pokemone have? (Hint: your query should not display a trainer
SELECT COUNT(DISTINCT trainerID) FROM pokemon_trainer WHERE pokelevel >= 100
GROUP BY pokemon_id HAVING COUNT(*)>1;

#How many pokemon only belong to one trainer and no other?
SELECT SUM(total) FROM (SELECT COUNT(DISTINCT trainerID) AS total FROM
pokemon_trainer GROUP BY pokemon_id HAVING COUNT(*)=1)as x;

