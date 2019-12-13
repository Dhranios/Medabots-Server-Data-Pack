execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity sloans_pass
scoreboard players set @s[scores={Dialog=1}] MusicType 35
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1716 51 -495 run function medabots_server:spawn_entities/cutscene/sloan
execute if entity @s[scores={Dialog=1..115}] at @e[tag=sloan,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=sloan,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1715 51 -492 -180 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_pass.1"}]}
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_pass.2"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_pass.3"}]}
advancement grant @s[scores={Dialog=80}] only medabots_server:special_items/passes/laboratory_d
tellraw @s[scores={Dialog=100}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_pass.4"}]}
execute if entity @s[scores={Dialog=116}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1716 51 -538
execute if entity @s[scores={Dialog=116}] run tag @e[tag=sloan,tag=this_dialog,limit=1] add walking
tag @s[scores={Dialog=318}] remove dialog_infinity_sloans_pass
scoreboard players set @s[scores={Dialog=318}] MusicType 1
scoreboard players set @s[scores={Dialog=318}] Music 0
scoreboard players reset @s[scores={Dialog=318}] DialogNr
scoreboard players set @s[scores={Dialog=318}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog