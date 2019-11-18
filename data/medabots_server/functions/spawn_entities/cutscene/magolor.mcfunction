summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1000000,Tags:["cutscene","magolor","medabot","this_dialog"]}
scoreboard players operation @e[distance=..1,tag=magolor] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..1,tag=magolor] MedabotNr 1
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","magolor","legs","medabot_model","model_piece","new_model"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:45,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.magolor_halcandran_cape"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.fly.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"23"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"20"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.magolor"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.magolor_halcandran_cape.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:magolor_halcandran_cape",gender:0b,move:"fly",part:"legs",armor:20,defense:23,activated:0b,model_data:{leg_count:0},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","magolor","left_arm","medabot_model","model_piece","new_model"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:45,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.magolor_magic_hand"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"30"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.magolor"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.magolor_magic_hand.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:magolor_magic_hand",gender:0b,move:"press",part:"left_arm",armor:30,power:22,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","magolor","right_arm","medabot_model","model_piece","new_model"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:45,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.magolor_tech_hand"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"30"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.magolor"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.magolor_tech_hand.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:magolor_tech_hand",gender:0b,move:"rifle",part:"right_arm",armor:30,power:23,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","magolor","head","medabot_model","model_piece","new_model"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:45,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.magolor_master_crown"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.destroy"}','{"italic":false,"color":"white","translate":"medabots_server:move.destroy.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.magolor"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.magolor_master_crown.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:magolor_master_crown",gender:0b,move:"destroy",part:"head",armor:45,power:78,uses:7,activated:0b,model_data:{has_head:0b},version:1}}}]}
execute as @e[tag=new_model] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=magolor] MedabotNr
execute as @e[tag=magolor,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
tag @e[tag=new_model] remove new_model