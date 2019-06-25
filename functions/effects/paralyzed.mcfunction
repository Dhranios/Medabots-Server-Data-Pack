# Count down timer
scoreboard players remove @s ParalyzeTime 1

# Freeze and forget the move
effect give @s minecraft:slowness 1 5 true
scoreboard players set @s[scores={Time=2..},tag=!guard,tag=!cannon] Time 950

# Remove timer
scoreboard players reset @s[scores={ParalyzeTime=0}] ParalyzeTime