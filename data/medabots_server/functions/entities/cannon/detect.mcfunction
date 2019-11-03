execute if entity @s[tag=detect,tag=looking,tag=west] align xyz if entity @e[dx=-11,dy=4,dz=0,tag=medabot,tag=!enemy_medabot,tag=!dying,scores={Battle=1}] run tag @s add detected
execute if entity @s[tag=detect,tag=looking,tag=east] align xyz if entity @e[dx=11,dy=4,dz=0,tag=medabot,tag=!enemy_medabot,tag=!dying,scores={Battle=1}] run tag @s add detected
execute if entity @s[tag=detect,tag=looking,tag=north] align xyz if entity @e[dx=0,dy=4,dz=-11,tag=medabot,tag=!enemy_medabot,tag=!dying,scores={Battle=1}] run tag @s add detected
execute if entity @s[tag=detect,tag=looking,tag=south] align xyz if entity @e[dx=0,dy=4,dz=11,tag=medabot,tag=!enemy_medabot,tag=!dying,scores={Battle=1}] run tag @s add detected

execute if entity @s[tag=detect,tag=rotating] positioned ~ ~-1 ~ run summon minecraft:area_effect_cloud ^ ^ ^5.5 {CustomName:'{"text":"Cannon Target"}',Tags:["cannon_target"],Duration:1}
execute at @e[tag=cannon_target,type=minecraft:area_effect_cloud] positioned ~ ~1 ~ if entity @e[limit=1,distance=..5.5,tag=medabot,tag=!enemy_medabot,tag=!dying,scores={Battle=1}] run tag @s add detected
kill @e[tag=cannon_target,type=minecraft:area_effect_cloud]
execute at @s run teleport @s[tag=detect,tag=rotating,tag=detected] ~ ~ ~ facing entity @e[limit=1,tag=medabot,sort=nearest,tag=!enemy_medabot,tag=!dying,scores={Battle=1}]