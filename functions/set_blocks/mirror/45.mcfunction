summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.mirror"}',Tags:["mirror","45"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[45.0f,0.0f]}
setblock ~ ~ ~ minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock ~ ~1 ~ minecraft:redstone_block