scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:wave_1/story_progression meet_max
stopsound @s[scores={Dialog=1}] music
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -1541 51 -149 {Duration:1000000,Tags:["cutscene","metabee"],Rotation:[-55.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-1541,y=51,z=-149,distance=..1,tag=metabee] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-1541,y=51,z=-149,distance=..1,tag=metabee] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1541 51 -149 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_enplace"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_enplace.model"}']},medabots_server:{id:"medabots_server:saikachis_enplace",gender:0b,move:"two_legged",part:"legs",armor:50,defense:56,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1541 51 -149 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_blaster"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_blaster.model"}']},medabots_server:{id:"medabots_server:saikachis_blaster",gender:0b,move:"gatling",part:"left_arm",armor:45,power:26,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1541 51 -149 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser.model"}']},medabots_server:{id:"medabots_server:saikachis_fuser",gender:0b,move:"rifle",part:"right_arm",armor:45,power:30,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1541 51 -149 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"75"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister.model"}']},medabots_server:{id:"medabots_server:saikachis_balister",gender:0b,move:"missile",part:"head",armor:75,power:28,uses:6,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -1541 51 -149 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=metabee] MedabotNr
execute at @s as @e[x=-1541,y=51,z=-149,tag=metabee,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -1536 51 -147 {Duration:1000000,Tags:["cutscene","max"],Rotation:[125.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-1536,y=51,z=-147,distance=..1,tag=max] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-1536,y=51,z=-147,distance=..1,tag=max] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1536 51 -147 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","max","legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_carrybag"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.wheel"}','{"italic":false,"color":"white","translate":"medabots_server:move.wheel.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_carrybag.model"}']},medabots_server:{id:"medabots_server:aimflash_carrybag",gender:0b,move:"wheel",part:"legs",armor:50,defense:28,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1536 51 -147 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","max","left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_tripod"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_tripod.model"}']},medabots_server:{id:"medabots_server:aimflash_tripod",gender:0b,move:"gatling",part:"left_arm",armor:45,power:20,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1536 51 -147 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","max","right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_zoom"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"20"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_zoom.model"}']},medabots_server:{id:"medabots_server:aimflash_zoom",gender:0b,move:"laser",part:"right_arm",armor:20,power:27,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1536 51 -147 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","max","head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_strobe"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:move.falling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"8"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_strobe.model"}']},medabots_server:{id:"medabots_server:aimflash_strobe",gender:0b,move:"falling",part:"head",armor:65,power:20,uses:8,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -1536 51 -147 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=max] MedabotNr
execute at @s as @e[x=-1536,y=51,z=-147,tag=max,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
teleport @s[scores={Dialog=1}] -1539 51 -151 -55 0
playsound medabots_server:entity.max.photo neutral @s[scores={Dialog=1}] ~ ~ ~ 1000
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.meet_max.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_max.2"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.meet_max.3"}]}
tellraw @s[scores={Dialog=104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.meet_max.4"}]}
tellraw @s[scores={Dialog=144}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_max.5"}]}
tellraw @s[scores={Dialog=168}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.meet_max.6"}]}
tellraw @s[scores={Dialog=176}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.meet_max.7"}]}
tellraw @s[scores={Dialog=224}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.meet_max.8"}]}
tellraw @s[scores={Dialog=248}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.meet_max.9"}]}
tellraw @s[scores={Dialog=336}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.meet_max.10"}]}
execute if entity @s[scores={Dialog=352}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1539 51 -117
execute if entity @s[scores={Dialog=352}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run tag @s add walking
execute if entity @s[scores={Dialog=352..482}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=483}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] run kill @s
stopsound @s[scores={Dialog=452}] music
scoreboard players set @s[scores={Dialog=452}] MusicType 1
scoreboard players set @s[scores={Dialog=452}] Music 0
execute if entity @s[scores={Dialog=452..564}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=452}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_max.11"}]}
tellraw @s[scores={Dialog=484}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_max.12"}]}
tag @s[scores={Dialog=564}] remove dialog_infinity_meet_max
scoreboard players reset @s[scores={Dialog=564}] DialogNr
scoreboard players set @s[scores={Dialog=564}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.max music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 100
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 578