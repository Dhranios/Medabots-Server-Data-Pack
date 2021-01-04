# Remove the weapon
clear @s minecraft:tipped_arrow{medabots_server:{id:"medabots_server:bullet"}}
clear @s minecraft:bow{medabots_server:{id:"medabots_server:beam"}}
item entity @s[type=!minecraft:player] weapon.offhand replace minecraft:air
item entity @s[type=!minecraft:player] weapon.mainhand replace minecraft:air

# Give back the original part
item entity @s[scores={MedapartID=1,Drop=0},tag=hostile] hotbar.2 replace minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_zoom"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.beam"}','{"italic":false,"color":"white","translate":"medabots_server:move.beam.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"20"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_zoom.model"}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:aimflash_zoom",gender:0b,move:"beam",part:"right_arm",armor:20,charge:60,power:27,activated:1b,version:1}}
item entity @s[scores={MedapartID=2,Drop=0},tag=hostile] hotbar.3 replace minecraft:fishing_rod{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:15,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.arcbeetle_prominence"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.beam"}','{"italic":false,"color":"white","translate":"medabots_server:move.beam.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"4"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.arcbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.arcbeetle_prominence.model"}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:arcbeetle_prominence",gender:0b,move:"beam",part:"head",armor:70,charge:60,power:76,uses:4,activated:1b,version:1}}

# Finish the move
scoreboard players reset @s[tag=left_arm_activated,nbt={Inventory:[{tag:{medabots_server:{part:"left_arm"}}}]}] MedapartType
scoreboard players reset @s[tag=right_arm_activated,nbt={Inventory:[{tag:{medabots_server:{part:"right_arm"}}}]}] MedapartType
scoreboard players reset @s[tag=head_activated,nbt={Inventory:[{tag:{medabots_server:{part:"head"}}}]}] MedapartType
scoreboard players reset @s[type=!minecraft:player] MedapartType
scoreboard players reset @s[tag=!hostile] MedapartType
execute unless entity @s[scores={MedapartType=1..}] run scoreboard players reset @s MedapartID
execute unless entity @s[scores={MedapartType=1..}] run scoreboard players set @s Time 0