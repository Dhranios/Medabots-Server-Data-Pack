execute if entity @s[scores={Time=20}] run function medabots_server:items/medapart/gatling/20
execute if entity @s[scores={Time=140..}] run function medabots_server:items/medapart/gatling/140_

# Increase time by 1
scoreboard players add @s[scores={MedapartType=11}] Time 1

# Attacked by shooting trap
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=!ally_team,tag=!enemy_team] run function medabots_server:items/medapart/shooting_trap/hit
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=ally_team] if entity @s[tag=!ally_team] run function medabots_server:items/medapart/shooting_trap/hit
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=enemy_team] if entity @s[tag=!enemy_team] run function medabots_server:items/medapart/shooting_trap/hit