summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.pot"}',Tags:["pot"],Duration:2147483647}
setblock ~ ~ ~ minecraft:chest[facing=south,type=single]{Items:[{Slot:0b,id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,HideFlags:4,CustomModelData:1,AttributeModifiers:[],medabots_server:{id:"medabots_server:blue_plant",stage_item:1b},display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blue_plant"}'}}}]}
setblock ~ ~1 ~ minecraft:barrier
execute as @e[distance=..0.7,tag=floor_switch] at @s run function medabots_server:blocks/floor_switch