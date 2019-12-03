execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity brass_taken
scoreboard players set @s[scores={Dialog=1}] MusicType 37
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -465 55 16 run function medabots_server:spawn_entities/cutscene/erika
execute if entity @s[scores={Dialog=1..231}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_taken.1","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_taken.2"}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_taken.3"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_taken.4"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_taken.5"}]}
tellraw @s[scores={Dialog=128}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_taken.6"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_taken.7"}]}
tellraw @s[scores={Dialog=208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_taken.8"}]}
execute if entity @s[scores={Dialog=232}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -458 55 8
execute if entity @s[scores={Dialog=232}] run tag @e[tag=erika,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=233..}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.425
tag @s[scores={Dialog=262}] remove dialog_infinity_brass_taken
scoreboard players set @s[scores={Dialog=262}] MusicType 1
scoreboard players set @s[scores={Dialog=262}] Music 0
scoreboard players reset @s[scores={Dialog=262}] DialogNr
scoreboard players set @s[scores={Dialog=262}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog