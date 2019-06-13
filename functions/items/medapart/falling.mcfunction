execute if entity @s[scores={Time=20}] run function medabots_server:items/medapart/falling/20
execute if entity @s[scores={Time=20..22}] run function medabots_server:items/medapart/falling/20..22
execute if entity @s[scores={Time=60..}] run function medabots_server:items/medapart/falling/60..

# Increase time by 1
scoreboard players add @s[scores={Falling=1..}] Time 1