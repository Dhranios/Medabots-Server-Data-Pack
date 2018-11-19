# Make the anti-fly and napalm attacks' better detection function
function medabots_server:medaparts/anti_fly_stand
function medabots_server:medaparts/napalm_stand

# Kill this after 2 ticks
scoreboard players add @s LifeTime 1
kill @s[scores={LifeTime=2..}]