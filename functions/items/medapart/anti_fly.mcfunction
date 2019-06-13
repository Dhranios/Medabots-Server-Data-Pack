execute if entity @s[scores={Time=20}] run function medabots_server:items/medapart/anti_fly/20
execute if entity @s[scores={Time=20..22}] run function medabots_server:items/medapart/anti_fly/20..22
execute if entity @s[scores={Time=60..}] run function medabots_server:items/medapart/anti_fly/60..

# Increase time by 1
scoreboard players add @s[scores={AntiFly=1..}] Time 1

# Attacked by shooting trap
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=!ally_team,tag=!enemy_team] run function medabots_server:items/medapart/shooting_trap/hit
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=ally_team] if entity @s[tag=!ally_team] run function medabots_server:items/medapart/shooting_trap/hit
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=enemy_team] if entity @s[tag=!enemy_team] run function medabots_server:items/medapart/shooting_trap/hit