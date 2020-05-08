execute positioned ~ ~-0.4 ~ run summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.laser"}',Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:light_blue_stained_glass",Count:1b}],Marker:1b,Tags:["laser","source","new"]}
execute positioned ~ ~-0.4 ~ run summon minecraft:area_effect_cloud ^ ^ ^1 {CustomName:'{"translate":"medabots_server:entity.laser"}',Tags:["laser","new"],Duration:1}
execute as @e[type=minecraft:armor_stand,tag=laser,distance=..6,sort=nearest,limit=1,tag=new] run teleport @s ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=laser,distance=..6,sort=nearest,limit=1,tag=new]
tag @e[tag=laser] remove new
kill @e[type=minecraft:area_effect_cloud,tag=laser]