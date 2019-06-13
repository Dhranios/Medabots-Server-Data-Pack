execute if entity @s[scores={Time=10}] run function medabots_server:items/medapart/ultra_shot/10
execute if entity @s[scores={Time=10..12}] run function medabots_server:items/medapart/ultra_shot/10..12
execute if entity @s[scores={Time=50..}] run function medabots_server:items/medapart/ultra_shot/50..

# Show particles
particle minecraft:dust 1 1 0 1 ~ ~1 ~ 1 2 1 0 30

# Increase time by 1
scoreboard players add @s[scores={Medaforce=-3}] Time 1