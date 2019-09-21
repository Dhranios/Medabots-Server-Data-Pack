execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity rubberobo_leaves_ruins_out_a
execute if entity @s[scores={Dialog=1}] positioned -1572 51 -283 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -1568 51 -282 {Duration:1000000,Tags:["cutscene","this_dialog","medabot","grade_kabuki"],Rotation:[90.0f,90.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-1568,y=51,z=-282,distance=..1,tag=grade_kabuki] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-1568,y=51,z=-282,distance=..1,tag=grade_kabuki] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1568 51 -282 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","grade_kabuki","legs","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.grade_kabuki_flower_road"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.wheel"}','{"italic":false,"color":"white","translate":"medabots_server:move.wheel.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"90"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.grade_kabuki"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.grade_kabuki_flower_road.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:grade_kabuki_flower_road",gender:0b,move:"wheel",part:"legs",armor:90,defense:32,activated:0b,model_data:{leg_count:0},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1568 51 -282 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","grade_kabuki","left_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:30,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dohtattack"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.guard_gravity"}','{"italic":false,"color":"white","translate":"medabots_server:move.guard_gravity.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dondoguu"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dohtattack.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dondoguu_dohtattack",gender:0b,move:"guard_gravity",part:"left_arm",armor:55,power:0,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1568 51 -282 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","grade_kabuki","right_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:21,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kanehachi_mk2_catch"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hold"}','{"italic":false,"color":"white","translate":"medabots_server:move.hold.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.kanehachi_mk2"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.kanehachi_mk2_catch.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:kanehachi_mk2_catch",gender:0b,move:"hold",part:"right_arm",armor:40,power:15,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1568 51 -282 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","grade_kabuki","head","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.grade_kabuki_free_hair"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.confuse"}','{"italic":false,"color":"white","translate":"medabots_server:move.confuse.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"75"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.grade_kabuki"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.grade_kabuki_free_hair.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:grade_kabuki_free_hair",gender:0b,move:"confuse",part:"head",armor:75,power:20,uses:6,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -1568 51 -282 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=grade_kabuki] MedabotNr
execute at @s as @e[x=-1568,y=51,z=-282,tag=grade_kabuki,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1570 51 -280 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["kid","cutscene","this_dialog"],Pose:{RightArm:[-15.0f,0.0f,0.001f],LeftArm:[-15.0f,0.0f,0.001f],RightLeg:[0.0f,0.0f,0.001f],LeftLeg:[0.0f,0.0f,0.001f]},Rotation:[-180.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3225135}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:8023136}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4551997}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-1570,y=51,z=-280,tag=kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1..570}] at @e[tag=kid,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=kid,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -30 ~
teleport @s[scores={Dialog=1}] -1570 51 -284 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.1"}]}
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.2"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.3"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.4"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.5"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.6"}]}
tellraw @s[scores={Dialog=176}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.7"}]}
tellraw @s[scores={Dialog=192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.8"}]}
tellraw @s[scores={Dialog=232}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.9"}]}
tellraw @s[scores={Dialog=400}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.10"}]}
tellraw @s[scores={Dialog=432}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.11"}]}
tellraw @s[scores={Dialog=528}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.12"}]}
tellraw @s[scores={Dialog=544}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.13"}]}
stopsound @s[scores={Dialog=568}] music
scoreboard players set @s[scores={Dialog=568}] MusicType -1
scoreboard players set @s[scores={Dialog=568}] Music 0
execute if entity @s[scores={Dialog=568}] positioned -1570 51 -255 run function medabots_server:spawn_entities/cutscene/erika
execute if entity @s[scores={Dialog=568}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -175 ~
execute if entity @s[scores={Dialog=568}] run tag @e[tag=erika,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=569..678}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=678}] as @e[tag=erika,tag=this_dialog,limit=1] run tag @s remove walking
execute if entity @s[scores={Dialog=569..2581}] as @e[tag=kid,tag=this_dialog,limit=1] at @s facing entity @e[tag=erika,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=678..2325}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=568}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.14","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=638}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.15"}]}
tellraw @s[scores={Dialog=646}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.16"}]}
tellraw @s[scores={Dialog=678}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.17"}]}
tellraw @s[scores={Dialog=710}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.18"}]}
tellraw @s[scores={Dialog=726}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.19"}]}
tellraw @s[scores={Dialog=774}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.20"}]}
tellraw @s[scores={Dialog=806}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.21"}]}
tellraw @s[scores={Dialog=822}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.22"}]}
tellraw @s[scores={Dialog=870}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.23"}]}
tellraw @s[scores={Dialog=878}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.24"}]}
tellraw @s[scores={Dialog=1006}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.25"}]}
tellraw @s[scores={Dialog=1014}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.26"}]}
tellraw @s[scores={Dialog=1046}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.27"}]}
tellraw @s[scores={Dialog=1070}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.28"}]}
tellraw @s[scores={Dialog=1102}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.29"}]}
tellraw @s[scores={Dialog=1142}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.30"}]}
tellraw @s[scores={Dialog=1238}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.31"}]}
tellraw @s[scores={Dialog=1246}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.32"}]}
tellraw @s[scores={Dialog=1374}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.33"}]}
tellraw @s[scores={Dialog=1390}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.34"}]}
tellraw @s[scores={Dialog=1462}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.35"}]}
tellraw @s[scores={Dialog=1478}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.36"}]}
tellraw @s[scores={Dialog=1502}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.37"}]}
tellraw @s[scores={Dialog=1582}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.38"}]}
tellraw @s[scores={Dialog=1590}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.39"}]}
tellraw @s[scores={Dialog=1718}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.40"}]}
tellraw @s[scores={Dialog=1742}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.41"}]}
tellraw @s[scores={Dialog=1798}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.42"}]}
tellraw @s[scores={Dialog=1830}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.43"}]}
tellraw @s[scores={Dialog=1878}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.44"}]}
tellraw @s[scores={Dialog=1910}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.45"}]}
tellraw @s[scores={Dialog=1958}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.46"}]}
tellraw @s[scores={Dialog=2030}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.47"}]}
tellraw @s[scores={Dialog=2070}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.48"}]}
tellraw @s[scores={Dialog=2078}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.49"}]}
tellraw @s[scores={Dialog=2150}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.50"}]}
tellraw @s[scores={Dialog=2182}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.51"}]}
tellraw @s[scores={Dialog=2222}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.52"}]}
execute if entity @s[scores={Dialog=2326..2509}] as @e[tag=erika,tag=this_dialog,limit=1] at @s facing entity @e[tag=kid,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2326}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.53"}]}
tellraw @s[scores={Dialog=2374}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.54"}]}
tellraw @s[scores={Dialog=2494}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.55"}]}
execute if entity @s[scores={Dialog=2510..2581}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2510}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.56","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=2534}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.57"}]}
tellraw @s[scores={Dialog=2542}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_out_a.58"}]}
execute if entity @s[scores={Dialog=2582}] at @e[tag=grade_kabuki,tag=!medabot_model,tag=this_dialog,limit=1] run particle minecraft:cloud ~ ~ ~ 1 1 1 0 30
execute if entity @s[scores={Dialog=2582}] run tag @e[tag=grade_kabuki,tag=!medabot_model,tag=this_dialog,limit=1] add dead
execute if entity @s[scores={Dialog=2582}] as @e[tag=kid,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1570 51 -252
execute if entity @s[scores={Dialog=2582}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1570 51 -252
execute if entity @s[scores={Dialog=2582}] run tag @e[tag=kid,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2582}] run tag @e[tag=erika,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2583..}] as @e[tag=kid,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2583..}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
stopsound @s[scores={Dialog=2712}] music
scoreboard players set @s[scores={Dialog=2712}] MusicType 1
scoreboard players set @s[scores={Dialog=2712}] Music 0
tag @s[scores={Dialog=2712}] remove dialog_infinity_rubberobo_leaves_ruins_out_a
scoreboard players reset @s[scores={Dialog=2712}] DialogNr
scoreboard players set @s[scores={Dialog=2712}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.erika music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 502