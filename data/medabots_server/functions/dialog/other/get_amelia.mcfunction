execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other get_amelia
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -1361 51 -76 {Duration:1000000,Tags:["cutscene","amelia","medabot","this_dialog"]}
execute if entity @s[scores={Dialog=1}] positioned -1361 51 -76 run scoreboard players operation @e[distance=..1,tag=amelia] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] positioned -1361 51 -76 run scoreboard players add @e[distance=..1,tag=amelia] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1361 51 -76 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","amelia","source","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}'}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1361 51 -76 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","amelia","legs","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:46,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.amelia_swiftsole"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.tank"}','{"italic":false,"color":"white","translate":"medabots_server:move.tank.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"41"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.amelia","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.amelia_swiftsole.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:amelia_swiftsole",gender:1b,move:"tank",part:"legs",armor:60,defense:41,activated:0b,model_data:{height:0,leg_offset:[{l:0,u:0,f:0},{l:0,u:0,f:0}]},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1361 51 -76 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","amelia","left_arm","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:46,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.amelia_spear"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.amelia","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.amelia_spear.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:amelia_spear",gender:1b,move:"rifle",part:"left_arm",armor:65,power:25,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1361 51 -76 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","amelia","right_arm","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:46,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.amelia_silver_axe"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.amelia","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.amelia_silver_axe.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:amelia_silver_axe",gender:1b,move:"hammer",part:"right_arm",armor:45,power:25,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1361 51 -76 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","amelia","head","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:46,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.amelia_great_shield"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.perfect_guard"}','{"italic":false,"color":"white","translate":"medabots_server:move.perfect_guard.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.amelia","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.amelia_great_shield.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:amelia_great_shield",gender:1b,move:"perfect_guard",part:"head",armor:55,power:60,uses:5,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -1361 51 -76 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=amelia] MedabotNr
execute if entity @s[scores={Dialog=1}] positioned -1361 51 -76 as @e[tag=amelia,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1..1371}] at @e[tag=amelia,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=amelia,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1361 51 -80 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.amelia","color":"green"},{"translate":"medabots_server:dialog.other.get_amelia.1"}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.amelia","color":"green"},{"translate":"medabots_server:dialog.other.get_amelia.2"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.get_amelia.3"}]}
tellraw @s[scores={Dialog=112}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.amelia","color":"green"},{"translate":"medabots_server:dialog.other.get_amelia.4"}]}
tellraw @s[scores={Dialog=192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.amelia","color":"green"},{"translate":"medabots_server:dialog.other.get_amelia.5"}]}
tellraw @s[scores={Dialog=296}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.get_amelia.6"}]}
tellraw @s[scores={Dialog=312}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.amelia","color":"green"},{"translate":"medabots_server:dialog.other.get_amelia.7"}]}
tellraw @s[scores={Dialog=432}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.amelia","color":"green"},{"translate":"medabots_server:dialog.other.get_amelia.8"}]}
tellraw @s[scores={Dialog=600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.amelia","color":"green"},{"translate":"medabots_server:dialog.other.get_amelia.9"}]}
tellraw @s[scores={Dialog=672}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.amelia","color":"green"},{"translate":"medabots_server:dialog.other.get_amelia.10"}]}
tellraw @s[scores={Dialog=784}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.amelia","color":"green"},{"translate":"medabots_server:dialog.other.get_amelia.11"}]}
tellraw @s[scores={Dialog=888}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.amelia","color":"green"},{"translate":"medabots_server:dialog.other.get_amelia.12"}]}
tellraw @s[scores={Dialog=984}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.get_amelia.13"}]}
execute if entity @s[scores={Dialog=992},tag=!already_gave_items] run function medabots_server:give_items/medaparts/amelia
tag @s[scores={Dialog=992}] add already_gave_items
tellraw @s[scores={Dialog=1012}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.amelia","color":"green"},{"translate":"medabots_server:dialog.other.get_amelia.14"}]}
tellraw @s[scores={Dialog=1108}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.amelia","color":"green"},{"translate":"medabots_server:dialog.other.get_amelia.15"}]}
tellraw @s[scores={Dialog=1196}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.get_amelia.16"}]}
tellraw @s[scores={Dialog=1276}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.amelia","color":"green"},{"translate":"medabots_server:dialog.other.get_amelia.17"}]}
tellraw @s[scores={Dialog=1316}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.amelia","color":"green"},{"translate":"medabots_server:dialog.other.get_amelia.18"}]}
execute if entity @s[scores={Dialog=1372}] as @e[tag=amelia,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1361 51 -46
execute if entity @s[scores={Dialog=1372}] run tag @e[tag=amelia,tag=!medabot_model,tag=this_dialog,limit=1] add walking
tag @s[scores={Dialog=1512}] remove dialog_other_get_amelia
tag @s[scores={Dialog=1512}] remove already_gave_items
scoreboard players reset @s[scores={Dialog=1512}] DialogNr
scoreboard players set @s[scores={Dialog=1512}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog