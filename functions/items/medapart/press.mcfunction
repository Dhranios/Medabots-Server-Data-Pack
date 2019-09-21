execute if entity @s[scores={Time=20}] run function medabots_server:items/medapart/press/20
execute if entity @s[scores={Time=60..}] run function medabots_server:items/medapart/press/60_

# Increase time by 1
scoreboard players add @s[scores={MedapartType=30}] Time 1

# Attacked by shooting trap
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=!ally_team,tag=!enemy_team] run function medabots_server:items/medapart/shooting_trap/hit
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=ally_team] if entity @s[tag=!ally_team] run function medabots_server:items/medapart/shooting_trap/hit
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=enemy_team] if entity @s[tag=!enemy_team] run function medabots_server:items/medapart/shooting_trap/hit

# Name the attack
#execute as run data; MC-121807
execute if entity @s[tag=!ally_medabot,tag=!enemy_medabot] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!press] run data merge entity @s {CustomName:'{"translate":"medabots_server:move.press"}',Tags:["press"]}
execute if entity @s[tag=ally_medabot] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!press] run data merge entity @s {CustomName:'{"translate":"medabots_server:move.press"}',Tags:["press","ally_team"]}
execute if entity @s[tag=enemy_medabot] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!press] run data merge entity @s {CustomName:'{"translate":"medabots_server:move.press"}',Tags:["press","enemy_team"]}
execute if entity @s[tag=!ally_medabot,tag=!enemy_medabot,scores={ScoutTime=1..}] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!press] run data merge entity @s {CustomName:'{"translate":"medabots_server:move.press"}',Tags:["press","strong"]}
execute if entity @s[tag=ally_medabot,scores={ScoutTime=1..}] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!press] run data merge entity @s {CustomName:'{"translate":"medabots_server:move.press"}',Tags:["press","ally_team","strong"]}
execute if entity @s[tag=enemy_medabot,scores={ScoutTime=1..}] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!press] run data merge entity @s {CustomName:'{"translate":"medabots_server:move.press"}',Tags:["press","enemy_team","strong"]}