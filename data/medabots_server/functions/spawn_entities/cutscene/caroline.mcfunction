summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1000000,Tags:["cutscene","caroline","medabot","this_dialog"]}
scoreboard players operation @e[distance=..1,tag=caroline] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..1,tag=caroline] MedabotNr 1
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","caroline","legs","medabot_model","model_piece","new_model","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:24,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackplace"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"44"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackplace.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:blackbeetle_blackplace",gender:1b,move:"two_legged",part:"legs",armor:40,defense:44,activated:0b,model_data:{height:0,leg_offset:[{l:0,u:0,f:0},{l:0,u:0,f:0}]},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","caroline","left_arm","medabot_model","model_piece","new_model","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:24,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackblaster"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackblaster.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:blackbeetle_blackblaster",gender:1b,move:"gatling",part:"left_arm",armor:35,power:28,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","caroline","right_arm","medabot_model","model_piece","new_model","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:24,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackfuser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackfuser.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:blackbeetle_blackfuser",gender:1b,move:"rifle",part:"right_arm",armor:35,power:40,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","caroline","head","medabot_model","model_piece","new_model","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:24,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackbalister"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackbalister.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:blackbeetle_blackbalister",gender:1b,move:"missile",part:"head",armor:65,power:31,uses:6,activated:0b,version:1}}}]}
execute as @e[tag=new_model] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=caroline] MedabotNr
execute as @e[tag=caroline,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
tag @e[tag=new_model] remove new_model