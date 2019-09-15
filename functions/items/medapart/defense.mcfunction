execute if entity @s[scores={Time=20}] run function medabots_server:items/medapart/defense/20
execute if entity @s[scores={Time=30..}] run function medabots_server:items/medapart/defense/30_

# Increase time by 1
scoreboard players add @s[scores={MedapartType=7}] Time 1