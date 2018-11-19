# Count down timer
scoreboard players remove @s AuxiliaryTime 1

# Increase speed
effect give @s minecraft:speed 1 0 true
effect give @s[tag=wheel] minecraft:speed 1 3 true
effect give @s[tag=multi_legged] minecraft:speed 1 5 true

# Remove timer
scoreboard players reset @s[scores={AuxiliaryTime=0}] AuxiliaryTime