function medabots_server:set_blocks/pot
data modify entity @e[distance=..0.7,tag=pot,limit=1] ArmorItems[3].tag.medabots_server merge value {contents:{id:"minecraft:lapis_lazuli",Count:20b,tag:{CustomModelData:1,medabots_server:{stage_item:1b,id:"medabots_server:medallar_cent"},display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.medallar_cent"}'}}}}