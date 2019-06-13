execute if entity @s[scores={Time=20}] run function medabots_server:items/medapart/transform/10
execute if entity @s[scores={Time=20..22}] run function medabots_server:items/medapart/transform/20..22
execute if entity @s[scores={Time=30..}] run function medabots_server:items/medapart/transform/30..

# Increase time by 1
scoreboard players add @s[scores={Transform=1..}] Time 1