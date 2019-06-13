# Count down timer
scoreboard players remove @s ConfuseTime 1

# Throw off sense of direction
effect give @s minecraft:nausea 4 0 true

# Remove timer
scoreboard players reset @s[scores={ConfuseTime=0}] ConfuseTime