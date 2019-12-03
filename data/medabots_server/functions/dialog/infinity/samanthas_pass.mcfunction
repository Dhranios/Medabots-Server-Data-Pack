execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity samanthas_pass
execute if entity @s[scores={Dialog=1}] positioned -391 55 -26 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -393 55 -29 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["kid","kid_1","cutscene","this_dialog"],Pose:{RightArm:[-15.0f,0.0f,0.001f],LeftArm:[-15.0f,0.0f,0.001f],RightLeg:[0.0f,0.0f,0.001f],LeftLeg:[0.0f,0.0f,0.001f]},Rotation:[-90.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2301714}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:5658450}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:7869192}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-393,y=55,z=-29,tag=kid_1,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=kid_1,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] at @e[tag=kid_1,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=kid_1,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -390 55 -28 110 0
teleport @s[scores={Dialog=2..895}] -390 55 -28
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.2"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.3"}]}
tellraw @s[scores={Dialog=144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.4"}]}
tellraw @s[scores={Dialog=152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.5"}]}
tellraw @s[scores={Dialog=200}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.6"}]}
execute if entity @s[scores={Dialog=216}] at @e[tag=metabee,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.7"}]}
tellraw @s[scores={Dialog=248}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.8"}]}
tellraw @s[scores={Dialog=328}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.9"}]}
tellraw @s[scores={Dialog=360}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.10"}]}
execute if entity @s[scores={Dialog=376}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=kid_1,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=376}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.11"}]}
tellraw @s[scores={Dialog=416}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.12"}]}
tellraw @s[scores={Dialog=496}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.13"}]}
tellraw @s[scores={Dialog=544}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.14"}]}
tellraw @s[scores={Dialog=696}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.15"}]}
tellraw @s[scores={Dialog=720}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.16"}]}
tellraw @s[scores={Dialog=824}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.17"}]}
tellraw @s[scores={Dialog=888}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.18"}]}
teleport @s[scores={Dialog=896}] -446 55 -1 80 0
teleport @s[scores={Dialog=897..2814}] -446 55 -1
scoreboard players set @s[scores={Dialog=896}] MusicType 35
scoreboard players set @s[scores={Dialog=896}] Music 0
execute if entity @s[scores={Dialog=896,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=896}] positioned -452 55 0 run function medabots_server:spawn_entities/cutscene/samantha
execute if entity @s[scores={Dialog=896}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] positioned -447 55 1 facing entity @e[tag=samantha,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=896}] as @e[tag=kid_1,tag=this_dialog,limit=1] positioned -452 55 3 facing entity @e[tag=samantha,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=896}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=kid_1,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=896}] run summon minecraft:armor_stand -436 55 -10 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["kid","kid_2","cutscene","this_dialog"],Pose:{RightArm:[-15.0f,0.0f,0.001f],LeftArm:[-15.0f,0.0f,0.001f],RightLeg:[0.0f,0.0f,0.001f],LeftLeg:[0.0f,0.0f,0.001f]},Rotation:[-90.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:790287}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:3618869}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:7045282}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-436,y=55,z=-10,tag=kid_2,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
tellraw @s[scores={Dialog=936}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.19"}]}
tellraw @s[scores={Dialog=952}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.20"}]}
tellraw @s[scores={Dialog=984}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.21"}]}
tellraw @s[scores={Dialog=1032}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.22"}]}
execute if entity @s[scores={Dialog=952}] as @e[tag=kid_2,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -445 55 2
execute if entity @s[scores={Dialog=952}] run tag @e[tag=kid_2,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=953..1022}] as @e[tag=kid_2,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1023}] as @e[tag=kid_2,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -450 55 3
execute if entity @s[scores={Dialog=1024..1048}] as @e[tag=kid_2,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1048}] run tag @e[tag=kid_2,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=1048}] as @e[tag=kid_2,tag=this_dialog,limit=1] at @s facing entity @e[tag=kid_1,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1048}] as @e[tag=kid_1,tag=this_dialog,limit=1] at @s facing entity @e[tag=kid_2,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1048}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=kid_2,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1048}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.23"}]}
tellraw @s[scores={Dialog=1072}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.24"}]}
tellraw @s[scores={Dialog=1112}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.25"}]}
tellraw @s[scores={Dialog=1184}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.26"}]}
execute if entity @s[scores={Dialog=1216}] at @e[tag=samantha,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=samantha,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.27"}]}
tellraw @s[scores={Dialog=1280}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.28"}]}
tellraw @s[scores={Dialog=1368}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.29"}]}
tellraw @s[scores={Dialog=1384}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.30"}]}
tellraw @s[scores={Dialog=1432}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.31"}]}
advancement grant @s[scores={Dialog=1456}] only medabots_server:special_items/passes/iceberg_d
tellraw @s[scores={Dialog=1476}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.32"}]}
tellraw @s[scores={Dialog=1492}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.33"}]}
tellraw @s[scores={Dialog=1556}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.34"}]}
execute if entity @s[scores={Dialog=1572}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=kid_2,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1572}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.35"}]}
tellraw @s[scores={Dialog=1612}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.36"}]}
tellraw @s[scores={Dialog=1628}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.37"}]}
execute if entity @s[scores={Dialog=1676}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1676}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.38"}]}
execute if entity @s[scores={Dialog=1700}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=kid_2,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1700}] as @e[tag=kid_1,tag=this_dialog,limit=1] at @s facing entity @e[tag=samantha,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1700}] as @e[tag=kid_2,tag=this_dialog,limit=1] at @s facing entity @e[tag=samantha,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1700}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.39"}]}
tellraw @s[scores={Dialog=1716}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.40"}]}
tellraw @s[scores={Dialog=1724}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.41"}]}
tellraw @s[scores={Dialog=1804}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.42"}]}
tellraw @s[scores={Dialog=1820}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.43"}]}
execute if entity @s[scores={Dialog=1844}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=kid_1,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1844}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.44"}]}
tellraw @s[scores={Dialog=1900}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.45"}]}
execute if entity @s[scores={Dialog=1908}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=kid_2,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1908}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.46"}]}
tellraw @s[scores={Dialog=1972}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.47"}]}
execute if entity @s[scores={Dialog=1980}] as @e[tag=kid_1,tag=this_dialog,limit=1] at @s facing entity @e[tag=kid_2,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1980}] as @e[tag=kid_2,tag=this_dialog,limit=1] at @s facing entity @e[tag=kid_1,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1980}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.48"}]}
execute if entity @s[scores={Dialog=2000}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=kid_1,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2052}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.49"}]}
tellraw @s[scores={Dialog=2124}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.50"}]}
tellraw @s[scores={Dialog=2132}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.51"}]}
execute if entity @s[scores={Dialog=2152..2437}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=kid_2,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2212}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.52"}]}
tellraw @s[scores={Dialog=2244}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.53"}]}
tellraw @s[scores={Dialog=2276}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.54"}]}
execute if entity @s[scores={Dialog=2292}] at @e[tag=kid_1,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=kid_1,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2292}] at @e[tag=kid_2,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=kid_2,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2292}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.55"}]}
tellraw @s[scores={Dialog=2332}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.56"}]}
tellraw @s[scores={Dialog=2362}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.57"}]}
execute if entity @s[scores={Dialog=2378}] as @e[tag=kid_1,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -453 55 7
execute if entity @s[scores={Dialog=2378}] run tag @e[tag=kid_1,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2379..2397}] as @e[tag=kid_1,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2398}] as @e[tag=kid_1,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -453 55 11
execute if entity @s[scores={Dialog=2399..2438}] as @e[tag=kid_1,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2438}] run kill @e[tag=kid_1,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=2378}] as @e[tag=kid_2,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -451 55 7
execute if entity @s[scores={Dialog=2378}] run tag @e[tag=kid_2,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2379..2397}] as @e[tag=kid_2,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2398}] as @e[tag=kid_2,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -451 55 11
execute if entity @s[scores={Dialog=2399..2438}] as @e[tag=kid_2,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2438}] run kill @e[tag=kid_2,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=2438..}] at @e[tag=samantha,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=samantha,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2458}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.58"}]}
tellraw @s[scores={Dialog=2478}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.59"}]}
tellraw @s[scores={Dialog=2510}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.60"}]}
execute if entity @s[scores={Dialog=2518}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2518}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.61"}]}
tellraw @s[scores={Dialog=2558}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.62"}]}
tellraw @s[scores={Dialog=2638}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.63"}]}
tellraw @s[scores={Dialog=2678}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.64"}]}
tellraw @s[scores={Dialog=2758}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.65"}]}
tellraw @s[scores={Dialog=2774}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.66"}]}
execute if entity @s[scores={Dialog=2814}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -432 55 -13
execute if entity @s[scores={Dialog=2814}] run tag @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=2815..2862}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.425
execute if entity @s[scores={Dialog=2862}] run tag @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] remove running
execute if entity @s[scores={Dialog=2863}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2815..2855}] facing -434 55 -13 run teleport @s ^ ^ ^0.425
teleport @s[scores={Dialog=2856}] -434 55 -13 -90 0
teleport @s[scores={Dialog=2857..}] -434 55 -13
scoreboard players set @s[scores={Dialog=2862}] MusicType 1
scoreboard players set @s[scores={Dialog=2862}] Music 0
tellraw @s[scores={Dialog=2862}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.67"}]}
tellraw @s[scores={Dialog=2894}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.68"}]}
tellraw @s[scores={Dialog=2934}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.samanthas_pass.69"}]}
tag @s[scores={Dialog=2982}] remove dialog_infinity_samanthas_pass
scoreboard players reset @s[scores={Dialog=2982}] DialogNr
scoreboard players set @s[scores={Dialog=2982}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog