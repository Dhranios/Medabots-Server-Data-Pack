execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
tag @s[scores={Dialog=1}] add get_nino_dialog
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other get_nino
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud ^ ^ ^3 {Duration:1000000,Tags:["cutscene","nino","medabot","this_dialog"]}
execute if entity @s[scores={Dialog=1}] positioned ^ ^ ^3 run scoreboard players operation @e[distance=..1,tag=nino] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] positioned ^ ^ ^3 run scoreboard players add @e[distance=..1,tag=nino] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand ^ ^ ^3 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","nino","legs","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:70,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.nino_sand_proof_boots"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"20"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.nino"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.nino_sand_proof_boots.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:nino_sand_proof_boots",gender:1b,move:"two_legged",part:"legs",armor:40,defense:20,activated:0b,model_data:{leg_count:2},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand ^ ^ ^3 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","nino","left_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:70,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.nino_excalibur"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"30"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.nino"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.nino_excalibur.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:nino_excalibur",gender:1b,move:"anti_fly",part:"left_arm",armor:30,power:28,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand ^ ^ ^3 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","nino","right_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:70,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.nino_ragnarok"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}','{"italic":false,"color":"white","translate":"medabots_server:move.napalm.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"15"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.nino"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.nino_ragnarok.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:nino_ragnarok",gender:1b,move:"napalm",part:"right_arm",armor:15,power:20,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand ^ ^ ^3 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","nino","head","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:70,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.nino_bolganone"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"18"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.nino"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.nino_bolganone.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:nino_bolganone",gender:1b,move:"melt",part:"head",armor:50,power:22,uses:5,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned ^ ^ ^3 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=nino] MedabotNr
execute if entity @s[scores={Dialog=1}] positioned ^ ^ ^3 as @e[tag=nino,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1..}] at @e[tag=nino,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=nino,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.nino","color":"green"},{"translate":"medabots_server:dialog.other.get_nino.1"}]}
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.nino","color":"green"},{"translate":"medabots_server:dialog.other.get_nino.2"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.nino","color":"green"},{"translate":"medabots_server:dialog.other.get_nino.3"}]}
tellraw @s[scores={Dialog=240}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.nino","color":"green"},{"translate":"medabots_server:dialog.other.get_nino.4"}]}
tellraw @s[scores={Dialog=288}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.nino","color":"green"},{"translate":"medabots_server:dialog.other.get_nino.5"}]}
tellraw @s[scores={Dialog=344}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.get_nino.6"}]}
tellraw @s[scores={Dialog=432}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.get_nino.7"}]}
tellraw @s[scores={Dialog=504}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.nino","color":"green"},{"translate":"medabots_server:dialog.other.get_nino.8"}]}
tellraw @s[scores={Dialog=544}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.nino","color":"green"},{"translate":"medabots_server:dialog.other.get_nino.9"}]}
tellraw @s[scores={Dialog=656}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.nino","color":"green"},{"translate":"medabots_server:dialog.other.get_nino.10"}]}
tellraw @s[scores={Dialog=752}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.get_nino.11"}]}
tellraw @s[scores={Dialog=832}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.nino","color":"green"},{"translate":"medabots_server:dialog.other.get_nino.12"}]}
tellraw @s[scores={Dialog=920}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.nino","color":"green"},{"translate":"medabots_server:dialog.other.get_nino.13"}]}
tellraw @s[scores={Dialog=1040}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.nino","color":"green"},{"translate":"medabots_server:dialog.other.get_nino.14"}]}
tellraw @s[scores={Dialog=1208}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.get_nino.15"}]}
tellraw @s[scores={Dialog=1264}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.get_nino.16"}]}
tellraw @s[scores={Dialog=1384}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.nino","color":"green"},{"translate":"medabots_server:dialog.other.get_nino.17"}]}
execute if entity @s[scores={Dialog=1408},tag=!already_gave_items] run function medabots_server:give_items/medaparts/nino
tag @s[scores={Dialog=1408}] add already_gave_items
tellraw @s[scores={Dialog=1428}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.nino","color":"green"},{"translate":"medabots_server:dialog.other.get_nino.18"}]}
execute if entity @s[scores={Dialog=1516..}] at @e[tag=nino,tag=this_dialog,limit=1] run particle minecraft:dust 0.5 0 1 2 ~-0.5 ~ ~-0.5 1 2 1 0 50
tag @s[scores={Dialog=1536}] remove get_nino_dialog
tag @s[scores={Dialog=1536}] remove dialog_other_get_nino
tag @s[scores={Dialog=1536}] remove already_gave_items
scoreboard players reset @s[scores={Dialog=1536}] DialogNr
scoreboard players set @s[scores={Dialog=1536}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog