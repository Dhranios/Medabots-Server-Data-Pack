summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.alarm"}',Tags:["alarm"],Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:10,Unbreakable:1b,CustomModelData:33}}]}
fill ~ ~ ~ ~ ~1 ~ minecraft:black_stained_glass
scoreboard players set @e[distance=..0.7,tag=alarm] PowerNeeded 1
scoreboard players set @e[distance=..0.7,tag=alarm] PowerAmount 0