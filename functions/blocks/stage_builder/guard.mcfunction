# Spawn object
function medabots_server:spawn_entities/guard/medium

# Give additional data
scoreboard players operation @e[distance=..0.7,tag=guard] Speed = @s Speed
