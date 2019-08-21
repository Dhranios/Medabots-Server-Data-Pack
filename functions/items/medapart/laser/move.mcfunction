summon minecraft:armor_stand ^ ^ ^0.333 {CustomName:'{"translate":"medabots_server:move.laser"}',Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:light_blue_stained_glass",Count:1b}],Marker:1b,Tags:["laser","life_time"]}
summon minecraft:armor_stand ^ ^ ^0.666 {CustomName:'{"translate":"medabots_server:move.laser"}',Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:light_blue_stained_glass",Count:1b}],Marker:1b,Tags:["laser","life_time"]}
summon minecraft:armor_stand ^ ^ ^1 {CustomName:'{"translate":"medabots_server:move.laser"}',Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:light_blue_stained_glass",Count:1b}],Marker:1b,Tags:["laser","life_time"]}
execute as @e[tag=new] positioned as @s run teleport @s ~ ~ ~ ~ ~
teleport @s ^ ^ ^1

tag @s add me

execute at @s positioned ~ ~1.7 ~ if block ~ ~ ~ minecraft:air run tag @s add air
execute at @s positioned ~ ~1.7 ~ if block ~ ~ ~ minecraft:gray_stained_glass run tag @s add glass
execute at @s positioned ~ ~1.7 ~ if block ~ ~ ~ minecraft:barrier if block ~ ~-1 ~ minecraft:cut_sandstone positioned ~ ~-1 ~ if entity @e[distance=..0.7,tag=mirror] run tag @s add mirror
execute at @s positioned ~ ~1.7 ~ if block ~ ~ ~ minecraft:black_stained_glass positioned ~ ~-1 ~ if entity @e[distance=..0.7,tag=ice_block] run tag @s add ice_block
execute at @s positioned ~ ~1.325 ~ if entity @e[distance=..0.7,tag=balloon_bomb] run tag @s add balloon_bomb
execute at @s positioned ~ ~1.7 ~ as @e[distance=..0.7,tag=!me,tag=!ice_block,type=!minecraft:armor_stand,type=!minecraft:area_effect_cloud,type=!minecraft:item,type=!minecraft:experience_orb] if data entity @s Health run tag @e[tag=me] add hit
execute at @s positioned ~ ~0.7 ~ as @e[distance=..0.7,tag=!me,tag=!ice_block,type=!minecraft:armor_stand,type=!minecraft:area_effect_cloud,type=!minecraft:item,type=!minecraft:experience_orb] if data entity @s Health run tag @e[tag=me] add hit

execute at @s[tag=mirror] positioned ~ ~0.7 ~ if entity @e[distance=..0.7,tag=mirror,y_rotation=45] run tag @s add 45
execute at @s[tag=mirror] positioned ~ ~0.7 ~ if entity @e[distance=..0.7,tag=mirror,y_rotation=-45] run tag @s add -45

execute if entity @s[tag=mirror] run playsound medabots_server:block.mirror.reflect block @a ~ ~ ~ 1
execute store result score @s[tag=mirror] HomeRot run data get entity @s Rotation[0]
execute at @s[tag=mirror,tag=45,scores={HomeRot=135..180}] run teleport @s ~ ~ ~ ~-90 ~
execute at @s[tag=mirror,tag=45,scores={HomeRot=-180..-135}] run teleport @s ~ ~ ~ ~-90 ~
execute at @s[tag=mirror,tag=45,scores={HomeRot=-45..45}] run teleport @s ~ ~ ~ ~-90 ~
execute at @s[tag=mirror,tag=45,scores={HomeRot=-135..-45}] run teleport @s ~ ~ ~ ~90 ~
execute at @s[tag=mirror,tag=45,scores={HomeRot=45..135}] run teleport @s ~ ~ ~ ~90 ~
execute at @s[tag=mirror,tag=-45,scores={HomeRot=135..180}] run teleport @s ~ ~ ~ ~90 ~
execute at @s[tag=mirror,tag=-45,scores={HomeRot=-180..-135}] run teleport @s ~ ~ ~ ~90 ~
execute at @s[tag=mirror,tag=-45,scores={HomeRot=-45..45}] run teleport @s ~ ~ ~ ~90 ~
execute at @s[tag=mirror,tag=-45,scores={HomeRot=-135..-45}] run teleport @s ~ ~ ~ ~-90 ~
execute at @s[tag=mirror,tag=-45,scores={HomeRot=45..135}] run teleport @s ~ ~ ~ ~-90 ~

execute at @s[tag=balloon_bomb] positioned ~ ~1.7 ~ positioned ~ ~-0.375 ~ run tag @e[distance=..0.7,tag=balloon_bomb] add burst

execute at @s[tag=hit,tag=!strong] positioned ~ ~1.7 ~ run effect give @e[distance=..0.7,type=!#medabots_server:undead] minecraft:instant_damage 1 1 true
execute at @s[tag=hit,tag=!strong] positioned ~ ~1.7 ~ run effect give @e[distance=..0.7,type=#medabots_server:undead] minecraft:instant_health 1 1 true
execute at @s[tag=hit,tag=strong] positioned ~ ~1.7 ~ run effect give @e[distance=..0.7,type=!#medabots_server:undead] minecraft:instant_damage 1 2 true
execute at @s[tag=hit,tag=strong] positioned ~ ~1.7 ~ run effect give @e[distance=..0.7,type=#medabots_server:undead] minecraft:instant_health 1 2 true
execute at @s[tag=hit,tag=!strong] positioned ~ ~0.7 ~ run effect give @e[distance=..0.7,type=!#medabots_server:undead] minecraft:instant_damage 1 1 true
execute at @s[tag=hit,tag=!strong] positioned ~ ~0.7 ~ run effect give @e[distance=..0.7,type=#medabots_server:undead] minecraft:instant_health 1 1 true
execute at @s[tag=hit,tag=strong] positioned ~ ~0.7 ~ run effect give @e[distance=..0.7,type=!#medabots_server:undead] minecraft:instant_damage 1 2 true
execute at @s[tag=hit,tag=strong] positioned ~ ~0.7 ~ run effect give @e[distance=..0.7,type=#medabots_server:undead] minecraft:instant_health 1 2 true

tag @s[tag=!air,tag=!glass,tag=!mirror,tag=!ice_block] add dead
tag @s[tag=hit] add dead
tag @s remove air
tag @s remove glass
tag @s remove mirror
tag @s remove 45
tag @s remove -45
tag @s remove ice_block
tag @s remove me
scoreboard players remove @s Steps 1
execute if entity @s[tag=!dead,scores={Steps=1..}] at @s run function medabots_server:items/medapart/laser/move