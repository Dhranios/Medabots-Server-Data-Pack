# Count down timer
scoreboard players remove @s HideTime 1

# Turn invisible
effect give @s minecraft:invisibility 1 0 true

# Remove timer
scoreboard players reset @s[scores={HideTime=0}] HideTime