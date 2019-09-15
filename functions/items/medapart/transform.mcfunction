execute if entity @s[scores={Time=20}] run function medabots_server:items/medapart/transform/20
execute if entity @s[scores={Time=20..22}] run function medabots_server:items/medapart/transform/20_22
execute if entity @s[scores={Time=30..}] run function medabots_server:items/medapart/transform/30_

# Increase time by 1
scoreboard players add @s[scores={MedapartType=38}] Time 1