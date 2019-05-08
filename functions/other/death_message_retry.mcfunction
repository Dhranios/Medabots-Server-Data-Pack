# Set the closest entity to the killer
scoreboard players set @e[limit=1,sort=nearest,distance=0.1..30,tag=hostile,tag=killerable,scores={Killer=0}] Killer 1

# Try again
tag @s add retry
function medabots_server:other/death_message

# Fail still? generic death message
execute if entity @s[tag=!had_death] run tellraw @a {"translate":"medabots_server:death.generic","with":[{"selector":"@s"}]}
tag @s[tag=!had_death] add had_death