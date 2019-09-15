execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity max_got_ditched
stopsound @s[scores={Dialog=1}] music
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1}] positioned -1717 51 -396 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1716 51 -392 run function medabots_server:spawn_entities/cutscene/max
execute if entity @s[scores={Dialog=1..1331}] at @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..407}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1715 51 -396 15 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.1","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.2"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.3"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.4"}]}
tellraw @s[scores={Dialog=160}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.5"}]}
tellraw @s[scores={Dialog=240}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.6"}]}
tellraw @s[scores={Dialog=384}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.7"}]}
execute if entity @s[scores={Dialog=408..543}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=408}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.8"}]}
tellraw @s[scores={Dialog=464}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.9"}]}
tellraw @s[scores={Dialog=472}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.10"}]}
tellraw @s[scores={Dialog=496}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.11"}]}
tellraw @s[scores={Dialog=512}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.12"}]}
execute if entity @s[scores={Dialog=544..1291}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=544}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.13"}]}
tellraw @s[scores={Dialog=568}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.14"}]}
tellraw @s[scores={Dialog=600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.15"}]}
tellraw @s[scores={Dialog=616}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.16"}]}
tellraw @s[scores={Dialog=680}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.17"}]}
tellraw @s[scores={Dialog=712}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.18"}]}
tellraw @s[scores={Dialog=736}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.19"}]}
tellraw @s[scores={Dialog=792}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.20"}]}
tellraw @s[scores={Dialog=808}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.21"}]}
tellraw @s[scores={Dialog=848}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.22"}]}
tellraw @s[scores={Dialog=864}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.23"}]}
tellraw @s[scores={Dialog=936}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.24"}]}
tellraw @s[scores={Dialog=968}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.25"}]}
tellraw @s[scores={Dialog=988}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.26"}]}
tellraw @s[scores={Dialog=1044}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.27"}]}
tellraw @s[scores={Dialog=1084}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.28"}]}
tellraw @s[scores={Dialog=1204}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.29"}]}
tellraw @s[scores={Dialog=1252}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.30"}]}
tellraw @s[scores={Dialog=1260}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.31"}]}
execute if entity @s[scores={Dialog=1292}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 ~
tellraw @s[scores={Dialog=1292}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.32"}]}
tellraw @s[scores={Dialog=1316}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.33"}]}
execute if entity @s[scores={Dialog=1332}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1715 51 -349
execute if entity @s[scores={Dialog=1332}] run tag @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1333..1542}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
stopsound @s[scores={Dialog=1472}] music
scoreboard players set @s[scores={Dialog=1472}] MusicType 1
scoreboard players set @s[scores={Dialog=1472}] Music 0
tellraw @s[scores={Dialog=1472}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.34"}]}
execute if entity @s[scores={Dialog=1496..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1496}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.max_got_ditched.35"}]}
tag @s[scores={Dialog=1542}] remove dialog_infinity_max_got_ditched
scoreboard players reset @s[scores={Dialog=1542}] DialogNr
scoreboard players set @s[scores={Dialog=1542}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.max music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 578