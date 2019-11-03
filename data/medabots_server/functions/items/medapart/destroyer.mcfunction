execute if entity @s[scores={Time=10}] run function medabots_server:items/medapart/destroyer/10
execute if entity @s[scores={Time=30}] run function medabots_server:items/medapart/destroyer/30
execute if entity @s[scores={Time=40..}] run function medabots_server:items/medapart/destroyer/40_

# Show particles
particle minecraft:dust 1 1 0 1 ~ ~1 ~ 1 2 1 0 30

# Increase time by 1
scoreboard players add @s[scores={Medaforce=-12}] Time 1