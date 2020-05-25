execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity harus_experiment
scoreboard players set @s[scores={Dialog=1}] MusicType 43
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -425 55 -55 run function medabots_server:spawn_entities/cutscene/doctor_haru
execute if entity @s[scores={Dialog=1..607}] at @e[tag=doctor_haru,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=doctor_haru,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..607}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.harus_experiment.1","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.harus_experiment.2"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.harus_experiment.3"}]}
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.harus_experiment.4"}]}
tellraw @s[scores={Dialog=152}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.harus_experiment.5"}]}
tellraw @s[scores={Dialog=168}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.harus_experiment.6","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=216}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.harus_experiment.7"}]}
tellraw @s[scores={Dialog=256}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.harus_experiment.8"}]}
tellraw @s[scores={Dialog=304}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.harus_experiment.9"}]}
tellraw @s[scores={Dialog=328}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.harus_experiment.10"}]}
tellraw @s[scores={Dialog=352}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.harus_experiment.11"}]}
tellraw @s[scores={Dialog=368}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.harus_experiment.12"}]}
tellraw @s[scores={Dialog=376}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.harus_experiment.13"}]}
tellraw @s[scores={Dialog=392}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.harus_experiment.14"}]}
tellraw @s[scores={Dialog=472}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.harus_experiment.15"}]}
tellraw @s[scores={Dialog=576}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.harus_experiment.16"}]}
execute if entity @s[scores={Dialog=608}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s -474 55 -96 -90 0
execute if entity @s[scores={Dialog=608}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s -471 55 -97 90 0
teleport @s[scores={Dialog=608}] -471 55 -96 90 0
teleport @s[scores={Dialog=609..}] -471 55 -96
execute if entity @s[scores={Dialog=628}] run summon minecraft:area_effect_cloud -474 55 -97 {Duration:1000000,Tags:["cutscene","this_dialog","medabot","flame_tisala"],Rotation:[-90.0f,0.0f]}
execute if entity @s[scores={Dialog=628}] run scoreboard players operation @e[x=-474,y=55,z=-97,distance=..1,tag=flame_tisala] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=628}] run scoreboard players add @e[x=-474,y=55,z=-97,distance=..1,tag=flame_tisala] MedabotNr 1
execute if entity @s[scores={Dialog=628}] run summon minecraft:armor_stand -474 55 -97 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","flame_tisala","source","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}'}
execute if entity @s[scores={Dialog=628}] run summon minecraft:armor_stand -474 55 -97 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","flame_tisala","legs","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:38,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.flame_tisala_sala_tail"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.float"}','{"italic":false,"color":"white","translate":"medabots_server:move.float.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"27"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.flame_tisala","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.flame_tisala_sala_tail.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:flame_tisala_sala_tail",gender:1b,move:"float",part:"legs",armor:65,defense:27,activated:0b,model_data:{height:0,leg_offset:[]},version:1}}}]}
execute if entity @s[scores={Dialog=628}] run summon minecraft:armor_stand -474 55 -97 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","flame_tisala","left_arm","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:38,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.flame_tisala_sala_arm"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.transform"}','{"italic":false,"color":"white","translate":"medabots_server:move.transform.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.flame_tisala","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.flame_tisala_sala_arm.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:flame_tisala_sala_arm",gender:1b,move:"transform",part:"left_arm",armor:60,power:33,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=628}] run summon minecraft:armor_stand -474 55 -97 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","flame_tisala","right_arm","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:38,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.flame_tisala_sala_hand"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.transform"}','{"italic":false,"color":"white","translate":"medabots_server:move.transform.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.flame_tisala","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.flame_tisala_sala_hand.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:flame_tisala_sala_hand",gender:1b,move:"transform",part:"right_arm",armor:60,power:33,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=628}] run summon minecraft:armor_stand -474 55 -97 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","flame_tisala","head","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:38,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.flame_tisala_sala_head"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.transform"}','{"italic":false,"color":"white","translate":"medabots_server:move.transform.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"95"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.flame_tisala","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.flame_tisala_sala_head.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:flame_tisala_sala_head",gender:1b,move:"transform",part:"head",armor:95,power:33,uses:6,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=628}] positioned -474 55 -97 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=flame_tisala] MedabotNr
execute if entity @s[scores={Dialog=628}] as @e[x=-474,y=55,z=-97,tag=flame_tisala,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=628}] run function medabots_server:give_items/medaparts/flame_tisala
advancement grant @s[scores={Dialog=628}] only medabots_server:special_items/passes/experiment
tag @s[scores={Dialog=628}] add already_gave_items
tellraw @s[scores={Dialog=648}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.harus_experiment.17"}]}
tellraw @s[scores={Dialog=736}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.harus_experiment.18"}]}
tellraw @s[scores={Dialog=808}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.harus_experiment.19"}]}
tellraw @s[scores={Dialog=824}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.harus_experiment.20"}]}
tellraw @s[scores={Dialog=848}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.harus_experiment.21"}]}
execute if entity @s[scores={Dialog=856}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=856}] run tag @e[tag=doctor_haru,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=856}] as @e[tag=flame_tisala,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=856}] run tag @e[tag=flame_tisala,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=856}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=856}] run tag @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=863}] run setblock -477 53 -96 minecraft:redstone_block
execute if entity @s[scores={Dialog=897}] run setblock -477 53 -96 minecraft:air
tag @s[scores={Dialog=897}] remove already_gave_items
scoreboard players set @s[scores={Dialog=897}] MusicType 1
scoreboard players set @s[scores={Dialog=897}] Music 0
tag @s[scores={Dialog=897}] remove dialog_infinity_harus_experiment
scoreboard players reset @s[scores={Dialog=897}] DialogNr
scoreboard players set @s[scores={Dialog=897}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog