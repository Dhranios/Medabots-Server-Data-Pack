execute if entity @s[scores={Time=20}] run function medabots_server:items/medapart/scout/20
execute if entity @s[scores={Time=60..}] run function medabots_server:items/medapart/scout/30_

# Increase time by 1
scoreboard players add @s[scores={MedapartType=34}] Time 1