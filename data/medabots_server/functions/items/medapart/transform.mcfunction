execute if entity @s[scores={Time=20},type=minecraft:player] run function medabots_server:items/medapart/transform/player
execute if entity @s[scores={Time=20},type=!minecraft:player] run function medabots_server:items/medapart/transform/cpu
execute if entity @s[scores={Time=30..}] run function medabots_server:items/medapart/transform/30_

# Increase time by 1
scoreboard players add @s[scores={MedapartType=38}] Time 1