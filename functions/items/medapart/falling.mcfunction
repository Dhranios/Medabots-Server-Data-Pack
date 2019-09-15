execute if entity @s[scores={Time=20}] run function medabots_server:items/medapart/falling/20
execute if entity @s[scores={Time=20..22}] run function medabots_server:items/medapart/falling/20_22
execute if entity @s[scores={Time=60..}] run function medabots_server:items/medapart/falling/60_

# Increase time by 1
scoreboard players add @s[scores={MedapartType=9}] Time 1