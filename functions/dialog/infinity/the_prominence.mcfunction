execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity the_prominence
stopsound @s[scores={Dialog=1}] music
playsound medabots_server:music.entity.screws_intro music @s[scores={Dialog=1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 62
execute if entity @s[scores={Dialog=1}] positioned -451 55 7 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -439 55 -7 run function medabots_server:spawn_entities/cutscene/jaxy
execute if entity @s[scores={Dialog=1}] positioned -438 55 -1 run function medabots_server:spawn_entities/cutscene/krosserdog
execute if entity @s[scores={Dialog=1}] positioned -436 55 1 run function medabots_server:spawn_entities/cutscene/spyke
teleport @s[scores={Dialog=1}] -452 55 6 -135 0
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -135 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -135 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 170 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 160 ~
teleport @s[scores={Dialog=1..}] -452 55 6
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.1"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.2"}]}
tellraw @s[scores={Dialog=144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.3"}]}
execute if entity @s[scores={Dialog=160}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=160}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=160}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.4"}]}
tellraw @s[scores={Dialog=224}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.5"}]}
tellraw @s[scores={Dialog=288}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.6"}]}
tellraw @s[scores={Dialog=360}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.7"}]}
tellraw @s[scores={Dialog=416}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.8"}]}
tellraw @s[scores={Dialog=424}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.9"}]}
tellraw @s[scores={Dialog=496}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.10"}]}
tellraw @s[scores={Dialog=512}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.11"}]}
tellraw @s[scores={Dialog=536}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.12"}]}
execute if entity @s[scores={Dialog=544}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 0
execute if entity @s[scores={Dialog=544}] run tag @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=544}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 0
execute if entity @s[scores={Dialog=544}] run tag @e[tag=spyke,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=545..558}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=545..567}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=559}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=559}] run tag @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=568}] run tag @e[tag=spyke,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=568}] as @e[tag=spyke,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=568}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=544}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 135 0
tellraw @s[scores={Dialog=544}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_prominence.13","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=576}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_prominence.14"}]}
tellraw @s[scores={Dialog=600}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_prominence.15"}]}
tellraw @s[scores={Dialog=704}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_prominence.16"}]}
tellraw @s[scores={Dialog=736}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_prominence.17"}]}
tellraw @s[scores={Dialog=776}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_prominence.18","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=832}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_prominence.19"}]}
tellraw @s[scores={Dialog=888}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_prominence.20"}]}
tellraw @s[scores={Dialog=928}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_prominence.21"}]}
tellraw @s[scores={Dialog=976}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_prominence.22"}]}
tellraw @s[scores={Dialog=1072}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_prominence.23"}]}
tellraw @s[scores={Dialog=1088}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_prominence.24"}]}
tellraw @s[scores={Dialog=1160}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_prominence.25"}]}
tellraw @s[scores={Dialog=1200}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_prominence.26"}]}
tellraw @s[scores={Dialog=1264}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_prominence.27"}]}
execute if entity @s[scores={Dialog=1296}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -135 0
tellraw @s[scores={Dialog=1296}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.28"}]}
tellraw @s[scores={Dialog=1320}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.29"}]}
tellraw @s[scores={Dialog=1368}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.30"}]}
tellraw @s[scores={Dialog=1400}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.31"}]}
tellraw @s[scores={Dialog=1416}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.32"}]}
tellraw @s[scores={Dialog=1448}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.33"}]}
tellraw @s[scores={Dialog=1472}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.34"}]}
tellraw @s[scores={Dialog=1488}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.35"}]}
tellraw @s[scores={Dialog=1512}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.36"}]}
tellraw @s[scores={Dialog=1544}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.37"}]}
tellraw @s[scores={Dialog=1568}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.38"}]}
tellraw @s[scores={Dialog=1640}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.39"}]}
tellraw @s[scores={Dialog=1656}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.40"}]}
tellraw @s[scores={Dialog=1728}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.41"}]}
tellraw @s[scores={Dialog=1736}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.42"}]}
tellraw @s[scores={Dialog=1760}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.43"}]}
tellraw @s[scores={Dialog=1800}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.44"}]}
tellraw @s[scores={Dialog=1864}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.45"}]}
execute if entity @s[scores={Dialog=1888}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1888}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1888}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.46"}]}
tellraw @s[scores={Dialog=1920}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.47"}]}
tellraw @s[scores={Dialog=1952}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.48"}]}
tellraw @s[scores={Dialog=1992}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.49"}]}
tellraw @s[scores={Dialog=2088}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.50"}]}
tellraw @s[scores={Dialog=2112}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.51"}]}
tellraw @s[scores={Dialog=2152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.52"}]}
tellraw @s[scores={Dialog=2264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.53"}]}
tellraw @s[scores={Dialog=2312}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.54"}]}
tellraw @s[scores={Dialog=2328}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.55"}]}
tellraw @s[scores={Dialog=2352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.56"}]}
tellraw @s[scores={Dialog=2392}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.57"}]}
tellraw @s[scores={Dialog=2472}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.58"}]}
tellraw @s[scores={Dialog=2512}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.59"}]}
execute if entity @s[scores={Dialog=2544}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2544}] as @e[tag=spyke,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2544}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.60"}]}
tellraw @s[scores={Dialog=2560}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.61"}]}
tellraw @s[scores={Dialog=2576}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_prominence.62"}]}
tellraw @s[scores={Dialog=2592}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_prominence.63"}]}
tellraw @s[scores={Dialog=2624}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_prominence.64"}]}
tellraw @s[scores={Dialog=2688}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.65"}]}
tellraw @s[scores={Dialog=2776}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.66"}]}
tellraw @s[scores={Dialog=2816}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.67"}]}
tellraw @s[scores={Dialog=2856}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.68"}]}
tellraw @s[scores={Dialog=2896}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.69"}]}
tellraw @s[scores={Dialog=2912}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.70"}]}
tellraw @s[scores={Dialog=2952}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.71"}]}
tellraw @s[scores={Dialog=2960}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.72"}]}
tellraw @s[scores={Dialog=2976}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.73"}]}
stopsound @s[scores={Dialog=3016}] music
scoreboard players set @s[scores={Dialog=3016}] Music 62
playsound medabots_server:music.entity.rubberobo_intro music @s[scores={Dialog=3016}] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=3016}] run summon minecraft:area_effect_cloud -425 55 -27 {Duration:1000000,Tags:["cutscene","dragonbeetle","dragonbeetle_1"],Rotation:[-45.0f,0.0f]}
execute if entity @s[scores={Dialog=3016}] run scoreboard players operation @e[x=-425,y=55,z=-27,distance=..1,tag=dragonbeetle] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=3016}] run scoreboard players add @e[x=-425,y=55,z=-27,distance=..1,tag=dragonbeetle] MedabotNr 1
execute if entity @s[scores={Dialog=3016}] run summon minecraft:armor_stand -425 55 -27 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","legs","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_flyfly"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.fly.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_flyfly.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_flyfly",gender:0b,move:"fly",part:"legs",armor:40,defense:28,activated:0b,model_data:{leg_count:0},version:1}}}]}
execute if entity @s[scores={Dialog=3016}] run summon minecraft:armor_stand -425 55 -27 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","left_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_flame_gun"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_flame_gun.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hellphoenix_flame_gun",gender:0b,move:"melt",part:"left_arm",armor:45,power:22,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=3016}] run summon minecraft:armor_stand -425 55 -27 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","right_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_fire_gun"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_fire_gun.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hellphoenix_fire_gun",gender:0b,move:"melt",part:"right_arm",armor:45,power:18,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=3016}] run summon minecraft:armor_stand -425 55 -27 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","head","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_hardweighter"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"15"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"105"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_hardweighter.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_hardweighter",gender:0b,move:"press",part:"head",armor:105,power:25,uses:15,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=3016}] positioned -425 55 -27 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=dragonbeetle] MedabotNr
execute at @s as @e[x=-425,y=55,z=-27,tag=dragonbeetle,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=3016}] run summon minecraft:area_effect_cloud -429 55 -27 {Duration:1000000,Tags:["cutscene","dragonbeetle","dragonbeetle_2"],Rotation:[-45.0f,0.0f]}
execute if entity @s[scores={Dialog=3016}] run scoreboard players operation @e[x=-429,y=55,z=-27,distance=..1,tag=dragonbeetle] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=3016}] run scoreboard players add @e[x=-429,y=55,z=-27,distance=..1,tag=dragonbeetle] MedabotNr 1
execute if entity @s[scores={Dialog=3016}] run summon minecraft:armor_stand -429 55 -27 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","legs","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_flyfly"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.fly.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_flyfly.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_flyfly",gender:0b,move:"fly",part:"legs",armor:40,defense:28,activated:0b,model_data:{leg_count:0},version:1}}}]}
execute if entity @s[scores={Dialog=3016}] run summon minecraft:armor_stand -429 55 -27 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","left_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_veryweighter"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_veryweighter.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_veryweighter",gender:0b,move:"press",part:"left_arm",armor:70,power:24,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=3016}] run summon minecraft:armor_stand -429 55 -27 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","right_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_heavyweighter"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_heavyweighter.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_heavyweighter",gender:0b,move:"press",part:"right_arm",armor:70,power:18,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=3016}] run summon minecraft:armor_stand -429 55 -27 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","head","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_hardweighter"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"15"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"105"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_hardweighter.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_hardweighter",gender:0b,move:"press",part:"head",armor:105,power:25,uses:15,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=3016}] positioned -429 55 -27 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=dragonbeetle] MedabotNr
execute at @s as @e[x=-429,y=55,z=-27,tag=dragonbeetle,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=3016}] positioned -426 55 -28 run function medabots_server:spawn_entities/cutscene/rubberobo
execute if entity @s[scores={Dialog=3016}] positioned -426 55 -28 run tag @e[tag=rubberobo,tag=this_dialog,limit=1,distance=..0.7] add rubberobo_1
execute if entity @s[scores={Dialog=3016}] as @e[tag=rubberobo_1,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -45 ~
execute if entity @s[scores={Dialog=3016}] positioned -428 55 -28 run function medabots_server:spawn_entities/cutscene/rubberobo
execute if entity @s[scores={Dialog=3016}] positioned -428 55 -28 run tag @e[tag=rubberobo,tag=this_dialog,limit=1,distance=..0.7] add rubberobo_2
execute if entity @s[scores={Dialog=3016}] as @e[tag=rubberobo_2,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -45 ~
execute if entity @s[scores={Dialog=3017}] run tag @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=3017}] as @e[tag=rubberobo_1,tag=this_dialog,limit=1] run tag @s add running
execute if entity @s[scores={Dialog=3017..3040}] as @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3017..3040}] as @e[tag=rubberobo_1,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3017}] run tag @e[tag=dragonbeetle_2,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=3017}] as @e[tag=rubberobo_2,tag=this_dialog,limit=1] run tag @s add running
execute if entity @s[scores={Dialog=3017..3040}] as @e[tag=dragonbeetle_2,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3017..3040}] as @e[tag=rubberobo_2,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3041}] as @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 40 0
execute if entity @s[scores={Dialog=3041}] as @e[tag=rubberobo_1,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 40 0
execute if entity @s[scores={Dialog=3041}] as @e[tag=dragonbeetle_2,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 40 0
execute if entity @s[scores={Dialog=3041}] as @e[tag=rubberobo_2,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 40 0
execute if entity @s[scores={Dialog=3042..3121}] as @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3042..3111}] as @e[tag=rubberobo_1,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3042..3113}] as @e[tag=dragonbeetle_2,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3042..3103}] as @e[tag=rubberobo_2,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3103}] as @e[tag=rubberobo_2,tag=this_dialog,limit=1] run tag @s add running
execute if entity @s[scores={Dialog=3111}] as @e[tag=rubberobo_1,tag=this_dialog,limit=1] run tag @s add running
execute if entity @s[scores={Dialog=3113}] run tag @e[tag=dragonbeetle_2,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=3114}] as @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=3115..3120}] as @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3121}] as @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 40 0
execute if entity @s[scores={Dialog=3121}] run tag @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=3016..3831}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=dragonbeetle_2,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=3016..3407}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=3016..4494}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo_1,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=3040}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.the_prominence.74"}]}
tellraw @s[scores={Dialog=3056}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.the_prominence.75"}]}
tellraw @s[scores={Dialog=3104}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_prominence.76"}]}
tellraw @s[scores={Dialog=3128}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_prominence.77","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=3176}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_prominence.78"}]}
tellraw @s[scores={Dialog=3216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_prominence.79"}]}
tellraw @s[scores={Dialog=3304}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_prominence.80"}]}
tellraw @s[scores={Dialog=3312}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_prominence.81"}]}
tellraw @s[scores={Dialog=3344}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.the_prominence.82"}]}
tellraw @s[scores={Dialog=3360}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.the_prominence.83"}]}
tellraw @s[scores={Dialog=3384}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.84"}]}
tellraw @s[scores={Dialog=3392}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.85"}]}
tellraw @s[scores={Dialog=3400}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.86"}]}
execute if entity @s[scores={Dialog=3408}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -435 55 -11
execute if entity @s[scores={Dialog=3408}] run tag @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=3409..3439}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3439}] run tag @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=3428}] as @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -45 0
execute if entity @s[scores={Dialog=3428}] run tag @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=3429..3439}] as @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3439}] run tag @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=3428}] as @e[tag=dragonbeetle_2,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 135 0
execute if entity @s[scores={Dialog=3428}] run tag @e[tag=dragonbeetle_2,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=3429..3439}] as @e[tag=dragonbeetle_2,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3439}] run tag @e[tag=dragonbeetle_2,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=3440}] as @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=3440}] as @e[tag=dragonbeetle_2,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=3440}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.the_prominence.87"}]}
tellraw @s[scores={Dialog=3456}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.the_prominence.88"}]}
tellraw @s[scores={Dialog=3488}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.89"}]}
tellraw @s[scores={Dialog=3504}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.the_prominence.90"}]}
tellraw @s[scores={Dialog=3536}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_prominence.91"}]}
tellraw @s[scores={Dialog=3544}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_prominence.92"}]}
tellraw @s[scores={Dialog=3576}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_prominence.93"}]}
tellraw @s[scores={Dialog=3608}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_prominence.94"}]}
tellraw @s[scores={Dialog=3640}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.the_prominence.95"}]}
tellraw @s[scores={Dialog=3712}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.the_prominence.96"}]}
tellraw @s[scores={Dialog=3776}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.97"}]}
tellraw @s[scores={Dialog=3800}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.98"}]}
execute if entity @s[scores={Dialog=3832}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=3832}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -438 55 -5
execute if entity @s[scores={Dialog=3832}] run tag @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=3833..3863}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3863}] run tag @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=3864..}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=3852}] as @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 135 0
execute if entity @s[scores={Dialog=3852}] run tag @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=3853..3862}] as @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3862}] run tag @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=3852}] as @e[tag=dragonbeetle_2,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -45 0
execute if entity @s[scores={Dialog=3852}] run tag @e[tag=dragonbeetle_2,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=3853..3862}] as @e[tag=dragonbeetle_2,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3862}] run tag @e[tag=dragonbeetle_2,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=3863..3995}] as @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=3863..3995}] as @e[tag=dragonbeetle_2,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=3832}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.99"}]}
tellraw @s[scores={Dialog=3864}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.100"}]}
tellraw @s[scores={Dialog=3880}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.101"}]}
tellraw @s[scores={Dialog=3912}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.102"}]}
tellraw @s[scores={Dialog=3920}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.the_prominence.103"}]}
tellraw @s[scores={Dialog=3952}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.104"}]}
execute if entity @s[scores={Dialog=3976}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -435 55 -11
execute if entity @s[scores={Dialog=3976}] run tag @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=3977..3991}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.425
execute if entity @s[scores={Dialog=3991}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo_2,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=3991}] run tag @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=3986..3995}] as @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^-0.425
execute if entity @s[scores={Dialog=3986..3995}] as @e[tag=dragonbeetle_2,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^-0.425
execute if entity @s[scores={Dialog=3986}] as @e[tag=rubberobo_1,tag=this_dialog,limit=1] run tag @s add running
execute if entity @s[scores={Dialog=3986}] as @e[tag=rubberobo_2,tag=this_dialog,limit=1] run tag @s add running
execute if entity @s[scores={Dialog=3986..3995}] as @e[tag=rubberobo_1,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^-0.425
execute if entity @s[scores={Dialog=3986..3995}] as @e[tag=rubberobo_2,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^-0.425
execute if entity @s[scores={Dialog=3996}] as @e[tag=rubberobo_1,tag=this_dialog,limit=1] run tag @s remove running
execute if entity @s[scores={Dialog=3996}] as @e[tag=rubberobo_2,tag=this_dialog,limit=1] run tag @s remove running
tellraw @s[scores={Dialog=3995}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.the_prominence.105"}]}
execute if entity @s[scores={Dialog=4022}] as @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 0
execute if entity @s[scores={Dialog=4022}] run tag @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4023..4037}] as @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4037}] run tag @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=4022}] as @e[tag=dragonbeetle_2,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -90 0
execute if entity @s[scores={Dialog=4022}] run tag @e[tag=dragonbeetle_2,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4023..4037}] as @e[tag=dragonbeetle_2,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4037}] run tag @e[tag=dragonbeetle_2,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=4038}] as @e[tag=dragonbeetle_1,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=4038}] as @e[tag=dragonbeetle_2,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=4038}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.106"}]}
execute if entity @s[scores={Dialog=4058}] at @e[tag=jaxy,tag=!medabot_model] run kill @e[distance=..1,tag=chest,tag=medabot_model]
execute if entity @s[scores={Dialog=4058}] at @e[tag=jaxy,tag=!medabot_model] run kill @e[distance=..1,tag=head,tag=medabot_model]
execute if entity @s[scores={Dialog=4058}] at @e[tag=jaxy,tag=!medabot_model] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","jaxy","head","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:15,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.arcbeetle_prominence"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"4"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.arcbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.arcbeetle_prominence.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:arcbeetle_prominence",gender:0b,move:"laser",part:"head",armor:70,power:76,uses:4,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=4058}] at @e[tag=jaxy,tag=!medabot_model] as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=jaxy] MedabotNr
execute if entity @s[scores={Dialog=4058}] at @e[tag=jaxy,tag=!medabot_model] as @e[tag=jaxy,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
stopsound @s[scores={Dialog=4058}] music
scoreboard players set @s[scores={Dialog=4058}] Music 0
tellraw @s[scores={Dialog=4058}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.the_prominence.107"}]}
tellraw @s[scores={Dialog=4090}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.the_prominence.108"}]}
tellraw @s[scores={Dialog=4122}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.the_prominence.109"}]}
tellraw @s[scores={Dialog=4154}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.the_prominence.110"}]}
tellraw @s[scores={Dialog=4234}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.the_prominence.111"}]}
tellraw @s[scores={Dialog=4250}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.the_prominence.112"}]}
tellraw @s[scores={Dialog=4306}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.113"}]}
effect give @s[scores={Dialog=4326}] minecraft:night_vision 1 0 true
execute if entity @s[scores={Dialog=4326}] at @e[tag=dragonbeetle,tag=this_dialog] run particle minecraft:cloud ~ ~ ~ 0 0 0 0.2 50 force @s
execute if entity @s[scores={Dialog=4326}] at @e[tag=dragonbeetle,tag=this_dialog] run playsound medabots_server:entity.medabot.death player @s ~ ~ ~ 2
execute if entity @s[scores={Dialog=4326}] run kill @e[tag=dragonbeetle,tag=this_dialog]
tellraw @s[scores={Dialog=4346}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.the_prominence.114"}]}
tellraw @s[scores={Dialog=4362}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.the_prominence.115"}]}
execute if entity @s[scores={Dialog=4394}] as @e[tag=rubberobo,tag=this_dialog] run tag @s add running
execute if entity @s[scores={Dialog=4394}] as @e[tag=rubberobo,tag=this_dialog] at @s run teleport @s ~ ~ ~ -115 0
execute if entity @s[scores={Dialog=4395..4434}] as @e[tag=rubberobo,tag=this_dialog] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4435}] as @e[tag=rubberobo,tag=this_dialog] at @s run teleport @s ~ ~ ~ -180 0
execute if entity @s[scores={Dialog=4436..4495}] as @e[tag=rubberobo,tag=this_dialog] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4495}] run teleport @e[tag=rubberobo,tag=this_dialog] ~ -100 ~
execute if entity @s[scores={Dialog=4495}] run tag @e[tag=rubberobo,tag=this_dialog] add dead
stopsound @s[scores={Dialog=4495}] music
scoreboard players set @s[scores={Dialog=4495}] Music 0
execute if entity @s[scores={Dialog=4495}] at @e[tag=jaxy,tag=!medabot_model] run kill @e[distance=..1,tag=chest,tag=medabot_model]
execute if entity @s[scores={Dialog=4495}] at @e[tag=jaxy,tag=!medabot_model] run kill @e[distance=..1,tag=head,tag=medabot_model]
execute if entity @s[scores={Dialog=4495}] at @e[tag=jaxy,tag=!medabot_model] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","jaxy","head","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:41,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_changedress"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.transform"}','{"italic":false,"color":"white","translate":"medabots_server:move.transform.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"90"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.potato_insect"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_changedress.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:potato_insect_changedress",gender:1b,move:"transform",part:"head",armor:90,power:25,uses:7,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=4495}] at @e[tag=jaxy,tag=!medabot_model] as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=jaxy] MedabotNr
execute if entity @s[scores={Dialog=4495}] at @e[tag=jaxy,tag=!medabot_model] as @e[tag=jaxy,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=4495}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=4495}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=4495}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=4495}] run tag @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4496..4511}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4511}] run tag @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
tellraw @s[scores={Dialog=4536}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.116"}]}
tellraw @s[scores={Dialog=4568}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.117"}]}
tellraw @s[scores={Dialog=4600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.118"}]}
tellraw @s[scores={Dialog=4656}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.119"}]}
tellraw @s[scores={Dialog=4728}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.120"}]}
tellraw @s[scores={Dialog=4752}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.121"}]}
tellraw @s[scores={Dialog=4768}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.122"}]}
tellraw @s[scores={Dialog=4816}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.123"}]}
tellraw @s[scores={Dialog=4864}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.124"}]}
tellraw @s[scores={Dialog=4936}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.125"}]}
tellraw @s[scores={Dialog=4960}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.126"}]}
tellraw @s[scores={Dialog=5000}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.the_prominence.127"}]}
tellraw @s[scores={Dialog=5024}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.the_prominence.128"}]}
execute if entity @s[scores={Dialog=5032}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -135 0
execute if entity @s[scores={Dialog=5032}] run tag @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=5033..}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=5032}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -135 0
execute if entity @s[scores={Dialog=5032}] run tag @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=5033..}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tellraw @s[scores={Dialog=5072}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.129"}]}
tellraw @s[scores={Dialog=5088}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.the_prominence.130"}]}
execute if entity @s[scores={Dialog=5112}] run tag @e[tag=spyke,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=5112}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -135 0
execute if entity @s[scores={Dialog=5113..}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
stopsound @s[scores={Dialog=5132}] music
scoreboard players set @s[scores={Dialog=5132}] MusicType 1
scoreboard players set @s[scores={Dialog=5132}] Music 0
tellraw @s[scores={Dialog=5132}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_prominence.131"}]}
tellraw @s[scores={Dialog=5156}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_prominence.132"}]}
tellraw @s[scores={Dialog=5204}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_prominence.133"}]}
tag @s[scores={Dialog=5228}] remove dialog_infinity_the_prominence
scoreboard players reset @s[scores={Dialog=5228}] DialogNr
scoreboard players set @s[scores={Dialog=5228}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog


playsound medabots_server:music.entity.screws music @s[scores={Music=0,MusicType=-1,Dialog=..3015}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=..3015}] Music 250
playsound medabots_server:music.entity.rubberobo music @s[scores={Music=0,MusicType=-1,Dialog=3016..4057}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=3016..4057}] Music 744
playsound medabots_server:music.entity.jaxy.power music @s[scores={Music=0,MusicType=-1,Dialog=4058..4494}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=4058..4494}] Music 1024
playsound medabots_server:music.entity.jaxy music @s[scores={Music=0,MusicType=-1,Dialog=4495..}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=4495..}] Music 1024