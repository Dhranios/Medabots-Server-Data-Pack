# Count down timer
scoreboard players remove @s FreezeTime 1

# Freeze and forget the move
effect give @s minecraft:slowness 1 5 true
scoreboard players remove @s[scores={Time=2..},tag=!cannon] Time 1

# Remove timer
scoreboard players reset @s[scores={FreezeTime=0}] FreezeTime