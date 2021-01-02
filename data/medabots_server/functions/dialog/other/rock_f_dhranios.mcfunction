execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other rock_f_dhranios
scoreboard players set @s[scores={Dialog=1}] MusicType 38
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned 27 59 29 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned 31 59 27 run function medabots_server:spawn_entities/cutscene/koji
execute if entity @s[scores={Dialog=1}] positioned 33 59 26 run function medabots_server:spawn_entities/cutscene/roks
execute if entity @s[scores={Dialog=1}] positioned 31 59 23 run function medabots_server:spawn_entities/cutscene/suzumega_hummer
teleport @s[scores={Dialog=1}] 29 59 30 -180 0
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=koji,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=koji,tag=this_dialog,limit=1] at @s facing entity @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=koji,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.1"}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.2"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.3"}]}
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.4"}]}
tellraw @s[scores={Dialog=192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.5"}]}
tellraw @s[scores={Dialog=240}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.6"}]}
execute if entity @s[scores={Dialog=304}] as @e[tag=koji,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=304}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=304..3079}] at @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=304}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.7"}]}
tellraw @s[scores={Dialog=344}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.8"}]}
tellraw @s[scores={Dialog=376}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.9"}]}
tellraw @s[scores={Dialog=520}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.10"}]}
tellraw @s[scores={Dialog=656}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.11","with":[{"selector":"@s"}]}]}
execute if entity @s[scores={Dialog=712}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=744}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.12"}]}
tellraw @s[scores={Dialog=792}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.13"}]}
tellraw @s[scores={Dialog=888}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.14"}]}
tellraw @s[scores={Dialog=904}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.15"}]}
tellraw @s[scores={Dialog=928}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.16"}]}
tellraw @s[scores={Dialog=1048}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.17"}]}
tellraw @s[scores={Dialog=1120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.18"}]}
tellraw @s[scores={Dialog=1144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.19"}]}
tellraw @s[scores={Dialog=1168}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.20"}]}
execute if entity @s[scores={Dialog=1184..1291}] at @e[tag=koji,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=koji,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1248}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.21"}]}
tellraw @s[scores={Dialog=1268}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.22"}]}
execute if entity @s[scores={Dialog=1292..}] as @e[tag=koji,tag=this_dialog,limit=1] at @s facing entity @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1292..}] as @e[tag=roks,tag=this_dialog,limit=1] at @s facing entity @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1292}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.23"}]}
tellraw @s[scores={Dialog=1412}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.24"}]}
tellraw @s[scores={Dialog=1444}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.25"}]}
tellraw @s[scores={Dialog=1524}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.26"}]}
tellraw @s[scores={Dialog=1652}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.27"}]}
tellraw @s[scores={Dialog=1716}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.28"}]}
tellraw @s[scores={Dialog=1788}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.29"}]}
tellraw @s[scores={Dialog=1844}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.30"}]}
# show argorok loot Dialog=1908
tellraw @s[scores={Dialog=1928}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.31"}]}
tellraw @s[scores={Dialog=2112}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.32"}]}
tellraw @s[scores={Dialog=2280}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.33"}]}
execute if entity @s[scores={Dialog=2400..2711}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2400}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.34","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=2464}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.35"}]}
tellraw @s[scores={Dialog=2544}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.36"}]}
tellraw @s[scores={Dialog=2664}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.37"}]}
tellraw @s[scores={Dialog=2696}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.38"}]}
execute if entity @s[scores={Dialog=2712..}] as @e[tag=metabee,tag=this_dialog,limit=1] at @s facing entity @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2712}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.39"}]}
tellraw @s[scores={Dialog=2720}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.40"}]}
tellraw @s[scores={Dialog=2768}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.41"}]}
tellraw @s[scores={Dialog=2848}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.42"}]}
tellraw @s[scores={Dialog=2880}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.43"}]}
tellraw @s[scores={Dialog=2912}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios.44"}]}
execute if entity @s[scores={Dialog=3080}] as @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 28 59 0
execute if entity @s[scores={Dialog=3081}] run tag @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] add walking
tag @s[scores={Dialog=3191}] remove dialog_other_rock_f_dhranios
scoreboard players set @s[scores={Dialog=3191}] MusicType 1
scoreboard players set @s[scores={Dialog=3191}] Music 0
scoreboard players reset @s[scores={Dialog=3191}] DialogNr
scoreboard players set @s[scores={Dialog=3191}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog