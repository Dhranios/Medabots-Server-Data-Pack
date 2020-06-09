summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1000000,Tags:["cutscene","max","medabot","this_dialog"]}
scoreboard players operation @e[distance=..1,tag=max] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..1,tag=max] MedabotNr 1
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","max","source","medabot_model","model_piece","new_model","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}'}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","max","legs","medabot_model","model_piece","new_model","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_carrybag"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.wheel"}','{"italic":false,"color":"white","translate":"medabots_server:move.wheel.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.defense","with":[{"text":"28"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_carrybag.model"}']},medabots_server:{id:"medabots_server:aimflash_carrybag",gender:0b,move:"wheel",part:"legs",armor:50,defense:28,activated:0b,model_data:{height:0,legs:[]},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","max","left_arm","medabot_model","model_piece","new_model","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_tripod"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_tripod.model"}']},medabots_server:{id:"medabots_server:aimflash_tripod",gender:0b,move:"gatling",part:"left_arm",armor:45,charge:60,power:20,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","max","right_arm","medabot_model","model_piece","new_model","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_zoom"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.beam"}','{"italic":false,"color":"white","translate":"medabots_server:move.beam.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"20"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_zoom.model"}']},medabots_server:{id:"medabots_server:aimflash_zoom",gender:0b,move:"beam",part:"right_arm",armor:20,charge:60,power:27,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","max","head","medabot_model","model_piece","new_model","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_strobe"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:move.falling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"8"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_strobe.model"}']},medabots_server:{id:"medabots_server:aimflash_strobe",gender:0b,move:"falling",part:"head",armor:65,charge:60,power:20,uses:8,activated:0b,version:1}}}]}
execute as @e[tag=new_model] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=max] MedabotNr
execute as @e[tag=max,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
tag @e[tag=new_model] remove new_model