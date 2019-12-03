execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity suspicious_tune
scoreboard players set @s[scores={Dialog=1}] MusicType 37
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1811 51 -586 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1809 51 -583 run function medabots_server:spawn_entities/cutscene/erika
execute if entity @s[scores={Dialog=1..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=erika,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..3107}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1809 51 -587 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.1","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.2"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.3"}]}
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.4"}]}
tellraw @s[scores={Dialog=112}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.5"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.6"}]}
tellraw @s[scores={Dialog=232}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.7"}]}
tellraw @s[scores={Dialog=256}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.8"}]}
tellraw @s[scores={Dialog=296}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.9"}]}
tellraw @s[scores={Dialog=352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.10"}]}
tellraw @s[scores={Dialog=424}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.11"}]}
tellraw @s[scores={Dialog=456}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.12"}]}
tellraw @s[scores={Dialog=544}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.13"}]}
tellraw @s[scores={Dialog=616}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.14"}]}
tellraw @s[scores={Dialog=664}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.15"}]}
tellraw @s[scores={Dialog=776}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.16"}]}
tellraw @s[scores={Dialog=792}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.17","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=864}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.18"}]}
tellraw @s[scores={Dialog=872}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.19"}]}
tellraw @s[scores={Dialog=888}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.20"}]}
tellraw @s[scores={Dialog=928}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.21"}]}
tellraw @s[scores={Dialog=936}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.22"}]}
scoreboard players set @s[scores={Dialog=1000}] MusicType 48
scoreboard players set @s[scores={Dialog=1000}] Music 0
tellraw @s[scores={Dialog=1000}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.23"}]}
tellraw @s[scores={Dialog=1048}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.24"}]}
tellraw @s[scores={Dialog=1112}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.25"}]}
tellraw @s[scores={Dialog=1152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.26"}]}
tellraw @s[scores={Dialog=1184}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.27"}]}
tellraw @s[scores={Dialog=1208}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.28"}]}
tellraw @s[scores={Dialog=1280}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.29"}]}
tellraw @s[scores={Dialog=1304}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.30"}]}
tellraw @s[scores={Dialog=1384}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.31"}]}
tellraw @s[scores={Dialog=1408}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.32"}]}
tellraw @s[scores={Dialog=1440}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.33"}]}
tellraw @s[scores={Dialog=1480}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.34"}]}
tellraw @s[scores={Dialog=1504}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.35"}]}
tellraw @s[scores={Dialog=1600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.36"}]}
tellraw @s[scores={Dialog=1648}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.37"}]}
tellraw @s[scores={Dialog=1704}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.38"}]}
tellraw @s[scores={Dialog=1728}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.39"}]}
tellraw @s[scores={Dialog=1760}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.40"}]}
tellraw @s[scores={Dialog=1832}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.41"}]}
tellraw @s[scores={Dialog=1912}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.42"}]}
tellraw @s[scores={Dialog=2048}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.43"}]}
tellraw @s[scores={Dialog=2064}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.44"}]}
tellraw @s[scores={Dialog=2128}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.45"}]}
tellraw @s[scores={Dialog=2160}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.46"}]}
tellraw @s[scores={Dialog=2192}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.47"}]}
tellraw @s[scores={Dialog=2248}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.48"}]}
tellraw @s[scores={Dialog=2312}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.49"}]}
tellraw @s[scores={Dialog=2336}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.50","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=2424}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.51"}]}
tellraw @s[scores={Dialog=2464}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.52"}]}
tellraw @s[scores={Dialog=2552}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.53"}]}
tellraw @s[scores={Dialog=2572}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.54"}]}
tellraw @s[scores={Dialog=2620}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.55"}]}
tellraw @s[scores={Dialog=2676}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.56"}]}
tellraw @s[scores={Dialog=2732}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.57"}]}
tellraw @s[scores={Dialog=2796}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.58"}]}
tellraw @s[scores={Dialog=2852}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.59"}]}
tellraw @s[scores={Dialog=2892}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.60"}]}
tellraw @s[scores={Dialog=2964}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.61"}]}
tellraw @s[scores={Dialog=3052}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.62"}]}
execute if entity @s[scores={Dialog=3108..3555}] as @e[tag=erika,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=3108}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.63"}]}
tellraw @s[scores={Dialog=3172}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.64"}]}
tellraw @s[scores={Dialog=3252}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.65"}]}
tellraw @s[scores={Dialog=3284}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.66"}]}
tellraw @s[scores={Dialog=3292}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.67"}]}
tellraw @s[scores={Dialog=3388}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.68"}]}
tellraw @s[scores={Dialog=3412}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.69"}]}
tellraw @s[scores={Dialog=3460}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.70"}]}
tellraw @s[scores={Dialog=3500}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.71"}]}
tellraw @s[scores={Dialog=3524}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.72"}]}
execute if entity @s[scores={Dialog=3556}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1809 51 -540
execute if entity @s[scores={Dialog=3556}] run tag @e[tag=erika,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=3556..}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.425
tellraw @s[scores={Dialog=3556}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.73"}]}
tellraw @s[scores={Dialog=3564}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.74"}]}
tellraw @s[scores={Dialog=3588}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.suspicious_tune.75"}]}
tag @s[scores={Dialog=3656}] remove dialog_infinity_suspicious_tune
scoreboard players set @s[scores={Dialog=3656}] MusicType 1
scoreboard players set @s[scores={Dialog=3656}] Music 0
scoreboard players reset @s[scores={Dialog=3656}] DialogNr
scoreboard players set @s[scores={Dialog=3656}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog