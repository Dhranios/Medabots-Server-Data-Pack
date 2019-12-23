# Leave a smoke trail
execute if entity @s[tag=missile] run particle minecraft:smoke ~ ~ ~ 0 0 0 0.5

scoreboard players add @s DetectTime 1
execute if entity @e[scores={MedapartType=25,Time=20..60},tag=ally_medabot] run tag @s[scores={DetectTime=1}] add ally_team
execute if entity @e[scores={MedapartType=25,Time=20..60},tag=enemy_medabot] run tag @s[scores={DetectTime=1}] add enemy_team

execute if entity @s[scores={DetectTime=3..}] run function medabots_server:items/medapart/missile/hone_target