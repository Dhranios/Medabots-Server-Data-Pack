scoreboard players set @s[tag=tank] LegsArmor 0
execute at @e[type=minecraft:area_effect_cloud,tag=anti_tank,distance=..3,scores={DetectTime=40..},tag=!strong] run summon minecraft:creeper ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.anti_tank"}',Tags:["anti_tank"],ExplosionRadius:2b,Fuse:0s}
execute at @e[type=minecraft:area_effect_cloud,tag=anti_tank,distance=..3,scores={DetectTime=40..},tag=strong] run summon minecraft:creeper ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.anti_tank"}',Tags:["anti_tank"],ExplosionRadius:3b,Fuse:0s}
execute if entity @e[type=minecraft:area_effect_cloud,tag=anti_tank,distance=..3,scores={DetectTime=40..},tag=!strong] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 0 true
execute if entity @e[type=minecraft:area_effect_cloud,tag=anti_tank,distance=..3,scores={DetectTime=40..},tag=!strong] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 0 true
execute if entity @e[type=minecraft:area_effect_cloud,tag=anti_tank,distance=..3,scores={DetectTime=40..},tag=strong] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 1 true
execute if entity @e[type=minecraft:area_effect_cloud,tag=anti_tank,distance=..3,scores={DetectTime=40..},tag=strong] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 1 true
tag @s add hit_by_anti_tank
tag @e[type=minecraft:area_effect_cloud,tag=anti_tank,distance=..3,scores={DetectTime=40..}] add dead