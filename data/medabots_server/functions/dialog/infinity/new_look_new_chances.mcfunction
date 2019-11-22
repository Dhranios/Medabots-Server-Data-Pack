execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity new_look_new_chances
scoreboard players set @s[scores={Dialog=1}] MusicType 40
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1947 51 -565 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1951 51 -566 run function medabots_server:spawn_entities/cutscene/karin
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -1949 51 -568 {Duration:1000000,Tags:["cutscene","jaxy","medabot","this_dialog"]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-1949,y=51,z=-568,distance=..1,tag=jaxy] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-1949,y=51,z=-568,distance=..1,tag=jaxy] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1949 51 -568 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","jaxy","legs","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:19,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_temple_master"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"16"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pretty_prime"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_temple_master.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pretty_prime_temple_master",gender:1b,move:"two_legged",part:"legs",armor:35,defense:16,activated:0b,model_data:{leg_count:2},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1949 51 -568 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","jaxy","left_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:19,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_shineshield"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.defense"}','{"italic":false,"color":"white","translate":"medabots_server:move.defense.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pretty_prime"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_shineshield.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pretty_prime_shineshield",gender:1b,move:"defense",part:"left_arm",armor:55,power:24,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1949 51 -568 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","jaxy","right_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:19,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_dont_move"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.freeze"}','{"italic":false,"color":"white","translate":"medabots_server:move.freeze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"25"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pretty_prime"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_dont_move.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pretty_prime_dont_move",gender:1b,move:"freeze",part:"right_arm",armor:25,power:28,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1949 51 -568 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","jaxy","head","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:19,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_reflectmirror"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.scout"}','{"italic":false,"color":"white","translate":"medabots_server:move.scout.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pretty_prime"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_reflectmirror.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pretty_prime_reflectmirror",gender:1b,move:"scout",part:"head",armor:50,power:18,uses:7,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -1949 51 -568 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=jaxy] MedabotNr
execute if entity @s[scores={Dialog=1}] as @e[x=-1949,y=51,z=-568,tag=jaxy,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1..1017}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..623}] at @e[tag=karin,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=karin,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1949 51 -564 -180 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.2","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.3"}]}
tellraw @s[scores={Dialog=112}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.4"}]}
tellraw @s[scores={Dialog=184}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.5"}]}
tellraw @s[scores={Dialog=272}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.6"}]}
tellraw @s[scores={Dialog=296}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.7","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=384}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.8"}]}
tellraw @s[scores={Dialog=408}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.9"}]}
tellraw @s[scores={Dialog=456}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.10"}]}
tellraw @s[scores={Dialog=464}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.11"}]}
tellraw @s[scores={Dialog=520}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.12"}]}
tellraw @s[scores={Dialog=560}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.13"}]}
tellraw @s[scores={Dialog=576}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.14"}]}
tellraw @s[scores={Dialog=600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.15"}]}
execute if entity @s[scores={Dialog=624..979}] as @e[tag=karin,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=624}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.16"}]}
tellraw @s[scores={Dialog=632}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.17"}]}
tellraw @s[scores={Dialog=672}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.18"}]}
tellraw @s[scores={Dialog=688}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.19"}]}
tellraw @s[scores={Dialog=720}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.20"}]}
tellraw @s[scores={Dialog=744}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.21"}]}
tellraw @s[scores={Dialog=784}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.22"}]}
tellraw @s[scores={Dialog=840}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.23"}]}
tellraw @s[scores={Dialog=896}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.24"}]}
execute if entity @s[scores={Dialog=920}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1950 51 -589
execute if entity @s[scores={Dialog=920}] run tag @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=921..1018}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1018}] run kill @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=940}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.25"}]}
tellraw @s[scores={Dialog=948}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.26"}]}
tellraw @s[scores={Dialog=964}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.27"}]}
execute if entity @s[scores={Dialog=980}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1950 51 -589
execute if entity @s[scores={Dialog=980}] run tag @e[tag=karin,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=981..1088}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1088}] run kill @e[tag=karin,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=1000}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.28"}]}
tellraw @s[scores={Dialog=1024}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.new_look_new_chances.29"}]}
scoreboard players set @s[scores={Dialog=1088}] MusicType 1
scoreboard players set @s[scores={Dialog=1088}] Music 0
tag @s[scores={Dialog=1088}] remove dialog_infinity_new_look_new_chances
scoreboard players reset @s[scores={Dialog=1088}] DialogNr
scoreboard players set @s[scores={Dialog=1088}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog