# Count down timer
scoreboard players remove @s ParalyzeTime 1

# Freeze and forget the move
effect give @s minecraft:slowness 1 5 true
scoreboard players set @s[scores={Time=2..}] Time 1000

# Remove timer
scoreboard players reset @s[scores={ParalyzeTime=0}] ParalyzeTime