scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:wave_1/story_progression jaxy_speaks
stopsound @s[scores={Dialog=1}] music
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -408 55 -47 {Duration:1000000,Tags:["cutscene","metabee"],Rotation:[-125.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-408,y=55,z=-47,distance=..1,tag=metabee] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-408,y=55,z=-47,distance=..1,tag=metabee] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -408 55 -47 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_enplace"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_enplace.model"}']},medabots_server:{id:"medabots_server:saikachis_enplace",gender:0b,move:"two_legged",part:"legs",armor:50,defense:56,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -408 55 -47 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_blaster"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_blaster.model"}']},medabots_server:{id:"medabots_server:saikachis_blaster",gender:0b,move:"gatling",part:"left_arm",armor:45,power:26,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -408 55 -47 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser.model"}']},medabots_server:{id:"medabots_server:saikachis_fuser",gender:0b,move:"rifle",part:"right_arm",armor:45,power:30,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -408 55 -47 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"75"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister.model"}']},medabots_server:{id:"medabots_server:saikachis_balister",gender:0b,move:"missile",part:"head",armor:75,power:28,uses:6,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -408 55 -47 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=metabee] MedabotNr
execute at @s as @e[x=-408,y=55,z=-47,tag=metabee,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -407 55 -49 {Duration:1000000,Tags:["cutscene","jaxy"],Rotation:[0.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-407,y=55,z=-49,distance=..1,tag=jaxy] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-407,y=55,z=-49,distance=..1,tag=jaxy] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -407 55 -49 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","jaxy","legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:41,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_caterpie"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.wheel"}','{"italic":false,"color":"white","translate":"medabots_server:move.wheel.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.potato_insect"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_caterpie.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:potato_insect_caterpie",gender:1b,move:"wheel",part:"legs",armor:55,defense:28,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -407 55 -49 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","jaxy","left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:41,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_attenderskin"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.bug"}','{"italic":false,"color":"white","translate":"medabots_server:move.bug.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.potato_insect"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_attenderskin.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:potato_insect_attenderskin",gender:1b,move:"bug",part:"left_arm",armor:55,power:30,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -407 55 -49 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","jaxy","right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:41,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_ragingskin"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.bug"}','{"italic":false,"color":"white","translate":"medabots_server:move.bug.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.potato_insect"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_ragingskin.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:potato_insect_ragingskin",gender:1b,move:"bug",part:"right_arm",armor:55,power:28,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -407 55 -49 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","jaxy","head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:41,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_changedress"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.transform"}','{"italic":false,"color":"white","translate":"medabots_server:move.transform.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"90"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.potato_insect"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_changedress.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:potato_insect_changedress",gender:1b,move:"transform",part:"head",armor:90,power:25,uses:7,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -407 55 -49 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=jaxy] MedabotNr
execute at @s as @e[x=-407,y=55,z=-49,tag=jaxy,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -405 55 -48 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["karin","cutscene"],Rotation:[55.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:12074079}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14319255}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-405,y=55,z=-48,tag=karin,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
teleport @s[scores={Dialog=1}] -406 55 -46 -180 ~
teleport @s[scores={Dialog=1..}] -406 55 -46
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.2"}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.3"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.4"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.5"}]}
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.6"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.7"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.8"}]}
tellraw @s[scores={Dialog=112}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.9"}]}
tellraw @s[scores={Dialog=144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.10"}]}
tellraw @s[scores={Dialog=160}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.11"}]}
tellraw @s[scores={Dialog=192}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.12"}]}
tellraw @s[scores={Dialog=248}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.13"}]}
tellraw @s[scores={Dialog=264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.14"}]}
tellraw @s[scores={Dialog=296}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.15"}]}
tellraw @s[scores={Dialog=304}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.16"}]}
tellraw @s[scores={Dialog=376}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.17"}]}
tellraw @s[scores={Dialog=384}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.18"}]}
tellraw @s[scores={Dialog=432}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.19"}]}
tellraw @s[scores={Dialog=440}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.20"}]}
tellraw @s[scores={Dialog=480}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.21"}]}
tellraw @s[scores={Dialog=504}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.22"}]}
tellraw @s[scores={Dialog=528}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.23"}]}
tellraw @s[scores={Dialog=576}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.24"}]}
tellraw @s[scores={Dialog=592}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.25"}]}
tellraw @s[scores={Dialog=600}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.26"}]}
tellraw @s[scores={Dialog=656}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.27"}]}
tellraw @s[scores={Dialog=720}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.28"}]}
tellraw @s[scores={Dialog=808}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.29"}]}
tellraw @s[scores={Dialog=832}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.30"}]}
tellraw @s[scores={Dialog=856}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.31"}]}
tellraw @s[scores={Dialog=872}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.32"}]}
tellraw @s[scores={Dialog=912}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.33"}]}
tellraw @s[scores={Dialog=1024}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.34"}]}
tellraw @s[scores={Dialog=1040}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.35"}]}
tellraw @s[scores={Dialog=1056}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.36"}]}
tellraw @s[scores={Dialog=1080}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.37"}]}
tellraw @s[scores={Dialog=1136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.38"}]}
tellraw @s[scores={Dialog=1152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.39"}]}
tellraw @s[scores={Dialog=1192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.40"}]}
tellraw @s[scores={Dialog=1248}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.41"}]}
tellraw @s[scores={Dialog=1280}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.42"}]}
tellraw @s[scores={Dialog=1368}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.43"}]}
tellraw @s[scores={Dialog=1408}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.44"}]}
tellraw @s[scores={Dialog=1432}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.45"}]}
tellraw @s[scores={Dialog=1448}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.46"}]}
tellraw @s[scores={Dialog=1512}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.47"}]}
tellraw @s[scores={Dialog=1536}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.48"}]}
tellraw @s[scores={Dialog=1544}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.49"}]}
tellraw @s[scores={Dialog=1568}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.50"}]}
tellraw @s[scores={Dialog=1576}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.51"}]}
tellraw @s[scores={Dialog=1592}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.52"}]}
tellraw @s[scores={Dialog=1616}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.53"}]}
tellraw @s[scores={Dialog=1624}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.54"}]}
tellraw @s[scores={Dialog=1640}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.55"}]}
tellraw @s[scores={Dialog=1728}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.56"}]}
tellraw @s[scores={Dialog=1792}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.57"}]}
tellraw @s[scores={Dialog=1808}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.58"}]}
tellraw @s[scores={Dialog=1864}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.59"}]}
tellraw @s[scores={Dialog=1880}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.60"}]}
tellraw @s[scores={Dialog=1936}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.61"}]}
tellraw @s[scores={Dialog=1952}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.62"}]}
tellraw @s[scores={Dialog=1992}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.63"}]}
tellraw @s[scores={Dialog=2064}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.64"}]}
tellraw @s[scores={Dialog=2072}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.65"}]}
tellraw @s[scores={Dialog=2120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.66"}]}
tellraw @s[scores={Dialog=2208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.67"}]}
tellraw @s[scores={Dialog=2248}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.68"}]}
tellraw @s[scores={Dialog=2264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.69"}]}
tellraw @s[scores={Dialog=2304}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.70"}]}
tellraw @s[scores={Dialog=2352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.71"}]}
tellraw @s[scores={Dialog=2384}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.72","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=2472}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.73"}]}
tellraw @s[scores={Dialog=2480}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.74"}]}
tellraw @s[scores={Dialog=2544}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.75"}]}
tellraw @s[scores={Dialog=2576}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.76"}]}
stopsound @s[scores={Dialog=2608}] music
playsound medabots_server:music.entity.screws_intro music @s[scores={Dialog=2608}] ~ ~ ~ 100
scoreboard players set @s[scores={Dialog=2608}] Music 62
execute if entity @s[scores={Dialog=2608}] run summon minecraft:armor_stand -416 55 -46 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["spyke","cutscene"],Rotation:[-157.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2764847}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6176294}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3291004}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-416,y=55,z=-46,tag=spyke,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=2608}] run summon minecraft:area_effect_cloud -418 55 -45 {Duration:1000000,Tags:["cutscene","krosserdog"],Rotation:[-150.0f,0.0f]}
execute if entity @s[scores={Dialog=2608}] run scoreboard players operation @e[x=-418,y=55,z=-45,distance=..1,tag=krosserdog] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=2608}] run scoreboard players add @e[x=-418,y=55,z=-45,distance=..1,tag=krosserdog] MedabotNr 1
execute if entity @s[scores={Dialog=2608}] run summon minecraft:armor_stand -418 55 -45 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","krosserdog","legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:8,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_howzer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.bluesdog"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_howzer.model"}']},medabots_server:{id:"medabots_server:bluesdog_howzer",gender:0b,move:"two_legged",part:"legs",armor:45,defense:36,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=2608}] run summon minecraft:armor_stand -418 55 -45 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","krosserdog","left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:8,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_battle_rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.bluesdog"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_battle_rifle.model"}']},medabots_server:{id:"medabots_server:bluesdog_battle_rifle",gender:0b,move:"rifle",part:"left_arm",armor:40,power:20,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=2608}] run summon minecraft:armor_stand -418 55 -45 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","krosserdog","right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:8,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_aim_rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.bluesdog"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_aim_rifle.model"}']},medabots_server:{id:"medabots_server:bluesdog_aim_rifle",gender:0b,move:"rifle",part:"right_arm",armor:40,power:16,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=2608}] run summon minecraft:armor_stand -418 55 -45 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","krosserdog","head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:8,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_headcannon"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"18"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.bluesdog"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_headcannon.model"}']},medabots_server:{id:"medabots_server:bluesdog_headcannon",gender:0b,move:"rifle",part:"head",armor:60,power:40,uses:18,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=2608}] positioned -418 55 -45 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=krosserdog] MedabotNr
execute at @s as @e[x=-418,y=55,z=-45,tag=krosserdog,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=2609..2667}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2609}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s add walking
execute if entity @s[scores={Dialog=2609..2687}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2669}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -422 55 -68
execute if entity @s[scores={Dialog=2669..2728}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2688}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -422 55 -68
execute if entity @s[scores={Dialog=2689..2728}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2728}] run kill @e[tag=spyke,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=2728}] run kill @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=2608}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.77"}]}
tellraw @s[scores={Dialog=2628}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.78"}]}
tellraw @s[scores={Dialog=2660}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.79"}]}
stopsound @s[scores={Dialog=2756}] music
scoreboard players set @s[scores={Dialog=2756}] Music 0
tellraw @s[scores={Dialog=2756}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.80"}]}
tellraw @s[scores={Dialog=2788}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.81"}]}
tellraw @s[scores={Dialog=2836}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.82"}]}
tellraw @s[scores={Dialog=2892}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.83"}]}
tellraw @s[scores={Dialog=2916}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.84"}]}
tellraw @s[scores={Dialog=2940}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.85"}]}
tellraw @s[scores={Dialog=2972}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.86"}]}
execute if entity @s[scores={Dialog=3004}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=3005..}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3004}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=3004}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s add walking
execute if entity @s[scores={Dialog=3005..}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tellraw @s[scores={Dialog=3024}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.87"}]}
tellraw @s[scores={Dialog=3048}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_speaks.88"}]}
tag @s[scores={Dialog=3072}] remove dialog_infinity_jaxy_speaks
stopsound @s[scores={Dialog=3072}] music
scoreboard players set @s[scores={Dialog=3072}] MusicType 1
scoreboard players set @s[scores={Dialog=3072}] Music 0
scoreboard players reset @s[scores={Dialog=3072}] DialogNr
scoreboard players set @s[scores={Dialog=3072}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.karin music @s[scores={Music=0,MusicType=-1,Dialog=..2607}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=..2607}] Music 500
playsound medabots_server:music.entity.screws music @s[scores={Music=0,MusicType=-1,Dialog=2608..2755}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=2608..2755}] Music 250
playsound medabots_server:music.entity.karin music @s[scores={Music=0,MusicType=-1,Dialog=2756..}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=2756..}] Music 500