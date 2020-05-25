execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other salesman_ghost_medal_arrest
scoreboard players set @s[scores={Dialog=1}] MusicType 33
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1538 51 -363 run function medabots_server:spawn_entities/cutscene/select_corps
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -1540 51 -363 {Duration:1000000,Tags:["cutscene","this_dialog","medabot","fly_falcon"],Rotation:[90.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-1540,y=51,z=-363,distance=..1,tag=fly_falcon] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-1540,y=51,z=-363,distance=..1,tag=fly_falcon] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1540 51 -363 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","fly_falcon","source","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}'}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1540 51 -363 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","fly_falcon","legs","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:13,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_flyphone"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.fly.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"20"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.fly_falcon"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_flyphone.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:fly_falcon_flyphone",gender:0b,move:"fly",part:"legs",armor:40,defense:20,activated:0b,model_data:{height:0,leg_offset:[]},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1540 51 -363 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","fly_falcon","left_arm","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:69,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_ninja_sword"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sword"}','{"italic":false,"color":"white","translate":"medabots_server:move.sword.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.nin_ninja"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_ninja_sword.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:nin_ninja_ninja_sword",gender:0b,move:"sword",part:"left_arm",armor:40,power:28,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1540 51 -363 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","fly_falcon","right_arm","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:20,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.basstroyer_environment"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.destroy"}','{"italic":false,"color":"white","translate":"medabots_server:move.destroy.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.basstroyer"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.basstroyer_environment.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:basstroyer_environment",gender:0b,move:"destroy",part:"right_arm",armor:35,power:46,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1540 51 -363 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","fly_falcon","head","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:13,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_burn_head"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}','{"italic":false,"color":"white","translate":"medabots_server:move.napalm.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.fly_falcon"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_burn_head.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:fly_falcon_burn_head",gender:0b,move:"napalm",part:"head",armor:80,power:25,uses:7,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -1540 51 -363 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=fly_falcon] MedabotNr
execute if entity @s[scores={Dialog=1}] as @e[x=-1540,y=51,z=-363,tag=fly_falcon,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] as @e[tag=select_corps,tag=this_dialog,limit=1] at @s facing entity @e[tag=fly_falcon,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..719}] at @e[tag=fly_falcon,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=fly_falcon,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1540 51 -367 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_ghost_medal_arrest.1"}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps","color":"green"},{"translate":"medabots_server:dialog.other.salesman_ghost_medal_arrest.2"}]}
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.fly_falcon","color":"green"},{"translate":"medabots_server:dialog.other.salesman_ghost_medal_arrest.3"}]}
tellraw @s[scores={Dialog=144}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_ghost_medal_arrest.4"}]}
tellraw @s[scores={Dialog=264}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_ghost_medal_arrest.5"}]}
tellraw @s[scores={Dialog=280}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.fly_falcon","color":"green"},{"translate":"medabots_server:dialog.other.salesman_ghost_medal_arrest.6"}]}
tellraw @s[scores={Dialog=296}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.fly_falcon","color":"green"},{"translate":"medabots_server:dialog.other.salesman_ghost_medal_arrest.7"}]}
tellraw @s[scores={Dialog=368}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_ghost_medal_arrest.8"}]}
tellraw @s[scores={Dialog=448}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.fly_falcon","color":"green"},{"translate":"medabots_server:dialog.other.salesman_ghost_medal_arrest.9"}]}
tellraw @s[scores={Dialog=488}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_ghost_medal_arrest.10"}]}
execute if entity @s[scores={Dialog=504..719}] at @e[tag=select_corps,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=select_corps,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=504}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps","color":"green"},{"translate":"medabots_server:dialog.other.salesman_ghost_medal_arrest.11"}]}
tellraw @s[scores={Dialog=552}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_ghost_medal_arrest.12"}]}
tellraw @s[scores={Dialog=584}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps","color":"green"},{"translate":"medabots_server:dialog.other.salesman_ghost_medal_arrest.13"}]}
tellraw @s[scores={Dialog=648}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps","color":"green"},{"translate":"medabots_server:dialog.other.salesman_ghost_medal_arrest.14"}]}
execute if entity @s[scores={Dialog=720}] as @e[tag=fly_falcon,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1540 51 -319
execute if entity @s[scores={Dialog=720}] run tag @e[tag=fly_falcon,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=720}] as @e[tag=select_corps,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1540 51 -319
execute if entity @s[scores={Dialog=720}] run tag @e[tag=select_corps,tag=this_dialog,limit=1] add walking
tellraw @s[scores={Dialog=780}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_ghost_medal_arrest.15"}]}
tag @s[scores={Dialog=926}] remove dialog_other_salesman_ghost_medal_arrest
tag @s[scores={Dialog=926}] add go_talk_to_salesman
advancement grant @s[scores={Dialog=926}] only medabots_server:main/salesman_quest/ghost_medal_report arrest_the_burgler
scoreboard players set @s[scores={Dialog=926}] MusicType 1
scoreboard players set @s[scores={Dialog=926}] Music 0
scoreboard players reset @s[scores={Dialog=926}] DialogNr
scoreboard players set @s[scores={Dialog=926}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog