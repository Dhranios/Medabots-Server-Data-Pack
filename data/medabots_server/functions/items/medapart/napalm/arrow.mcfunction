# Part of team?
execute if entity @e[scores={MedapartID=26,Time=20..59},tag=ally_medabot] run tag @s[tag=!life_time] add ally_team
execute if entity @e[scores={MedapartID=26,Time=20..59},tag=enemy_medabot] run tag @s[tag=!life_time] add enemy_team
execute if entity @s[tag=!life_time] run scoreboard players operation @s ArrowID > @e[type=minecraft:arrow] ArrowID
execute if entity @s[tag=!life_time] run scoreboard players add @s ArrowID 1

# Leave a temporary trail
tag @s add life_time
execute if entity @s[scores={LifeTime=2..},tag=!ally_team,tag=!enemy_team] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.napalm"}',Duration:2,Tags:["napalm","life_time"]}
execute if entity @s[scores={LifeTime=2..},tag=ally_team] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.napalm"}',Duration:2,Tags:["napalm","life_time","ally_team"]}
execute if entity @s[scores={LifeTime=2..},tag=enemy_team] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.napalm"}',Duration:2,Tags:["napalm","life_time","enemy_team"]}
execute if entity @s[scores={LifeTime=2..}] run scoreboard players operation @e[distance=..2,tag=napalm,type=minecraft:area_effect_cloud] ArrowID = @s ArrowID