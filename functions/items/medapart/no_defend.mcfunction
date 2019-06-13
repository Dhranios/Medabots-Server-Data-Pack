execute if entity @s[scores={Time=20}] run function medabots_server:items/medapart/no_defend/20
execute if entity @s[scores={Time=30..}] run function medabots_server:items/medapart/no_defend/30_

# Increase time by 1
scoreboard players add @s[scores={NoDefend=1..}] Time 1