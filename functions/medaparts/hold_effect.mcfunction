# Count down timer
scoreboard players remove @s HoldTime 1

# Decrease speed
effect give @s minecraft:slowness 1 0 true
effect give @s[tag=tank] minecraft:slowness 1 3 true

# Remove timer
scoreboard players reset @s[scores={HoldTime=0}] HoldTime