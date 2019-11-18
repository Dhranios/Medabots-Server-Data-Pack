execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity peppercat_taken
scoreboard players set @s[scores={Dialog=1}] MusicType 35
scoreboard players set @s[scores={Dialog=1}] Music 0
scoreboard players set @s[scores={Dialog=1}] Jukebox 0
execute if entity @s[scores={Dialog=1}] positioned -438 55 -2 run function medabots_server:spawn_entities/cutscene/samantha
execute if entity @s[scores={Dialog=1..187}] at @e[tag=samantha,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=samantha,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.peppercat_taken.1"}]}
tellraw @s[scores={Dialog=20}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.peppercat_taken.2"}]}
tellraw @s[scores={Dialog=28}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.peppercat_taken.3"}]}
tellraw @s[scores={Dialog=60}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.peppercat_taken.4"}]}
tellraw @s[scores={Dialog=100}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.peppercat_taken.5"}]}
tellraw @s[scores={Dialog=140}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.peppercat_taken.6"}]}
execute if entity @s[scores={Dialog=188}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -423 55 -25
execute if entity @s[scores={Dialog=188}] run tag @e[tag=samantha,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=189..}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.425
tag @s[scores={Dialog=268}] remove dialog_infinity_peppercat_taken
scoreboard players set @s[scores={Dialog=268}] MusicType 1
scoreboard players set @s[scores={Dialog=268}] Music 0
scoreboard players reset @s[scores={Dialog=268}] DialogNr
scoreboard players set @s[scores={Dialog=268}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog