# Make the anti-fly and napalm attacks' better detection function
execute if entity @s[tag=anti_fly] run function medabots_server:medaparts/anti_fly_stand
execute if entity @s[tag=napalm] run function medabots_server:medaparts/napalm_stand

# Kill this after 2 ticks
scoreboard players add @s LifeTime 1
kill @s[scores={LifeTime=2..}]