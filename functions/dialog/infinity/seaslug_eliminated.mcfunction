execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity seaslug_eliminated
stopsound @s[scores={Dialog=1}] music
playsound medabots_server:music.entity.rubberobo_intro music @s[scores={Dialog=1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 62
execute if entity @s[scores={Dialog=1}] positioned -1715 51 -682 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1714 51 -679 run function medabots_server:spawn_entities/cutscene/seaslug
execute if entity @s[scores={Dialog=1..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=seaslug,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..199}] at @e[tag=seaslug,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=seaslug,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1714 51 -683 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.seaslug_eliminated.1"}]}
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.seaslug_eliminated.2"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.seaslug_eliminated.3"}]}
tellraw @s[scores={Dialog=144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.seaslug_eliminated.4"}]}
tellraw @s[scores={Dialog=168}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.seaslug_eliminated.5"}]}
execute if entity @s[scores={Dialog=200}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1714 51 -637
execute if entity @s[scores={Dialog=200}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=201..}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tellraw @s[scores={Dialog=240}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.seaslug_eliminated.6"}]}
tellraw @s[scores={Dialog=272}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.seaslug_eliminated.7"}]}
tellraw @s[scores={Dialog=296}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.seaslug_eliminated.8"}]}
tellraw @s[scores={Dialog=320}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.seaslug_eliminated.9"}]}
tag @s[scores={Dialog=397}] remove dialog_infinity_seaslug_eliminated
stopsound @s[scores={Dialog=397}] music
scoreboard players set @s[scores={Dialog=397}] MusicType 1
scoreboard players set @s[scores={Dialog=397}] Music 0
scoreboard players reset @s[scores={Dialog=397}] DialogNr
scoreboard players set @s[scores={Dialog=397}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.rubberobo music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 744