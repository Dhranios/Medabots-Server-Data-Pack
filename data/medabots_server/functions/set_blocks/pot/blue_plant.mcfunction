function medabots_server:set_blocks/pot
data modify entity @e[distance=..0.7,tag=pot,limit=1] ArmorItems[3].tag.medabots_server merge value {contents:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,HideFlags:4,CustomModelData:1,AttributeModifiers:[],medabots_server:{id:"medabots_server:plant",type:"blue",stage_item:1b},display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blue_plant"}'}}}}