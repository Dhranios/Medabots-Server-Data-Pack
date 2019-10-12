execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity red_pepper
scoreboard players set @s[scores={Dialog=1}] MusicType 46
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1}] positioned -1713 51 -493 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -1715 51 -497 {Duration:1000000,Tags:["cutscene","this_dialog","medabot","red_pepper"],Rotation:[0.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-1715,y=51,z=-497,distance=..1,tag=red_pepper] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-1715,y=51,z=-497,distance=..1,tag=red_pepper] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1715 51 -497 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","red_pepper","legs","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_sit_down"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.tank"}','{"italic":false,"color":"white","translate":"medabots_server:move.tank.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"52"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"110"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_sit_down.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:king_pharaoh_sit_down",gender:0b,move:"tank",part:"legs",armor:110,defense:52,activated:0b,model_data:{leg_count:0},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1715 51 -497 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","red_pepper","left_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_dark_hall"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_dark_hall.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:king_pharaoh_dark_hall",gender:0b,move:"press",part:"left_arm",armor:80,power:22,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1715 51 -497 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","red_pepper","right_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_black_hall"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_black_hall.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:king_pharaoh_black_hall",gender:0b,move:"press",part:"right_arm",armor:80,power:18,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1715 51 -497 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","red_pepper","head","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_grand_bomb"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}','{"italic":false,"color":"white","translate":"medabots_server:move.napalm.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"110"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_grand_bomb.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:king_pharaoh_grand_bomb",gender:0b,move:"napalm",part:"head",armor:110,power:23,uses:7,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -1715 51 -497 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=red_pepper] MedabotNr
execute if entity @s[scores={Dialog=1}] as @e[x=-1715,y=51,z=-497,tag=red_pepper,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -1717 51 -495 {Duration:1000000,Tags:["cutscene","this_dialog","medabot","dragonbeetle"],Rotation:[-180.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-1717,y=51,z=-495,distance=..1,tag=dragonbeetle] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-1717,y=51,z=-495,distance=..1,tag=dragonbeetle] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1717 51 -495 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","legs","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_flyfly"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.fly.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_flyfly.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_flyfly",gender:0b,move:"fly",part:"legs",armor:40,defense:28,activated:0b,model_data:{leg_count:0},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1717 51 -495 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","left_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_flame_gun"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_flame_gun.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hellphoenix_flame_gun",gender:0b,move:"melt",part:"left_arm",armor:45,power:22,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1717 51 -495 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","right_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_fire_gun"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_fire_gun.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hellphoenix_fire_gun",gender:0b,move:"melt",part:"right_arm",armor:45,power:18,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1717 51 -495 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","head","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_hardweighter"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"15"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"105"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_hardweighter.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_hardweighter",gender:0b,move:"press",part:"head",armor:105,power:25,uses:15,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -1717 51 -495 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=dragonbeetle] MedabotNr
execute if entity @s[scores={Dialog=1}] as @e[x=-1717,y=51,z=-495,tag=dragonbeetle,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
teleport @s[scores={Dialog=1}] -1715 51 -492 -180 0
execute if entity @s[scores={Dialog=1..}] as @e[tag=dragonbeetle,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=dragonbeetle,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=136}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper"},{"translate":"medabots_server:dialog.infinity.red_pepper.1"}]}
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper"},{"translate":"medabots_server:dialog.infinity.red_pepper.2"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.dragonbeetle"},{"translate":"medabots_server:dialog.infinity.red_pepper.3"}]}
tellraw @s[scores={Dialog=120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.red_pepper.4"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper"},{"translate":"medabots_server:dialog.infinity.red_pepper.5"}]}
tellraw @s[scores={Dialog=144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.red_pepper.6"}]}
tellraw @s[scores={Dialog=200}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper"},{"translate":"medabots_server:dialog.infinity.red_pepper.7"}]}
tellraw @s[scores={Dialog=232}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper"},{"translate":"medabots_server:dialog.infinity.red_pepper.8"}]}
tellraw @s[scores={Dialog=256}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper"},{"translate":"medabots_server:dialog.infinity.red_pepper.9"}]}
execute if entity @s[scores={Dialog=304}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1716 51 -538
execute if entity @s[scores={Dialog=304}] run tag @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=305..498}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tellraw @s[scores={Dialog=344}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.red_pepper.10"}]}
tellraw @s[scores={Dialog=392}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.red_pepper.11"}]}
tag @s[scores={Dialog=498}] remove dialog_infinity_red_pepper
scoreboard players set @s[scores={Dialog=498}] MusicType 1
scoreboard players set @s[scores={Dialog=498}] Music 0
scoreboard players reset @s[scores={Dialog=498}] DialogNr
scoreboard players set @s[scores={Dialog=498}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog