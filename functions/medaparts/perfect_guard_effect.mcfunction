# Count down timer
scoreboard players remove @s PerfectGuardTime 1

# Turn invinsible but slow
effect give @s minecraft:resistance 1 5 true
effect give @s minecraft:slowness 1 2 true

# Remove timer
scoreboard players reset @s[scores={PerfectGuardTime=0}] PerfectGuardTime