execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
scoreboard players set @s[scores={Dialog=1}] MusicType 35
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1949 51 -619 run function medabots_server:spawn_entities/cutscene/samantha
execute if entity @s[scores={Dialog=1..143}] at @e[tag=samantha,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=samantha,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1949 51 -616 -180 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.postgame_samantha.1","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.postgame_samantha.2"}]}
tellraw @s[scores={Dialog=104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.postgame_samantha.3"}]}
execute if entity @s[scores={Dialog=144}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1950 51 -640
execute if entity @s[scores={Dialog=144}] run tag @e[tag=samantha,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=145..}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
scoreboard players set @s[scores={Dialog=242}] KillStreak 1
scoreboard players set @s[scores={Dialog=242}] MusicType 1
scoreboard players set @s[scores={Dialog=242}] Music 0
tag @s[scores={Dialog=242}] remove dialog_infinity_postgame_samantha
scoreboard players reset @s[scores={Dialog=242}] DialogNr
scoreboard players set @s[scores={Dialog=242}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog