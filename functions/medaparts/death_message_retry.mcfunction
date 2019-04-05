# Set the closest entity who activated a weapon to the killer
scoreboard players set @e[limit=1,distance=0.1..30,tag=hostile,scores={Killer=0,Time=1..}] Killer 1

# Try again
tag @s add retry
function medabots_server:medaparts/death_message

# Fail still? generic death message
execute if entity @s[tag=!had_death] run tellraw @a {"translate":"medabots_server:death.generic","with":[{"selector":"@s"}]}
tag @s[tag=had_death] remove had_death