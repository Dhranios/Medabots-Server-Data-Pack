execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity victory
scoreboard players set @s[scores={Dialog=1}] MusicType 50
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1}] positioned -1891 50 -571 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1888 50 -570 run function medabots_server:spawn_entities/cutscene/roks
execute if entity @s[scores={Dialog=1}] positioned -1891 50 -568 run function medabots_server:spawn_entities/cutscene/caroline
execute if entity @s[scores={Dialog=1}] positioned -1887 50 -569 run function medabots_server:spawn_entities/cutscene/koji
execute if entity @s[scores={Dialog=1}] positioned -1890 50 -564 run function medabots_server:spawn_entities/cutscene/erika
execute if entity @s[scores={Dialog=1}] positioned -1894 50 -568 run function medabots_server:spawn_entities/cutscene/doctor_haru
execute if entity @s[scores={Dialog=1}] positioned -1893 50 -570 run function medabots_server:spawn_entities/cutscene/director_tune
execute if entity @s[scores={Dialog=1}] positioned -1876 50 -564 run function medabots_server:spawn_entities/cutscene/seaslug
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 90
execute if entity @s[scores={Dialog=1}] as @e[tag=koji,tag=this_dialog,limit=1] at @s facing entity @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=erika,tag=this_dialog,limit=1] at @s facing entity @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s facing entity @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s facing entity @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s facing entity @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1890 50 -571 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.victory.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline"},{"translate":"medabots_server:dialog.infinity.victory.2"}]}
tellraw @s[scores={Dialog=28}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.victory.3"}]}
tellraw @s[scores={Dialog=36}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.victory.4"}]}
tellraw @s[scores={Dialog=60}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.victory.5"}]}
execute if entity @s[scores={Dialog=92}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1890 50 -540
execute if entity @s[scores={Dialog=92}] run tag @e[tag=erika,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=93..149}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.425
execute if entity @s[scores={Dialog=149}] run kill @e[tag=erika,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=92}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.victory.6"}]}
tellraw @s[scores={Dialog=100}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.victory.7"}]}
tellraw @s[scores={Dialog=140}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.victory.8"}]}
tellraw @s[scores={Dialog=164}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.victory.9"}]}
tellraw @s[scores={Dialog=228}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.victory.10"}]}
tellraw @s[scores={Dialog=236}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.victory.11"}]}
tellraw @s[scores={Dialog=252}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.victory.12"}]}
tellraw @s[scores={Dialog=348}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.victory.13"}]}
tellraw @s[scores={Dialog=364}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.victory.14"}]}
tellraw @s[scores={Dialog=436}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.victory.15"}]}
tellraw @s[scores={Dialog=444}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.victory.16"}]}
tellraw @s[scores={Dialog=484}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.victory.17"}]}
tellraw @s[scores={Dialog=508}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.victory.18"}]}
tellraw @s[scores={Dialog=532}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.victory.19"}]}
tellraw @s[scores={Dialog=596}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.victory.20"}]}
tellraw @s[scores={Dialog=616}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.victory.21"}]}
execute if entity @s[scores={Dialog=648}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=seaslug,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=648}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=seaslug,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=648}] as @e[tag=koji,tag=this_dialog,limit=1] at @s facing entity @e[tag=seaslug,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=648}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s facing entity @e[tag=seaslug,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=648}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s facing entity @e[tag=seaslug,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=648}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.victory.22"}]}
tellraw @s[scores={Dialog=736}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.victory.23"}]}
tellraw @s[scores={Dialog=744}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.victory.24"}]}
tellraw @s[scores={Dialog=760}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.victory.25"}]}
tellraw @s[scores={Dialog=792}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.victory.26"}]}
tellraw @s[scores={Dialog=848}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.victory.27"}]}
tellraw @s[scores={Dialog=856}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.victory.28"}]}
tellraw @s[scores={Dialog=904}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.victory.29"}]}
tellraw @s[scores={Dialog=920}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.victory.30"}]}
tellraw @s[scores={Dialog=1000}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.victory.31"}]}
execute if entity @s[scores={Dialog=1032}] run tag @e[tag=koji,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=1033..1062}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.425
execute if entity @s[scores={Dialog=1062}] run tag @e[tag=koji,tag=this_dialog,limit=1] remove running
execute if entity @s[scores={Dialog=1053}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s facing entity @e[tag=koji,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1053}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.victory.32"}]}
execute if entity @s[scores={Dialog=1059..1063}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ^ ^0.1 ^-0.425
execute if entity @s[scores={Dialog=1064..1068}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ^ ^-0.1 ^-0.425
tellraw @s[scores={Dialog=1088}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.victory.33"}]}
tellraw @s[scores={Dialog=1144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.victory.34"}]}
scoreboard players set @s[scores={Dialog=1160}] MusicType 55
scoreboard players set @s[scores={Dialog=1160}] Music 0
execute if entity @s[scores={Dialog=1160}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
tellraw @s[scores={Dialog=1160}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline"},{"translate":"medabots_server:dialog.infinity.victory.35"}]}
tellraw @s[scores={Dialog=1168}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline"},{"translate":"medabots_server:dialog.infinity.victory.36"}]}
execute if entity @s[scores={Dialog=1174}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1174}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1174}] as @e[tag=koji,tag=this_dialog,limit=1] at @s facing entity @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1174}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s facing entity @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1174}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s facing entity @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1174}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s facing entity @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1184}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.victory.37"}]}
tellraw @s[scores={Dialog=1192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.victory.38"}]}
tellraw @s[scores={Dialog=1208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.victory.39"}]}
tellraw @s[scores={Dialog=1256}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.victory.40"}]}
tellraw @s[scores={Dialog=1304}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline"},{"translate":"medabots_server:dialog.infinity.victory.41"}]}
tellraw @s[scores={Dialog=1328}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline"},{"translate":"medabots_server:dialog.infinity.victory.42"}]}
tellraw @s[scores={Dialog=1336}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.victory.43"}]}
tellraw @s[scores={Dialog=1368}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.victory.44"}]}
execute if entity @s[scores={Dialog=1384..1529}] at @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] run particle minecraft:dust 1 1 0 1 ~ ~1 ~ 1 2 1 0 30
tellraw @s[scores={Dialog=1404}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.victory.45"}]}
tellraw @s[scores={Dialog=1420}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.victory.46"}]}
tellraw @s[scores={Dialog=1444}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.victory.47"}]}
tellraw @s[scores={Dialog=1468}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.victory.48"}]}
tellraw @s[scores={Dialog=1476}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.victory.49"}]}
execute if entity @s[scores={Dialog=1508}] run tag @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1509..1516}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^-0.2125
execute if entity @s[scores={Dialog=1516}] run tag @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=1508}] run tag @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1509..1516}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^-0.2125
execute if entity @s[scores={Dialog=1516}] run tag @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=1508}] run tag @e[tag=director_tune,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1509..1516}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^-0.2125
execute if entity @s[scores={Dialog=1516}] run tag @e[tag=director_tune,tag=this_dialog,limit=1] remove walking
tellraw @s[scores={Dialog=1508}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.victory.50"}]}
tellraw @s[scores={Dialog=1516}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.victory.51"}]}
execute if entity @s[scores={Dialog=1524}] run tag @e[tag=doctor_haru,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=1525..1529}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.425
execute if entity @s[scores={Dialog=1529}] run tag @e[tag=doctor_haru,tag=this_dialog,limit=1] remove running
execute if entity @s[scores={Dialog=1529}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1568}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.victory.52"}]}
tellraw @s[scores={Dialog=1600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.victory.53"}]}
execute if entity @s[scores={Dialog=1688}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1876 50 -548
execute if entity @s[scores={Dialog=1688}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1689..1757}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1757}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=1758}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s facing entity @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1688}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.victory.54"}]}
execute if entity @s[scores={Dialog=1752..1758}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=seaslug,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1752}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.victory.55","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=1776}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.victory.56"}]}
tellraw @s[scores={Dialog=1824}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.victory.57"}]}
tellraw @s[scores={Dialog=1840}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.victory.58"}]}
tellraw @s[scores={Dialog=1880}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.victory.59"}]}
tellraw @s[scores={Dialog=1912}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.victory.60"}]}
tellraw @s[scores={Dialog=1936}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.victory.61"}]}
tellraw @s[scores={Dialog=1944}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.victory.62"}]}
tellraw @s[scores={Dialog=1952}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.victory.63"}]}
tellraw @s[scores={Dialog=1976}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.victory.64"}]}
scoreboard players set @s[scores={Dialog=2000}] MusicType 35
scoreboard players set @s[scores={Dialog=2000}] Music 0
execute if entity @s[scores={Dialog=2000}] positioned -1891 50 -541 run function medabots_server:spawn_entities/cutscene/krosserdog
execute if entity @s[scores={Dialog=2000}] positioned -1889 50 -541 run function medabots_server:spawn_entities/cutscene/spyke
execute if entity @s[scores={Dialog=2000}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 0
execute if entity @s[scores={Dialog=2000}] run tag @e[tag=spyke,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2001..2110}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2110}] run tag @e[tag=spyke,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=2111}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2000}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 0
execute if entity @s[scores={Dialog=2000}] run tag @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2001..2110}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2110}] run tag @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=2111}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2000}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.victory.65"}]}
tellraw @s[scores={Dialog=2008}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.victory.66"}]}
tellraw @s[scores={Dialog=2056}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.victory.67"}]}
tellraw @s[scores={Dialog=2168}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.victory.68"}]}
tellraw @s[scores={Dialog=2176}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.victory.69"}]}
tellraw @s[scores={Dialog=2184}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.victory.70"}]}
tellraw @s[scores={Dialog=2232}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.victory.71"}]}
tellraw @s[scores={Dialog=2272}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.victory.72"}]}
tellraw @s[scores={Dialog=2296}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.victory.73"}]}
tellraw @s[scores={Dialog=2408}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.victory.74"}]}
tellraw @s[scores={Dialog=2472}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.victory.75"}]}
tellraw @s[scores={Dialog=2528}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.victory.76"}]}
scoreboard players set @s[scores={Dialog=2600}] MusicType 1
scoreboard players set @s[scores={Dialog=2600}] Music 0
execute if entity @s[scores={Dialog=2600}] run tag @e[tag=doctor_haru,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2601..2605}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^-0.2125
execute if entity @s[scores={Dialog=2605}] run tag @e[tag=doctor_haru,tag=this_dialog,limit=1] remove walking
tellraw @s[scores={Dialog=2600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.victory.77"}]}
tellraw @s[scores={Dialog=2624}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.victory.78"}]}
execute if entity @s[scores={Dialog=2712}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1890 50 -540
execute if entity @s[scores={Dialog=2712}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2713..2788}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2788}] run kill @e[tag=seaslug,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=2712}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.victory.79"}]}
tellraw @s[scores={Dialog=2736}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.victory.80"}]}
tellraw @s[scores={Dialog=2752}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.victory.81"}]}
tellraw @s[scores={Dialog=2760}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.victory.82"}]}
execute if entity @s[scores={Dialog=2792}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2792}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2792}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.victory.83"}]}
tellraw @s[scores={Dialog=2856}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.victory.84"}]}
execute if entity @s[scores={Dialog=2880}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2880}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline"},{"translate":"medabots_server:dialog.infinity.victory.85"}]}
execute if entity @s[scores={Dialog=2880}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2888}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline"},{"translate":"medabots_server:dialog.infinity.victory.86"}]}
tellraw @s[scores={Dialog=2912}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline"},{"translate":"medabots_server:dialog.infinity.victory.87"}]}
tellraw @s[scores={Dialog=2952}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.victory.88"}]}
tellraw @s[scores={Dialog=2976}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.victory.89"}]}
tellraw @s[scores={Dialog=3032}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.victory.90"}]}
execute if entity @s[scores={Dialog=3060}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=3060}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.victory.91"}]}
tellraw @s[scores={Dialog=3096}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline"},{"translate":"medabots_server:dialog.infinity.victory.92"}]}
tellraw @s[scores={Dialog=3124}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline"},{"translate":"medabots_server:dialog.infinity.victory.93"}]}
tellraw @s[scores={Dialog=3160}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.victory.94"}]}
effect give @s[scores={Dialog=3196}] minecraft:blindness 2 0 true
tag @s[scores={Dialog=3196}] remove dialog_infinity_victory
scoreboard players set @s[scores={Dialog=3196}] MusicType 22
scoreboard players set @s[scores={Dialog=3196}] Music 0
scoreboard players reset @s[scores={Dialog=3196}] DialogNr
scoreboard players set @s[scores={Dialog=3196}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog