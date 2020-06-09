execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity red_pepper_defeated
scoreboard players set @s[scores={Dialog=1}] MusicType 46
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1717 51 -491 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -1715 51 -487 {Duration:1000000,Tags:["cutscene","this_dialog","medabot","red_pepper"],Rotation:[0.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-1715,y=51,z=-487,distance=..1,tag=red_pepper] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-1715,y=51,z=-487,distance=..1,tag=red_pepper] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1715 51 -487 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","red_pepper","source","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}'}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1715 51 -487 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","red_pepper","legs","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_sit_down"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.tank"}','{"italic":false,"color":"white","translate":"medabots_server:move.tank.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"52"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"110"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_sit_down.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:king_pharaoh_sit_down",gender:0b,move:"tank",part:"legs",armor:110,defense:52,activated:0b,model_data:{height:0,legs:[]},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1715 51 -487 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","red_pepper","left_arm","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_dark_hall"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_dark_hall.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:king_pharaoh_dark_hall",gender:0b,move:"press",part:"left_arm",armor:80,charge:60,power:22,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1715 51 -487 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","red_pepper","right_arm","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_black_hall"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_black_hall.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:king_pharaoh_black_hall",gender:0b,move:"press",part:"right_arm",armor:80,charge:60,power:18,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1715 51 -487 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","red_pepper","head","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_grand_bomb"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}','{"italic":false,"color":"white","translate":"medabots_server:move.napalm.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"110"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_grand_bomb.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:king_pharaoh_grand_bomb",gender:0b,move:"napalm",part:"head",armor:110,charge:60,power:23,uses:7,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -1715 51 -487 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=red_pepper] MedabotNr
execute if entity @s[scores={Dialog=1}] as @e[x=-1715,y=51,z=-487,tag=red_pepper,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
teleport @s[scores={Dialog=1}] -1715 51 -492 0 0
execute if entity @s[scores={Dialog=1}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..279}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=280..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper","color":"green"},{"translate":"medabots_server:dialog.infinity.red_pepper_defeated.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper","color":"green"},{"translate":"medabots_server:dialog.infinity.red_pepper_defeated.2"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper","color":"green"},{"translate":"medabots_server:dialog.infinity.red_pepper_defeated.3"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.red_pepper_defeated.4"}]}
tellraw @s[scores={Dialog=128}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper","color":"green"},{"translate":"medabots_server:dialog.infinity.red_pepper_defeated.5"}]}
tellraw @s[scores={Dialog=144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper","color":"green"},{"translate":"medabots_server:dialog.infinity.red_pepper_defeated.6"}]}
tellraw @s[scores={Dialog=208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper","color":"green"},{"translate":"medabots_server:dialog.infinity.red_pepper_defeated.7"}]}
execute if entity @s[scores={Dialog=240}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1715 51 -446
execute if entity @s[scores={Dialog=240}] run tag @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] add walking
tellraw @s[scores={Dialog=280}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.red_pepper_defeated.8"}]}
tellraw @s[scores={Dialog=296}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper","color":"green"},{"translate":"medabots_server:dialog.infinity.red_pepper_defeated.9"}]}
tellraw @s[scores={Dialog=352}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.red_pepper_defeated.10"}]}
tag @s[scores={Dialog=433}] remove dialog_infinity_red_pepper_defeated
scoreboard players set @s[scores={Dialog=433}] MusicType 1
scoreboard players set @s[scores={Dialog=433}] Music 0
scoreboard players reset @s[scores={Dialog=433}] DialogNr
scoreboard players set @s[scores={Dialog=433}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog