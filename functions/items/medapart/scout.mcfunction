execute if entity @s[scores={Time=20}] run function medabots_server:items/medapart/scout/20
execute if entity @s[scores={Time=60..}] run function medabots_server:items/medapart/scout/30..

# Increase time by 1
scoreboard players add @s[scores={Scout=1..}] Time 1