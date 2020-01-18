# Explode if it's in the ground or at an enemy
execute store result score #temp ArrowID run scoreboard players get @s ArrowID
tag @s add in_ground
execute at @e[type=minecraft:arrow,tag=napalm] if score @e[distance=..0.1,limit=1] ArrowID = #temp ArrowID run tag @s remove in_ground
execute at @e[type=minecraft:area_effect_cloud,tag=napalm,distance=0.1..] if score @e[distance=..0.1,limit=1] ArrowID = #temp ArrowID run tag @s remove in_ground
#execute if entity @s[tag=!ally_team,tag=!enemy_team] positioned ~ ~1 ~ if entity @e[type=!minecraft:arrow,type=!minecraft:experience_orb,type=!minecraft:item,tag=!napalm,distance=..3,tag=hostile] run tag @s add in_ground
#execute if entity @s[tag=!ally_team,tag=!enemy_team] if entity @e[type=!minecraft:arrow,type=!minecraft:experience_orb,type=!minecraft:item,tag=!napalm,distance=..3,tag=hostile] run tag @s add in_ground
#execute if entity @s[tag=ally_team] positioned ~ ~1 ~ if entity @e[type=!minecraft:arrow,type=!minecraft:experience_orb,type=!minecraft:item,tag=!napalm,distance=..3,tag=hostile,tag=!ally_medabot] run tag @s add in_ground
#execute if entity @s[tag=ally_team] if entity @e[type=!minecraft:arrow,type=!minecraft:experience_orb,type=!minecraft:item,tag=!napalm,distance=..3,tag=hostile,tag=!ally_medabot] run tag @s add in_ground
#execute if entity @s[tag=enemy_team] positioned ~ ~1 ~ if entity @e[type=!minecraft:arrow,tag=!napalm,distance=..3,tag=hostile,tag=!enemy_medabot] run tag @s add in_ground
#execute if entity @s[tag=enemy_team] if entity @e[type=!minecraft:arrow,type=!minecraft:experience_orb,type=!minecraft:item,tag=!napalm,distance=..3,tag=hostile,tag=!enemy_medabot] run tag @s add in_ground

execute if entity @s[tag=in_ground,tag=!ally_team,tag=!enemy_team] run summon minecraft:creeper ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.napalm"}',Fuse:0s,ExplosionRadius:2b,Invulnerable:1b,Tags:["napalm","life_time"]}
execute if entity @s[tag=in_ground,tag=ally_team] run summon minecraft:creeper ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.napalm"}',Fuse:0s,ExplosionRadius:2b,Invulnerable:1b,Tags:["napalm","life_time"],Team:"AllyMedabot"}
execute if entity @s[tag=in_ground,tag=enemy_team] run summon minecraft:creeper ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.napalm"}',Fuse:0s,ExplosionRadius:2b,Invulnerable:1b,Tags:["napalm","life_time"],Team:"EnemyMedabot"}
execute if entity @s[tag=in_ground] as @e[type=minecraft:arrow,tag=napalm] if score @s ArrowID = #temp ArrowID run kill @s
execute if entity @s[tag=in_ground] as @e[type=minecraft:area_effect_cloud,tag=napalm] if score @s ArrowID = #temp ArrowID run kill @s
scoreboard players reset #temp ArrowID