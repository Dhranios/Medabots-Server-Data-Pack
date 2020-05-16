summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.door"}',Tags:["door","north"],Invisible:1b,Marker:1b,Rotation:[-180.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:10,Unbreakable:1b,CustomModelData:20}}]}
function medabots_server:set_blocks/door
fill ~ ~ ~ ~-1 ~3 ~ minecraft:barrier replace minecraft:air