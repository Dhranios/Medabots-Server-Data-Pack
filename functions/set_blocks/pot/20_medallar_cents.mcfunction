summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.pot"}',Tags:["pot"],Duration:2147483647}
setblock ~ ~ ~ minecraft:chest[facing=south,type=single]{Items:[{Slot:0b,id:"minecraft:lapis_lazuli",Count:20b,tag:{CustomModelData:1,medabots_server:{stage_item:1b,id:"medabots_server:medallar_cent"},display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.medallar_cent"}'}}}]}
setblock ~ ~1 ~ minecraft:barrier
execute as @e[distance=..0.7,tag=floor_switch] at @s run function medabots_server:blocks/floor_switch