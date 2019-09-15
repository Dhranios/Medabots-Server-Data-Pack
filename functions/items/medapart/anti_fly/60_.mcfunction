# Remove the weapon
clear @s minecraft:tipped_arrow{medabots_server:{id:"medabots_server:bullet"}}
clear @s minecraft:bow{medabots_server:{id:"medabots_server:anti_fly"}}
replaceitem entity @s[type=!minecraft:player] weapon.offhand minecraft:air
replaceitem entity @s[type=!minecraft:player] weapon.mainhand minecraft:air

# Give back the original part
replaceitem entity @s[scores={MedapartID=1,Drop=0},tag=hostile] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:53,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sphere_doomers_electric_doomer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.neutral"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sphere_doomers"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sphere_doomers_electric_doomer.model"}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:sphere_doomers_electric_doomer",gender:2b,move:"anti_fly",part:"right_arm",armor:40,power:24,activated:1b,version:1}}

# Finish move
scoreboard players reset @s[tag=left_arm_selected,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{part:"left_arm"}}}]}] MedapartType
scoreboard players reset @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{part:"right_arm"}}}]}] MedapartType
scoreboard players reset @s[tag=head_selected,nbt={Inventory:[{Slot:3b,tag:{medabots_server:{part:"head"}}}]}] MedapartType
scoreboard players reset @s[type=!minecraft:player] MedapartType
scoreboard players reset @s[tag=!hostile] MedapartType
execute unless entity @s[scores={MedapartType=1..}] run scoreboard players reset @s MedapartID
execute unless entity @s[scores={MedapartType=1..}] run scoreboard players set @s Time 0