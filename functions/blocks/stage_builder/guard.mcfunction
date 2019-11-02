# Spawn object
function medabots_server:spawn_entities/guard/medium

# Give additional data
execute if entity @s[tag=mission_entity] run tag @e[distance=..0.7,tag=guard] add mission_entity
scoreboard players operation @e[distance=..0.7,tag=guard] Speed = @s Speed
