execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity rubberobo_enters_grassland_a
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud 30 59 25 {Duration:1000000,Tags:["cutscene","this_dialog","medabot","dragonbeetle"],Rotation:[90.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=30,y=59,z=25,distance=..1,tag=dragonbeetle] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=30,y=59,z=25,distance=..1,tag=dragonbeetle] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand 30 59 25 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","source","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}'}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand 30 59 25 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","legs","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_flyfly"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.fly.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_flyfly.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_flyfly",gender:0b,move:"fly",part:"legs",armor:40,defense:28,activated:0b,model_data:{height:0,legs:[]},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand 30 59 25 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","left_arm","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_flame_gun"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_flame_gun.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hellphoenix_flame_gun",gender:0b,move:"melt",part:"left_arm",armor:45,charge:60,power:22,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand 30 59 25 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","right_arm","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_fire_gun"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_fire_gun.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hellphoenix_fire_gun",gender:0b,move:"melt",part:"right_arm",armor:45,charge:60,power:18,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand 30 59 25 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","head","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_hardweighter"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"15"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"105"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_hardweighter.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_hardweighter",gender:0b,move:"press",part:"head",armor:105,charge:60,power:25,uses:15,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned 30 59 25 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=dragonbeetle] MedabotNr
execute if entity @s[scores={Dialog=1}] as @e[x=30,y=59,z=25,tag=dragonbeetle,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1..}] at @e[tag=dragonbeetle,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=dragonbeetle,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] run tag @e[tag=dragonbeetle,tag=!medabot_model,tag=this_dialog,limit=1] add dancing
teleport @s[scores={Dialog=1}] 31 59 29 165 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.dragonbeetle","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_grassland_a.1"}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.dragonbeetle","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_grassland_a.2"}]}
tag @s[scores={Dialog=64}] remove dialog_infinity_rubberobo_enters_grassland_a
scoreboard players reset @s[scores={Dialog=64}] DialogNr
scoreboard players set @s[scores={Dialog=64}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog