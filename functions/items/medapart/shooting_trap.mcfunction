execute if entity @s[scores={Time=20}] run function medabots_server:items/medapart/shooting_trap/20
execute if entity @s[scores={Time=30..}] run function medabots_server:items/medapart/shooting_trap/30_

# Increase time by 1
scoreboard players add @s[scores={MedapartType=35}] Time 1