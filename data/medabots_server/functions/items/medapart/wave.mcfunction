execute if entity @s[scores={Time=25}] run function medabots_server:items/medapart/wave/25
execute if entity @s[scores={Time=120..}] run function medabots_server:items/medapart/wave/120_

execute positioned ~ ~-1.375 ~ at @e[tag=raft,distance=..0.7,limit=1,type=minecraft:area_effect_cloud] run teleport @s[scores={Time=25..33}] ~ ~1.375 ~

# Increase time by 1
scoreboard players add @s[scores={MedapartType=39}] Time 1