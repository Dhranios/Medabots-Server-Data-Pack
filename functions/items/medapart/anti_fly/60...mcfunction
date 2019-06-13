# Remove the weapon
clear @s minecraft:tipped_arrow{medabots_server:{id:"medabots_server:bullet"}}
clear @s minecraft:bow{medabots_server:{id:"medabots_server:anti_fly"}}
replaceitem entity @s[type=!minecraft:player] weapon.offhand minecraft:air
replaceitem entity @s[type=!minecraft:player] weapon.mainhand minecraft:air

# Give back the original part
replaceitem entity @s[scores={MedapartType=1,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:53,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sphere_doomers_electric_doomer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.neutral"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sphere_doomers"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sphere_doomers_electric_doomer.model"}']},medabots_server:{id:"medabots_server:sphere_doomers_electric_doomer",gender:2b,move:"anti_fly",part:"right_arm",armor:40,power:24,activated:1b,version:1}}

# Finish move
scoreboard players reset @s[scores={AntiFly=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{part:"left_arm"}}}]}] AntiFly
scoreboard players reset @s[scores={AntiFly=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{part:"right_arm"}}}]}] AntiFly
scoreboard players reset @s[scores={AntiFly=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{part:"head"}}}]}] AntiFly
scoreboard players reset @s[scores={AntiFly=1..},type=!minecraft:player] AntiFly
execute unless entity @s[scores={AntiFly=1..}] run scoreboard players reset @s MedapartType
execute unless entity @s[scores={AntiFly=1..}] run scoreboard players set @s Time 0