execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity krosserdog_saved
scoreboard players set @s[scores={Dialog=1}] MusicType 44
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1539 50 -445 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1540 50 -447 run function medabots_server:spawn_entities/cutscene/krosserdog
execute if entity @s[scores={Dialog=1}] positioned -1535 50 -449 run function medabots_server:spawn_entities/cutscene/caroline
execute if entity @s[scores={Dialog=1}] positioned -1535 50 -447 run function medabots_server:spawn_entities/cutscene/doctor_haru
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..1111}] at @e[tag=doctor_haru,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=doctor_haru,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..1111}] at @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1539 50 -449 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.2"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.3"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.4"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.5"}]}
tellraw @s[scores={Dialog=104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.6"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.7"}]}
tellraw @s[scores={Dialog=152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.8"}]}
tellraw @s[scores={Dialog=168}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.9"}]}
tellraw @s[scores={Dialog=176}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.10"}]}
tellraw @s[scores={Dialog=248}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.11"}]}
execute if entity @s[scores={Dialog=256}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=256}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=256}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.12"}]}
tellraw @s[scores={Dialog=304}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.13"}]}
tellraw @s[scores={Dialog=328}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.14"}]}
tellraw @s[scores={Dialog=392}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.15"}]}
tellraw @s[scores={Dialog=480}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.16"}]}
tellraw @s[scores={Dialog=536}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.17"}]}
tellraw @s[scores={Dialog=616}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.18"}]}
tellraw @s[scores={Dialog=680}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.19"}]}
tellraw @s[scores={Dialog=704}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.20"}]}
tellraw @s[scores={Dialog=768}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.21"}]}
tellraw @s[scores={Dialog=824}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.22"}]}
tellraw @s[scores={Dialog=848}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.23"}]}
tellraw @s[scores={Dialog=872}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.24"}]}
tellraw @s[scores={Dialog=896}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.25"}]}
tellraw @s[scores={Dialog=952}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.26"}]}
tellraw @s[scores={Dialog=984}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.27"}]}
tellraw @s[scores={Dialog=1000}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.28"}]}
tellraw @s[scores={Dialog=1064}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.29"}]}
execute if entity @s[scores={Dialog=1072}] positioned -1539 50 -418 run function medabots_server:spawn_entities/cutscene/spyke
scoreboard players set @s[scores={Dialog=1072}] MusicType 50
scoreboard players set @s[scores={Dialog=1072}] Music 0
execute if entity @s[scores={Dialog=1072}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1538 50 -443
execute if entity @s[scores={Dialog=1072}] run tag @e[tag=spyke,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=1073..1131}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.425
execute if entity @s[scores={Dialog=1132}] run tag @e[tag=spyke,tag=this_dialog,limit=1] remove running
execute if entity @s[scores={Dialog=1132..1395}] at @e[tag=spyke,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=spyke,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1092}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.30","with":[{"selector":"@s"}]}]}
execute if entity @s[scores={Dialog=1112..1132}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1112..1132}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1112..1132}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1112..1132}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1132}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.31"}]}
tellraw @s[scores={Dialog=1156}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.32"}]}
tellraw @s[scores={Dialog=1164}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.33"}]}
tellraw @s[scores={Dialog=1196}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.34"}]}
tellraw @s[scores={Dialog=1228}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.35"}]}
tellraw @s[scores={Dialog=1276}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.36"}]}
tellraw @s[scores={Dialog=1340}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.37"}]}
execute if entity @s[scores={Dialog=1396}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1396}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.38"}]}
tellraw @s[scores={Dialog=1412}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.39"}]}
tellraw @s[scores={Dialog=1428}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.40"}]}
tellraw @s[scores={Dialog=1460}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.41"}]}
tellraw @s[scores={Dialog=1516}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.42"}]}
tellraw @s[scores={Dialog=1572}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.43"}]}
tellraw @s[scores={Dialog=1604}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.44"}]}
execute if entity @s[scores={Dialog=1692..1915}] at @e[tag=spyke,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=spyke,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1692}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.45","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=1772}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.46"}]}
tellraw @s[scores={Dialog=1876}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.47"}]}
tellraw @s[scores={Dialog=1892}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.48"}]}
tellraw @s[scores={Dialog=1908}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.49"}]}
tellraw @s[scores={Dialog=1916}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.50"}]}
execute if entity @s[scores={Dialog=1916}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1540 50 -445
execute if entity @s[scores={Dialog=1916}] run tag @e[tag=spyke,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1917..1929}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1929}] run tag @e[tag=spyke,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=1929}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1929}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1929}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1929}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1929}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1924}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.51"}]}
tellraw @s[scores={Dialog=1964}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.52"}]}
tellraw @s[scores={Dialog=1988}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.53"}]}
tellraw @s[scores={Dialog=1996}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.54"}]}
tellraw @s[scores={Dialog=2108}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.55"}]}
tellraw @s[scores={Dialog=2124}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.56"}]}
tellraw @s[scores={Dialog=2140}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.57"}]}
tellraw @s[scores={Dialog=2188}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.58"}]}
tellraw @s[scores={Dialog=2208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.59"}]}
tellraw @s[scores={Dialog=2224}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.60"}]}
tellraw @s[scores={Dialog=2256}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.61"}]}
tellraw @s[scores={Dialog=2328}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.62"}]}
tellraw @s[scores={Dialog=2416}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.63"}]}
tellraw @s[scores={Dialog=2536}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.64"}]}
tellraw @s[scores={Dialog=2560}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.65"}]}
tellraw @s[scores={Dialog=2580}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.66"}]}
execute if entity @s[scores={Dialog=2604}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -90 0
execute if entity @s[scores={Dialog=2604}] run tag @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2605..2614}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2614}] run tag @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=2615}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2615}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2615}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2615}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2615}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2616}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.67"}]}
tellraw @s[scores={Dialog=2632}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.68"}]}
tellraw @s[scores={Dialog=2680}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.69"}]}
tellraw @s[scores={Dialog=2696}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.70"}]}
execute if entity @s[scores={Dialog=2712}] run tag @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] add right_arm_selected
execute if entity @s[scores={Dialog=2712..2721}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~0.2125 ~
execute if entity @s[scores={Dialog=2722..2731}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~-0.2125 ~
execute if entity @s[scores={Dialog=2732}] run tag @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] remove right_arm_selected
execute if entity @s[scores={Dialog=2722..2724}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~-0.425 ~0.2125 ~0.425
execute if entity @s[scores={Dialog=2725..2727}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~-0.425 ~-0.2125 ~0.425
execute if entity @s[scores={Dialog=2726..2727}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~-0.425 ~ ~0.425
execute if entity @s[scores={Dialog=2728}] run playsound minecraft:block.glass.break block @s -1540 49 -445 1
execute if entity @s[scores={Dialog=2728}] run playsound minecraft:block.glass.break block @s -1540 49 -446 1
execute if entity @s[scores={Dialog=2728}] run playsound minecraft:block.glass.break block @s -1539 49 -445 1
execute if entity @s[scores={Dialog=2728}] run playsound minecraft:block.glass.break block @s -1539 49 -446 1
execute if entity @s[scores={Dialog=2728..2747}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~-0.425 ~
execute if entity @s[scores={Dialog=2728..2747}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~-0.425 ~
execute if entity @s[scores={Dialog=2747}] run kill @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=2747}] run kill @e[tag=spyke,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=2746}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2746}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.71"}]}
tellraw @s[scores={Dialog=2754}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.72"}]}
execute if entity @s[scores={Dialog=2762}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s facing entity @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2762}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.73"}]}
tellraw @s[scores={Dialog=2778}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.74"}]}
tellraw @s[scores={Dialog=2794}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.75"}]}
tellraw @s[scores={Dialog=2766}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.76"}]}
tellraw @s[scores={Dialog=2874}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.77"}]}
tellraw @s[scores={Dialog=2914}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.78"}]}
tellraw @s[scores={Dialog=2946}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.79"}]}
tellraw @s[scores={Dialog=3058}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.80"}]}
tellraw @s[scores={Dialog=3082}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.81"}]}
execute if entity @s[scores={Dialog=3154}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1539 50 -418
execute if entity @s[scores={Dialog=3154}] run tag @e[tag=doctor_haru,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=3155..3291}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3291}] run kill @e[tag=doctor_haru,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=3154}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1539 50 -418
execute if entity @s[scores={Dialog=3154}] run tag @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=3155..}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tag @s[scores={Dialog=3301}] remove dialog_infinity_krosserdog_saved
scoreboard players set @s[scores={Dialog=3301}] MusicType 22
scoreboard players set @s[scores={Dialog=3301}] Music 0
scoreboard players reset @s[scores={Dialog=3301}] DialogNr
scoreboard players set @s[scores={Dialog=3301}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog