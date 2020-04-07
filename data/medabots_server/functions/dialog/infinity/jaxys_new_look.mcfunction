execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity jaxys_new_look
scoreboard players set @s[scores={Dialog=1}] MusicType 37
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -353 55 -89 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -355 55 -73 run function medabots_server:spawn_entities/cutscene/brass
execute if entity @s[scores={Dialog=1}] positioned -352 55 -71 run function medabots_server:spawn_entities/cutscene/jaxy
execute if entity @s[scores={Dialog=1}] positioned -353 55 -70 run function medabots_server:spawn_entities/cutscene/karin
execute if entity @s[scores={Dialog=1}] positioned -356 55 -72 run function medabots_server:spawn_entities/cutscene/erika
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -55 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 125 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 125 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -55 ~
teleport @s[scores={Dialog=1}] -355 55 -89 0 0
teleport @s[scores={Dialog=2..1019}] -355 55 -89
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.1"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.2"}]}
tellraw @s[scores={Dialog=104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.3"}]}
tellraw @s[scores={Dialog=120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.4"}]}
tellraw @s[scores={Dialog=232}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.5"}]}
tellraw @s[scores={Dialog=320}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.6"}]}
tellraw @s[scores={Dialog=352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.7"}]}
tellraw @s[scores={Dialog=360}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.8"}]}
tellraw @s[scores={Dialog=432}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.9"}]}
tellraw @s[scores={Dialog=480}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.10"}]}
tellraw @s[scores={Dialog=488}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.11"}]}
tellraw @s[scores={Dialog=512}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.12"}]}
tellraw @s[scores={Dialog=536}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.13"}]}
tellraw @s[scores={Dialog=584}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.14"}]}
tellraw @s[scores={Dialog=616}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.15"}]}
tellraw @s[scores={Dialog=656}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.16"}]}
execute if entity @s[scores={Dialog=664}] at @e[tag=jaxy,tag=!medabot_model] run kill @e[distance=..1,tag=medabot_model]
execute if entity @s[scores={Dialog=664}] at @e[tag=jaxy,tag=!medabot_model] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","jaxy","legs","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:19,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_temple_master"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"16"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pretty_prime","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_temple_master.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pretty_prime_temple_master",gender:1b,move:"two_legged",part:"legs",armor:35,defense:16,activated:0b,model_data:{height:0,leg_offset:[{l:0,u:0,f:0},{l:0,u:0,f:0}]},version:1}}}]}
execute if entity @s[scores={Dialog=664}] at @e[tag=jaxy,tag=!medabot_model] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","jaxy","left_arm","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:19,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_shineshield"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.defense"}','{"italic":false,"color":"white","translate":"medabots_server:move.defense.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pretty_prime","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_shineshield.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pretty_prime_shineshield",gender:1b,move:"defense",part:"left_arm",armor:55,power:24,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=664}] at @e[tag=jaxy,tag=!medabot_model] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","jaxy","right_arm","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:19,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_dont_move"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.freeze"}','{"italic":false,"color":"white","translate":"medabots_server:move.freeze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"25"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pretty_prime","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_dont_move.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pretty_prime_dont_move",gender:1b,move:"freeze",part:"right_arm",armor:25,power:28,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=664}] at @e[tag=jaxy,tag=!medabot_model] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","jaxy","head","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:19,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_reflectmirror"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.scout"}','{"italic":false,"color":"white","translate":"medabots_server:move.scout.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pretty_prime","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_reflectmirror.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pretty_prime_reflectmirror",gender:1b,move:"scout",part:"head",armor:50,power:18,uses:7,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=664}] at @e[tag=jaxy,tag=!medabot_model] as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=jaxy] MedabotNr
execute if entity @s[scores={Dialog=664}] at @e[tag=jaxy,tag=!medabot_model] as @e[tag=jaxy,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
scoreboard players set @s[scores={Dialog=664}] MusicType 40
scoreboard players set @s[scores={Dialog=664}] Music 0
tellraw @s[scores={Dialog=684}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.17"}]}
tellraw @s[scores={Dialog=724}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.18"}]}
tellraw @s[scores={Dialog=732}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.19"}]}
tellraw @s[scores={Dialog=796}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.20"}]}
tellraw @s[scores={Dialog=820}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.21"}]}
execute if entity @s[scores={Dialog=836}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -367 55 -71
execute if entity @s[scores={Dialog=836}] run tag @e[tag=erika,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=896}] run kill @e[tag=erika,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=836}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -367 55 -71
execute if entity @s[scores={Dialog=836}] run tag @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=896}] run kill @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=876}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.22"}]}
tellraw @s[scores={Dialog=908}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.23"}]}
tellraw @s[scores={Dialog=964}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.24"}]}
tellraw @s[scores={Dialog=1012}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.25"}]}
execute if entity @s[scores={Dialog=1020}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=1020}] run tag @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1090}] run tag @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
teleport @s[scores={Dialog=1020..1094}] ~ ~ ~0.2125
teleport @s[scores={Dialog=1095..}] -355 55 -73
tellraw @s[scores={Dialog=1096}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.26"}]}
tellraw @s[scores={Dialog=1104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.27"}]}
tellraw @s[scores={Dialog=1144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.28"}]}
tellraw @s[scores={Dialog=1152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.29"}]}
tellraw @s[scores={Dialog=1176}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.30"}]}
tellraw @s[scores={Dialog=1216}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.31"}]}
tellraw @s[scores={Dialog=1240}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.32"}]}
tellraw @s[scores={Dialog=1280}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.33"}]}
tellraw @s[scores={Dialog=1304}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.34"}]}
tellraw @s[scores={Dialog=1328}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.35"}]}
tellraw @s[scores={Dialog=1352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.36"}]}
tellraw @s[scores={Dialog=1368}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.37"}]}
tellraw @s[scores={Dialog=1432}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.38"}]}
tellraw @s[scores={Dialog=1496}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.39"}]}
tellraw @s[scores={Dialog=1512}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.40"}]}
tellraw @s[scores={Dialog=1608}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.41"}]}
tellraw @s[scores={Dialog=1656}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.42"}]}
tellraw @s[scores={Dialog=1680}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.43"}]}
tellraw @s[scores={Dialog=1704}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.44"}]}
tellraw @s[scores={Dialog=1752}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.45"}]}
tellraw @s[scores={Dialog=1784}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.46"}]}
execute if entity @s[scores={Dialog=1824}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -352 55 -85
execute if entity @s[scores={Dialog=1824}] run tag @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1895}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -342 55 -93
execute if entity @s[scores={Dialog=1944}] run kill @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=1824}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -355 55 -76
execute if entity @s[scores={Dialog=1824}] run tag @e[tag=karin,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1855}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -342 55 -93
execute if entity @s[scores={Dialog=1944}] run kill @e[tag=karin,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=1844}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.47"}]}
tellraw @s[scores={Dialog=1884}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxys_new_look.48"}]}
scoreboard players set @s[scores={Dialog=1940}] MusicType 1
scoreboard players set @s[scores={Dialog=1940}] Music 0
tag @s[scores={Dialog=1940}] remove dialog_infinity_jaxys_new_look
scoreboard players reset @s[scores={Dialog=1940}] DialogNr
scoreboard players set @s[scores={Dialog=1940}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog