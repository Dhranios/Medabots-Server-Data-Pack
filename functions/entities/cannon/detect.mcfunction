execute if entity @s[tag=detect,tag=look_over_x_negative] align xyz if entity @a[dx=-11,dy=3,dz=0,tag=hostile,tag=!enemy_medabot,scores={Battle=1}] run tag @s add detected
execute if entity @s[tag=detect,tag=look_over_x_positive] align xyz if entity @a[dx=11,dy=3,dz=0,tag=hostile,tag=!enemy_medabot,scores={Battle=1}] run tag @s add detected
execute if entity @s[tag=detect,tag=look_over_z_negative] align xyz if entity @a[dx=0,dy=3,dz=-11,tag=hostile,tag=!enemy_medabot,scores={Battle=1}] run tag @s add detected
execute if entity @s[tag=detect,tag=look_over_z_positive] align xyz if entity @a[dx=0,dy=3,dz=11,tag=hostile,tag=!enemy_medabot,scores={Battle=1}] run tag @s add detected
execute if entity @s[tag=cannon_4] positioned ~ ~-1 ~ run summon minecraft:area_effect_cloud ^ ^ ^5.5 {CustomName:'{"text":"Cannon Target"}',Tags:["cannon_target"],Duration:1}
execute at @e[tag=cannon_target,type=minecraft:area_effect_cloud] positioned ~ ~1 ~ if entity @a[limit=1,distance=..5.5,tag=hostile,tag=!enemy_medabot,scores={Battle=1}] run tag @s add detected
kill @e[tag=cannon_target,type=minecraft:area_effect_cloud]
teleport @s[tag=cannon_4,tag=detected] ~ ~ ~ facing entity @a[limit=1,tag=hostile,sort=nearest,tag=!enemy_medabot,scores={Battle=1}]