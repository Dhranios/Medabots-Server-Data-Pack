execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s[scores={Dialog=..110}] Dialog 1
scoreboard players add @s[scores={Dialog=112..}] Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity gillgirls_jammy
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -1953 51 -635 {Duration:1000000,Tags:["cutscene","magicalcard","medabot","this_dialog"],Rotation:[0.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-1953,y=51,z=-635,distance=..1,tag=magicalcard] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-1953,y=51,z=-635,distance=..1,tag=magicalcard] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1953 51 -635 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","this_dialog","magicalcard","legs","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:10,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_wandrack"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.float"}','{"italic":false,"color":"white","translate":"medabots_server:move.float.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"24"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.magicalcard"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_wandrack.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:magicalcard_wandrack",gender:0b,move:"float",part:"legs",armor:65,defense:24,activated:0b,model_data:{leg_count:0},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1953 51 -635 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","this_dialog","magicalcard","left_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:10,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_lookme"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.no_defend"}','{"italic":false,"color":"white","translate":"medabots_server:move.no_defend.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.magicalcard"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_lookme.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:magicalcard_lookme",gender:0b,move:"no_defend",part:"left_arm",armor:65,power:16,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1953 51 -635 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","this_dialog","magicalcard","right_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:10,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_onetwothree"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:move.falling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.magicalcard"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_onetwothree.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:magicalcard_onetwothree",gender:0b,move:"falling",part:"right_arm",armor:40,power:20,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1953 51 -635 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","this_dialog","magicalcard","head","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:10,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_magitech"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.confuse"}','{"italic":false,"color":"white","translate":"medabots_server:move.confuse.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.magicalcard"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_magitech.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:magicalcard_magitech",gender:0b,move:"confuse",part:"head",armor:80,power:20,uses:6,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -1953 51 -635 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=magicalcard] MedabotNr
execute if entity @s[scores={Dialog=1}] as @e[x=-1953,y=51,z=-635,tag=magicalcard,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1..}] at @e[tag=magicalcard,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=magicalcard,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] run tag @e[tag=magicalcard,tag=!medabot_model,tag=this_dialog,limit=1] add dancing
teleport @s[scores={Dialog=1}] -1949 51 -616 -180 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.magicalcard"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.magicalcard"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy.2"}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.magicalcard"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy.3"}]}
scoreboard players add @s[x=-1950,y=51,z=-640,distance=..4,scores={Dialog=111}] Dialog 1
execute if entity @s[scores={Dialog=112}] positioned -1948 51 -635 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=112..295}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=magicalcard,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=112}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.magicalcard"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy.4","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.magicalcard"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy.5"}]}
tellraw @s[scores={Dialog=200}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy.6"}]}
tellraw @s[scores={Dialog=216}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy.7"}]}
tellraw @s[scores={Dialog=248}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.magicalcard"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy.8"}]}
tellraw @s[scores={Dialog=264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.magicalcard"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy.9"}]}
execute if entity @s[scores={Dialog=296}] positioned -1950 51 -639 run function medabots_server:spawn_entities/cutscene/gillgirl
execute if entity @s[scores={Dialog=296..669}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=gillgirl,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=296..663}] at @e[tag=gillgirl,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=gillgirl,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
scoreboard players set @s[scores={Dialog=296}] MusicType 32
scoreboard players set @s[scores={Dialog=296}] Music 0
scoreboard players set @s[scores={Dialog=296}] Jukebox 0
tellraw @s[scores={Dialog=296}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy.10"}]}
tellraw @s[scores={Dialog=304}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy.11"}]}
tellraw @s[scores={Dialog=368}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy.12"}]}
tellraw @s[scores={Dialog=384}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy.13"}]}
tellraw @s[scores={Dialog=408}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy.14"}]}
tellraw @s[scores={Dialog=424}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy.15"}]}
tellraw @s[scores={Dialog=488}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy.16"}]}
tellraw @s[scores={Dialog=512}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy.17"}]}
tellraw @s[scores={Dialog=576}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy.18"}]}
tellraw @s[scores={Dialog=600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy.19"}]}
tellraw @s[scores={Dialog=632}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy.20"}]}
execute if entity @s[scores={Dialog=664}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1950 51 -640
execute if entity @s[scores={Dialog=664}] run tag @e[tag=gillgirl,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=665..669}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=669}] run kill @e[tag=gillgirl,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=669}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy.21"}]}
tellraw @s[scores={Dialog=685}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy.22"}]}
tag @s[scores={Dialog=709}] remove dialog_infinity_gillgirls_jammy
scoreboard players set @s[scores={Dialog=709}] MusicType 1
scoreboard players set @s[scores={Dialog=709}] Music 0
scoreboard players reset @s[scores={Dialog=709}] DialogNr
scoreboard players set @s[scores={Dialog=709}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog