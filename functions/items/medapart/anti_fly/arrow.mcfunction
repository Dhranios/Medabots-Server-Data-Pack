# Part of team?
execute if entity @e[scores={MedapartType=1,Time=20..60},tag=ally_medabot] run tag @s[tag=!life_time] add ally_team
execute if entity @e[scores={MedapartType=1,Time=20..60},tag=enemy_medabot] run tag @s[tag=!life_time] add enemy_team

# Leave a 2 tick trail
tag @s add life_time
execute if entity @s[scores={LifeTime=2..},tag=!ally_team,tag=!enemy_team] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.anti_fly"}',Duration:2,Tags:["anti_fly","life_time"]}
execute if entity @s[scores={LifeTime=2..},tag=ally_team] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.anti_fly"}',Duration:2,Tags:["anti_fly","life_time","ally_team"]}
execute if entity @s[scores={LifeTime=2..},tag=enemy_team] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.anti_fly"}',Duration:2,Tags:["anti_fly","life_time","enemy_team"]}
