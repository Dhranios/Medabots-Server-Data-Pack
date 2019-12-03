execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity jammy_explained
scoreboard players set @s[scores={Dialog=1}] MusicType 47
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -381 55 -53 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -377 55 -50 run function medabots_server:spawn_entities/cutscene/samantha
execute if entity @s[scores={Dialog=1}] positioned -375 55 -51 run function medabots_server:spawn_entities/cutscene/sloan
execute if entity @s[scores={Dialog=1}] positioned -379 55 -50 run function medabots_server:spawn_entities/cutscene/spyke
execute if entity @s[scores={Dialog=1}] positioned -377 55 -54 run function medabots_server:spawn_entities/cutscene/karin
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -70 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 120 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 100 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 140 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 60 ~
teleport @s[scores={Dialog=1}] -381 55 -51 -90 0
teleport @s[scores={Dialog=2..3680}] -381 55 -51
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.1"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.2"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.3"}]}
tellraw @s[scores={Dialog=168}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.4"}]}
tellraw @s[scores={Dialog=176}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.5"}]}
tellraw @s[scores={Dialog=240}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.6"}]}
tellraw @s[scores={Dialog=272}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.7"}]}
execute if entity @s[scores={Dialog=304}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=samantha,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=304}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.8"}]}
execute if entity @s[scores={Dialog=312}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=312}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.9"}]}
tellraw @s[scores={Dialog=408}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.10"}]}
tellraw @s[scores={Dialog=432}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.11"}]}
tellraw @s[scores={Dialog=464}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.12"}]}
tellraw @s[scores={Dialog=512}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.13"}]}
execute if entity @s[scores={Dialog=520}] at @e[tag=samantha,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=samantha,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=520}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.14"}]}
tellraw @s[scores={Dialog=608}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.15"}]}
tellraw @s[scores={Dialog=640}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.16"}]}
execute if entity @s[scores={Dialog=672}] at @e[tag=spyke,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=spyke,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=672}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.17"}]}
tellraw @s[scores={Dialog=752}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.18"}]}
tellraw @s[scores={Dialog=768}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.19"}]}
tellraw @s[scores={Dialog=824}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.20"}]}
tellraw @s[scores={Dialog=848}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.21"}]}
execute if entity @s[scores={Dialog=714}] positioned -357 55 -85 run function medabots_server:spawn_entities/cutscene/erika
execute if entity @s[scores={Dialog=714}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -357 55 -75
execute if entity @s[scores={Dialog=714}] run tag @e[tag=erika,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=715..761}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=762}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -379 55 -56
execute if entity @s[scores={Dialog=763..899}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=900}] run tag @e[tag=erika,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=714}] positioned -355 55 -85 run function medabots_server:spawn_entities/cutscene/brass
execute if entity @s[scores={Dialog=714}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -357 55 -75
execute if entity @s[scores={Dialog=714}] run tag @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=715..761}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=762}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -379 55 -58
execute if entity @s[scores={Dialog=763..894}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=895}] run tag @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=901}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 ~
execute if entity @s[scores={Dialog=895}] as @e[tag=brass,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 ~
tellraw @s[scores={Dialog=900}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.22"}]}
execute if entity @s[scores={Dialog=924}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=erika,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=924}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=erika,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=924}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s facing entity @e[tag=erika,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=924}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=erika,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=924}] as @e[tag=karin,tag=this_dialog,limit=1] at @s facing entity @e[tag=erika,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=924}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.23"}]}
tellraw @s[scores={Dialog=948}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.24"}]}
tellraw @s[scores={Dialog=956}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.25"}]}
tellraw @s[scores={Dialog=1004}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.26"}]}
tellraw @s[scores={Dialog=1028}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.27"}]}
tellraw @s[scores={Dialog=1052}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.28"}]}
tellraw @s[scores={Dialog=1092}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.29"}]}
tellraw @s[scores={Dialog=1124}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.30"}]}
tellraw @s[scores={Dialog=1204}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.31"}]}
tellraw @s[scores={Dialog=1212}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.32"}]}
tellraw @s[scores={Dialog=1252}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.33"}]}
tellraw @s[scores={Dialog=1276}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.34"}]}
tellraw @s[scores={Dialog=1420}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.35"}]}
tellraw @s[scores={Dialog=1468}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.36"}]}
tellraw @s[scores={Dialog=1500}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.37"}]}
execute if entity @s[scores={Dialog=1508}] run setblock -379 55 -54 minecraft:end_rod
scoreboard players set @s[scores={Dialog=1508}] MusicType 34
scoreboard players set @s[scores={Dialog=1508}] Music 0
tellraw @s[scores={Dialog=1528}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.38"}]}
tellraw @s[scores={Dialog=1568}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.39"}]}
tellraw @s[scores={Dialog=1624}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.40"}]}
tellraw @s[scores={Dialog=1688}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.41"}]}
tellraw @s[scores={Dialog=1784}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.42"}]}
tellraw @s[scores={Dialog=1872}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.43"}]}
tellraw @s[scores={Dialog=1960}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.44"}]}
execute if entity @s[scores={Dialog=2016}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2016}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.45"}]}
tellraw @s[scores={Dialog=2056}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.46"}]}
tellraw @s[scores={Dialog=2080}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.47"}]}
tellraw @s[scores={Dialog=2088}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.48"}]}
tellraw @s[scores={Dialog=2112}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.49"}]}
execute if entity @s[scores={Dialog=2120}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2120}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2120}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2120}] as @e[tag=karin,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2120}] as @e[tag=erika,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2120}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2120}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.50"}]}
tellraw @s[scores={Dialog=2144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.51"}]}
tellraw @s[scores={Dialog=2152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.52"}]}
tellraw @s[scores={Dialog=2192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.53"}]}
tellraw @s[scores={Dialog=2208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.54"}]}
tellraw @s[scores={Dialog=2248}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.55"}]}
tellraw @s[scores={Dialog=2336}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.56"}]}
execute if entity @s[scores={Dialog=2368}] as @e[tag=erika,tag=this_dialog,limit=1] at @s facing entity @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2368}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.57"}]}
execute if entity @s[scores={Dialog=2400}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=erika,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2400}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.58"}]}
execute if entity @s[scores={Dialog=2424}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2424}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2424}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s facing entity @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2424}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2424}] as @e[tag=karin,tag=this_dialog,limit=1] at @s facing entity @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2424}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.59"}]}
tellraw @s[scores={Dialog=2440}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.60"}]}
tellraw @s[scores={Dialog=2456}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.61"}]}
tellraw @s[scores={Dialog=2472}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.62"}]}
tellraw @s[scores={Dialog=2512}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.63"}]}
tellraw @s[scores={Dialog=2520}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.64"}]}
tellraw @s[scores={Dialog=2568}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.65"}]}
execute if entity @s[scores={Dialog=2584}] run tag @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] add dancing
tellraw @s[scores={Dialog=2584}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.66"}]}
tellraw @s[scores={Dialog=2608}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.67"}]}
tellraw @s[scores={Dialog=2640}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.68"}]}
execute if entity @s[scores={Dialog=2016}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 ~
tellraw @s[scores={Dialog=2664}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.69"}]}
tellraw @s[scores={Dialog=2736}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.70"}]}
tellraw @s[scores={Dialog=2808}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.71"}]}
tellraw @s[scores={Dialog=2864}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.72"}]}
tellraw @s[scores={Dialog=3000}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.73"}]}
tellraw @s[scores={Dialog=3024}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.74"}]}
tellraw @s[scores={Dialog=3120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.75"}]}
tellraw @s[scores={Dialog=3152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.76"}]}
tellraw @s[scores={Dialog=3216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.77"}]}
tellraw @s[scores={Dialog=3232}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.78"}]}
tellraw @s[scores={Dialog=3256}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.79"}]}
tellraw @s[scores={Dialog=3280}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.80"}]}
tellraw @s[scores={Dialog=3312}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.81"}]}
tellraw @s[scores={Dialog=3360}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.82"}]}
execute if entity @s[scores={Dialog=3360}] run setblock -379 55 -54 minecraft:air
execute if entity @s[scores={Dialog=3058}] positioned -317 55 -24 run function medabots_server:spawn_entities/cutscene/roks
execute if entity @s[scores={Dialog=3058}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -318 55 -30
execute if entity @s[scores={Dialog=3058}] run tag @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] add jammed_walking
execute if entity @s[scores={Dialog=3058..3086}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3087}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -371 55 -46
execute if entity @s[scores={Dialog=3089..3348}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3349}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -373 55 -53
execute if entity @s[scores={Dialog=3350..3383}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3384}] run tag @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] remove jammed_walking
execute if entity @s[scores={Dialog=3384}] run tag @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] add dancing
execute if entity @s[scores={Dialog=3384}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=3384}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=3384}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s facing entity @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=3384}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=3384}] as @e[tag=karin,tag=this_dialog,limit=1] at @s facing entity @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=3384}] as @e[tag=erika,tag=this_dialog,limit=1] at @s facing entity @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=3384}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=3384}] at @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=3384}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.83"}]}
tellraw @s[scores={Dialog=3408}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.84"}]}
tellraw @s[scores={Dialog=3424}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.85"}]}
tellraw @s[scores={Dialog=3440}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.86"}]}
tellraw @s[scores={Dialog=3448}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.87"}]}
tellraw @s[scores={Dialog=3456}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.88"}]}
tellraw @s[scores={Dialog=3496}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.89"}]}
execute if entity @s[scores={Dialog=3544}] run tag @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] remove dancing
execute if entity @s[scores={Dialog=3424}] positioned -316 55 -23 run function medabots_server:spawn_entities/cutscene/koji
execute if entity @s[scores={Dialog=3424}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -317 55 -31
execute if entity @s[scores={Dialog=3424}] run tag @e[tag=koji,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=3424..3442}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.425
execute if entity @s[scores={Dialog=3443}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -369 55 -46
execute if entity @s[scores={Dialog=3444..3570}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.425
execute if entity @s[scores={Dialog=3571}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -372 55 -50
execute if entity @s[scores={Dialog=3572..3583}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.425
execute if entity @s[scores={Dialog=3584}] run tag @e[tag=koji,tag=this_dialog,limit=1] remove running
tellraw @s[scores={Dialog=3584}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.90"}]}
execute if entity @s[scores={Dialog=3616}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -353 55 -85
execute if entity @s[scores={Dialog=3616}] run tag @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] add jammed_walking
execute if entity @s[scores={Dialog=3617..3786}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3786}] run kill @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=3616}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.91"}]}
tellraw @s[scores={Dialog=3632}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.92"}]}
execute if entity @s[scores={Dialog=3648}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -369 55 -57
execute if entity @s[scores={Dialog=3648}] run tag @e[tag=koji,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=3649..3684}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3685}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -352 55 -88
execute if entity @s[scores={Dialog=3686..3825}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3825}] run kill @e[tag=koji,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=3648}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=erika,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=3648}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=erika,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=3648}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s facing entity @e[tag=erika,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=3648}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=erika,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=3648}] as @e[tag=karin,tag=this_dialog,limit=1] at @s facing entity @e[tag=erika,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=3648}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 ~
execute if entity @s[scores={Dialog=3648}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=erika,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=3648}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.93"}]}
tellraw @s[scores={Dialog=3672}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.94"}]}
tellraw @s[scores={Dialog=3736}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.95"}]}
tellraw @s[scores={Dialog=3800}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.96"}]}
tellraw @s[scores={Dialog=3832}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.97"}]}
tellraw @s[scores={Dialog=3912}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.98"}]}
tellraw @s[scores={Dialog=3944}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.99"}]}
tellraw @s[scores={Dialog=4024}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.100"}]}
tellraw @s[scores={Dialog=4104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.101"}]}
tellraw @s[scores={Dialog=4112}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.102"}]}
tellraw @s[scores={Dialog=4168}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.103"}]}
execute if entity @s[scores={Dialog=4176}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=4176}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=samantha,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=4184}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=sloan,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=4184}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s facing entity @e[tag=samantha,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=4200}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.104"}]}
tellraw @s[scores={Dialog=4216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.105"}]}
tellraw @s[scores={Dialog=4224}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.106"}]}
execute if entity @s[scores={Dialog=4232}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -351 55 -87
execute if entity @s[scores={Dialog=4232}] run tag @e[tag=spyke,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4233..4452}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4452}] run kill @e[tag=spyke,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=4232}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -351 55 -87
execute if entity @s[scores={Dialog=4232}] run tag @e[tag=sloan,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4233..4452}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4452}] run kill @e[tag=sloan,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=4232}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -351 55 -87
execute if entity @s[scores={Dialog=4232}] run tag @e[tag=samantha,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4233..4452}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4452}] run kill @e[tag=samantha,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=4252}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.107"}]}
tellraw @s[scores={Dialog=4284}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.108"}]}
tellraw @s[scores={Dialog=4308}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.109"}]}
execute if entity @s[scores={Dialog=4324}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -365 55 -59
execute if entity @s[scores={Dialog=4324}] run tag @e[tag=karin,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4325..4385}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4386}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -338 55 -56
execute if entity @s[scores={Dialog=4387..4516}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4516}] run kill @e[tag=karin,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=4344}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.110"}]}
tellraw @s[scores={Dialog=4376}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.111"}]}
tellraw @s[scores={Dialog=4464}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.112"}]}
tellraw @s[scores={Dialog=4472}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.113"}]}
tellraw @s[scores={Dialog=4480}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.114"}]}
tellraw @s[scores={Dialog=4520}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.115"}]}
tellraw @s[scores={Dialog=4536}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.116"}]}
tellraw @s[scores={Dialog=4664}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained.117"}]}
advancement grant @s[scores={Dialog=4680}] only medabots_server:special_items/passes/robo_4
scoreboard players set @s[scores={Dialog=4680}] MusicType 1
scoreboard players set @s[scores={Dialog=4680}] Music 0
tag @s[scores={Dialog=4680}] remove dialog_infinity_jammy_explained
scoreboard players reset @s[scores={Dialog=4680}] DialogNr
scoreboard players set @s[scores={Dialog=4680}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog