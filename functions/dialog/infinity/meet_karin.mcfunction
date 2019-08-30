scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity meet_karin
stopsound @s[scores={Dialog=1}] music
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -1540 51 -149 {Duration:1000000,Tags:["cutscene","metabee"],Rotation:[-90.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-1540,y=51,z=-149,distance=..1,tag=metabee] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-1540,y=51,z=-149,distance=..1,tag=metabee] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1540 51 -149 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_enplace"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_enplace.model"}']},medabots_server:{id:"medabots_server:saikachis_enplace",gender:0b,move:"two_legged",part:"legs",armor:50,defense:56,activated:0b,model_data:{leg_count:2},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1540 51 -149 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_blaster"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_blaster.model"}']},medabots_server:{id:"medabots_server:saikachis_blaster",gender:0b,move:"gatling",part:"left_arm",armor:45,power:26,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1540 51 -149 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser.model"}']},medabots_server:{id:"medabots_server:saikachis_fuser",gender:0b,move:"rifle",part:"right_arm",armor:45,power:30,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1540 51 -149 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"75"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister.model"}']},medabots_server:{id:"medabots_server:saikachis_balister",gender:0b,move:"missile",part:"head",armor:75,power:28,uses:6,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -1540 51 -149 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=metabee] MedabotNr
execute at @s as @e[x=-1540,y=51,z=-149,tag=metabee,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -1537 51 -149 {Duration:1000000,Tags:["cutscene","neutranurse"],Rotation:[90.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-1537,y=51,z=-149,distance=..1,tag=neutranurse] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-1537,y=51,z=-149,distance=..1,tag=neutranurse] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1537 51 -149 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","neutranurse","legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:40,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_petticoat"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saintnurse"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_petticoat.model"}']},medabots_server:{id:"medabots_server:saintnurse_petticoat",gender:1b,move:"two_legged",part:"legs",armor:40,defense:40,activated:0b,model_data:{leg_count:2},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1537 51 -149 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","neutranurse","left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:40,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_translate"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.heal"}','{"italic":false,"color":"white","translate":"medabots_server:move.heal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saintnurse"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_translate.model"}']},medabots_server:{id:"medabots_server:saintnurse_translate",gender:1b,move:"heal",part:"left_arm",armor:40,power:20,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1537 51 -149 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","neutranurse","right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:40,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_donor"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.heal"}','{"italic":false,"color":"white","translate":"medabots_server:move.heal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saintnurse"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_donor.model"}']},medabots_server:{id:"medabots_server:saintnurse_donor",gender:1b,move:"heal",part:"right_arm",armor:40,power:10,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1537 51 -149 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","neutranurse","head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:40,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_holy_helm"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.perfect_guard"}','{"italic":false,"color":"white","translate":"medabots_server:move.perfect_guard.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saintnurse"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_holy_helm.model"}']},medabots_server:{id:"medabots_server:saintnurse_holy_helm",gender:1b,move:"perfect_guard",part:"head",armor:60,power:76,uses:5,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -1537 51 -149 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=neutranurse] MedabotNr
execute at @s as @e[x=-1537,y=51,z=-149,tag=neutranurse,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1537 51 -151 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["karin","cutscene"],Rotation:[90.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:12074079}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14319255}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-1537,y=51,z=-151,tag=karin,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
teleport @s[scores={Dialog=1}] -1540 51 -151 -90 0
execute if entity @s[scores={Dialog=1..953}] at @e[tag=karin,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=karin,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_karin.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_karin.2"}]}
tellraw @s[scores={Dialog=46}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.neutranurse"},{"translate":"medabots_server:dialog.infinity.meet_karin.3"}]}
tellraw @s[scores={Dialog=62}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_karin.4"}]}
tellraw @s[scores={Dialog=94}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.neutranurse"},{"translate":"medabots_server:dialog.infinity.meet_karin.5"}]}
tellraw @s[scores={Dialog=126}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_karin.6"}]}
tellraw @s[scores={Dialog=222}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_karin.7"}]}
tellraw @s[scores={Dialog=246}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_karin.8"}]}
tellraw @s[scores={Dialog=294}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_karin.9"}]}
tellraw @s[scores={Dialog=334}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_karin.10"}]}
tellraw @s[scores={Dialog=406}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_karin.11"}]}
tellraw @s[scores={Dialog=430}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_karin.12"}]}
tellraw @s[scores={Dialog=494}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_karin.13"}]}
tellraw @s[scores={Dialog=630}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_karin.14"}]}
tellraw @s[scores={Dialog=694}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.neutranurse"},{"translate":"medabots_server:dialog.infinity.meet_karin.15"}]}
tellraw @s[scores={Dialog=776}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_karin.16"}]}
tellraw @s[scores={Dialog=858}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_karin.17"}]}
tellraw @s[scores={Dialog=874}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.neutranurse"},{"translate":"medabots_server:dialog.infinity.meet_karin.18"}]}
tellraw @s[scores={Dialog=906}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_karin.19"}]}
execute if entity @s[scores={Dialog=954}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1539 51 -117
execute if entity @s[scores={Dialog=955..1105}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=954}] as @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1539 51 -117
execute if entity @s[scores={Dialog=954}] as @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] at @s run tag @s add walking
execute if entity @s[scores={Dialog=955..990}] as @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=990}] as @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] at @s run tag @s remove walking
execute if entity @s[scores={Dialog=990..1100}] at @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=neutranurse,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=990}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.neutranurse"},{"translate":"medabots_server:dialog.infinity.meet_karin.20"}]}
execute if entity @s[scores={Dialog=1101}] as @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1539 51 -117
execute if entity @s[scores={Dialog=1101}] as @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] at @s run tag @s add walking
execute if entity @s[scores={Dialog=1102..1217}] as @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1106}] as @e[tag=karin,tag=this_dialog,limit=1] run kill @s
tag @s[scores={Dialog=1217}] remove dialog_infinity_meet_karin
stopsound @s[scores={Dialog=1217}] music
scoreboard players set @s[scores={Dialog=1217}] MusicType 1
scoreboard players set @s[scores={Dialog=1217}] Music 0
scoreboard players reset @s[scores={Dialog=1217}] DialogNr
scoreboard players set @s[scores={Dialog=1217}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.karin music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 500