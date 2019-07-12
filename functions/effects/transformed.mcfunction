# Count down timer
scoreboard players remove @s[scores={TransformLTime=..2,Time=0}] TransformLTime 1
scoreboard players remove @s[scores={TransformRTime=..2,Time=0}] TransformRTime 1
scoreboard players remove @s[scores={TransformHTime=..2,Time=0}] TransformHTime 1
scoreboard players remove @s[scores={TransformLTime=3..}] TransformLTime 1
scoreboard players remove @s[scores={TransformRTime=3..}] TransformRTime 1
scoreboard players remove @s[scores={TransformHTime=3..}] TransformHTime 1

# Give back medapart
replaceitem entity @s[scores={TransformLTime=1,TransformLID=1}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:38,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.flame_tisala_sala_arm"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.transform"}','{"italic":false,"color":"white","translate":"medabots_server:move.transform.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.flame_tisala"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.flame_tisala_sala_arm.model"}']},medabots_server:{id:"medabots_server:flame_tisala_sala_arm",gender:1b,move:"transform",part:"left_arm",armor:60,power:33,activated:1b,version:1}}
replaceitem entity @s[scores={TransformRTime=1,TransformRID=1}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:38,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.flame_tisala_sala_hand"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.transform"}','{"italic":false,"color":"white","translate":"medabots_server:move.transform.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.flame_tisala"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.flame_tisala_sala_hand.model"}']},medabots_server:{id:"medabots_server:flame_tisala_sala_hand",gender:1b,move:"transform",part:"right_arm",armor:60,power:33,activated:1b,version:1}}
replaceitem entity @s[scores={TransformHTime=1,TransformHID=1}] hotbar.3 minecraft:fishing_rod{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:38,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.flame_tisala_sala_head"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.transform"}','{"italic":false,"color":"white","translate":"medabots_server:move.transform.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"95"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.flame_tisala"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.flame_tisala_sala_head.model"}']},medabots_server:{id:"medabots_server:flame_tisala_sala_head",gender:1b,move:"transform",part:"head",armor:95,power:33,uses:6,activated:1b,version:1}}
replaceitem entity @s[scores={TransformHTime=1,TransformHID=2}] hotbar.3 minecraft:fishing_rod{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:41,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_changedress"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.transform"}','{"italic":false,"color":"white","translate":"medabots_server:move.transform.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"90"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.potato_insect"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_changedress.model"}']},medabots_server:{id:"medabots_server:potato_insect_changedress",gender:1b,move:"transform",part:"head",armor:90,power:25,uses:7,activated:1b,version:1}}

# Update model
execute store result score #temp MedabotNr run scoreboard players get @s MedabotNr
execute as @e[scores={MedabotNr=0..},tag=medabot_model] if score @s MedabotNr = #temp MedabotNr run tag @s add this_model
execute if entity @s[scores={TransformLTime=1}] run kill @e[tag=left_arm,tag=this_model]
execute if entity @s[scores={TransformRTime=3}] run kill @e[tag=right_arm,tag=this_model]
execute if entity @s[scores={TransformHTime=2}] run kill @e[tag=head,tag=this_model]
execute if entity @s[scores={TransformHTime=2}] run kill @e[tag=chest,tag=this_model]
execute if entity @s[scores={TransformLTime=1}] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","medabot_model","new"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}'}
execute if entity @s[scores={TransformRTime=3}] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","medabot_model","new"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}'}
execute if entity @s[scores={TransformHTime=2}] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","medabot_model","new"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}'}
execute if entity @s[nbt={Inventory:[{Slot:16b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] run tag @e[tag=medabot_model,tag=new] add male_tinpet
execute if entity @s[nbt={Inventory:[{Slot:16b,tag:{medabots_server:{id:"medabots_server:female_tinpet"}}}]}] run tag @e[tag=medabot_model,tag=new] add female_tinpet
execute if entity @s[nbt={Inventory:[{Slot:16b,tag:{medabots_server:{id:"medabots_server:neutral_tinpet"}}}]}] run tag @e[tag=medabot_model,tag=new] add neutral_tinpet
execute at @s as @e[tag=medabot_model,tag=new] run scoreboard players operation @s MedabotNr = @a[distance=..0.1,limit=1] MedabotNr
execute if entity @s[scores={TransformLTime=1}] as @e[tag=left_arm,tag=new] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] Inventory[1]
execute if entity @s[scores={TransformRTime=3}] as @e[tag=right_arm,tag=new] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] Inventory[2]
execute if entity @s[scores={TransformHTime=2}] as @e[tag=head,tag=new] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] Inventory[3]
tag @e[tag=medabot_model,tag=new] remove new
scoreboard players reset #temp MedabotNr
tag @e[tag=this_model] remove this_model

# Remove timer
scoreboard players reset @s[scores={TransformLTime=0}] TransformLID
scoreboard players reset @s[scores={TransformRTime=0}] TransformRID
scoreboard players reset @s[scores={TransformHTime=0}] TransformHID
scoreboard players reset @s[scores={TransformLTime=0}] TransformLTime
scoreboard players reset @s[scores={TransformRTime=0}] TransformRTime
scoreboard players reset @s[scores={TransformHTime=0}] TransformHTime