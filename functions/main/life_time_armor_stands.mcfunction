# Make the anti-fly and napalm attacks' better detection function
execute if entity @s[tag=anti_fly] run function medabots_server:items/medapart/anti_fly/stand
execute if entity @s[tag=napalm] run function medabots_server:items/medapart/napalm/stand

# Kill this after 2 ticks
scoreboard players add @s LifeTime 1
kill @s[scores={LifeTime=2..}]