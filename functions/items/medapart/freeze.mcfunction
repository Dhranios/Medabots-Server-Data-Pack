execute if entity @s[scores={Time=20}] run function medabots_server:items/medapart/freeze/20
execute if entity @s[scores={Time=25}] run function medabots_server:items/medapart/freeze/25
execute if entity @s[scores={Time=70..}] run function medabots_server:items/medapart/freeze/70_

# Increase time by 1
scoreboard players add @s[scores={MedapartType=10}] Time 1

# Attacked by melee trap
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] run function medabots_server:items/medapart/melee_trap/hit
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] if entity @s[tag=!ally_team] run function medabots_server:items/medapart/melee_trap/hit
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] if entity @s[tag=!enemy_team] run function medabots_server:items/medapart/melee_trap/hit