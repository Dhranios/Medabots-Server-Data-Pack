execute if entity @s[scores={Time=10}] run function medabots_server:items/medapart/full_body_up/10
execute if entity @s[scores={Time=20..}] run function medabots_server:items/medapart/full_body_up/20_

# Show particles
particle minecraft:dust 1 1 0 1 ~ ~1 ~ 1 2 1 0 30

# Increase time by 1
scoreboard players add @s[scores={Medaforce=-6}] Time 1