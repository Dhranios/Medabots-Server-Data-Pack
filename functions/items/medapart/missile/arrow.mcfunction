# Leave a smoke trail
execute if entity @s[tag=missile] run particle minecraft:smoke ~ ~ ~ 0 0 0 0.5

scoreboard players add @s DetectTime 1

execute if entity @s[scores={DetectTime=3..}] run function medabots_server:items/medapart/missile/hone_target