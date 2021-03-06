execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity kuwagata_medal
scoreboard players set @s[scores={Dialog=1}] MusicType 42
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned 46 59 33 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned 50 59 34 run function medabots_server:spawn_entities/cutscene/director_tune
execute if entity @s[scores={Dialog=1}] positioned 43 59 6 run function medabots_server:spawn_entities/cutscene/max
teleport @s[scores={Dialog=1}] 48 59 31 -30 0
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -65 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -15 ~
execute if entity @s[scores={Dialog=1..1460}] at @e[tag=director_tune,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=director_tune,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.2"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.3"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.4"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.5"}]}
tellraw @s[scores={Dialog=176}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.6"}]}
tellraw @s[scores={Dialog=182}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.7"}]}
tellraw @s[scores={Dialog=206}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.8"}]}
tellraw @s[scores={Dialog=230}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.9"}]}
tellraw @s[scores={Dialog=254}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.10"}]}
tellraw @s[scores={Dialog=286}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.11"}]}
tellraw @s[scores={Dialog=318}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.12"}]}
tellraw @s[scores={Dialog=390}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.13"}]}
tellraw @s[scores={Dialog=424}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.14"}]}
tellraw @s[scores={Dialog=496}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.15","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=536}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.16","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=560}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.17","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=616}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.18"}]}
tellraw @s[scores={Dialog=648}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.19"}]}
tellraw @s[scores={Dialog=704}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.20"}]}
tellraw @s[scores={Dialog=776}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.21"}]}
tellraw @s[scores={Dialog=792}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.22"}]}
tellraw @s[scores={Dialog=824}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.23"}]}
execute if entity @s[scores={Dialog=920},tag=!already_gave_items] run function medabots_server:give_items/tinpet/female
execute if entity @s[scores={Dialog=920},tag=!already_gave_items] run function medabots_server:give_items/medal/kuwagata
tag @s[scores={Dialog=920}] add already_gave_items
tellraw @s[scores={Dialog=940}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.24"}]}
tellraw @s[scores={Dialog=980}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.25"}]}
tellraw @s[scores={Dialog=1036}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.26"}]}
tellraw @s[scores={Dialog=1052}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.27"}]}
tellraw @s[scores={Dialog=1076}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.28"}]}
tellraw @s[scores={Dialog=1116}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.29"}]}
tellraw @s[scores={Dialog=1124}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.30"}]}
tellraw @s[scores={Dialog=1164}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.31"}]}
tellraw @s[scores={Dialog=1180}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.32"}]}
tellraw @s[scores={Dialog=1236}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.33"}]}
tellraw @s[scores={Dialog=1268}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.34"}]}
tellraw @s[scores={Dialog=1348}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.35"}]}
tellraw @s[scores={Dialog=1380}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.36"}]}
tellraw @s[scores={Dialog=1436}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.37"}]}
execute if entity @s[scores={Dialog=1460}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 48 59 63
execute if entity @s[scores={Dialog=1460}] run tag @e[tag=director_tune,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1540..1738}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1540}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.38"}]}
tellraw @s[scores={Dialog=1572}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.39"}]}
execute if entity @s[scores={Dialog=1593}] as @e[tag=director_tune,tag=this_dialog,limit=1] run kill @s
tellraw @s[scores={Dialog=1596}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.40"}]}
tellraw @s[scores={Dialog=1652}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.41"}]}
tellraw @s[scores={Dialog=1682}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.42"}]}
tellraw @s[scores={Dialog=1730}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.43"}]}
playsound medabots_server:entity.max.photo neutral @s[scores={Dialog=1738}] ~ ~ ~ 1000
scoreboard players set @s[scores={Dialog=1738}] MusicType 39
scoreboard players set @s[scores={Dialog=1738}] Music 0
execute if entity @s[scores={Dialog=1638}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 45 59 36
execute if entity @s[scores={Dialog=1639}] run tag @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1780}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s remove walking
execute if entity @s[scores={Dialog=1780..2753}] at @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1738..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1800}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.44"}]}
tellraw @s[scores={Dialog=1816}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.45"}]}
tellraw @s[scores={Dialog=1880}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.46"}]}
tellraw @s[scores={Dialog=1952}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.47"}]}
tellraw @s[scores={Dialog=1984}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.48"}]}
tellraw @s[scores={Dialog=2048}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.49"}]}
tellraw @s[scores={Dialog=2064}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.50"}]}
tellraw @s[scores={Dialog=2120}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.51"}]}
tellraw @s[scores={Dialog=2152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.52"}]}
tellraw @s[scores={Dialog=2216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.53"}]}
tellraw @s[scores={Dialog=2240}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.54"}]}
tellraw @s[scores={Dialog=2306}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.55"}]}
tellraw @s[scores={Dialog=2410}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.56"}]}
tellraw @s[scores={Dialog=2458}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.57"}]}
tellraw @s[scores={Dialog=2474}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.58"}]}
tellraw @s[scores={Dialog=2506}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.59"}]}
tellraw @s[scores={Dialog=2626}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.60"}]}
tellraw @s[scores={Dialog=2642}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.61"}]}
tellraw @s[scores={Dialog=2650}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.62"}]}
tellraw @s[scores={Dialog=2682}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.63"}]}
tellraw @s[scores={Dialog=2698}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.64"}]}
tellraw @s[scores={Dialog=2738}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.65"}]}
execute if entity @s[scores={Dialog=2754}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 48 59 63
execute if entity @s[scores={Dialog=2755}] run tag @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] add walking
tellraw @s[scores={Dialog=2834}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.66"}]}
tag @s[scores={Dialog=2878}] remove dialog_infinity_kuwagata_medal
tag @s[scores={Dialog=2878}] remove already_gave_items
scoreboard players set @s[scores={Dialog=2878}] MusicType 1
scoreboard players set @s[scores={Dialog=2878}] Music 0
scoreboard players reset @s[scores={Dialog=2878}] DialogNr
scoreboard players set @s[scores={Dialog=2878}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog