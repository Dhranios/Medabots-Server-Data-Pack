execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity tune_observes
scoreboard players set @s[scores={Dialog=1}] MusicType 42
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -411 55 -31 run function medabots_server:spawn_entities/cutscene/director_tune
execute if entity @s[scores={Dialog=1}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 ~
teleport @s[x=-410,y=55,z=-42,distance=..6] -415 55 -34
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.tune_observes.1"}]}
tellraw @s[scores={Dialog=20}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.tune_observes.2"}]}
tellraw @s[scores={Dialog=36}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.tune_observes.3"}]}
execute if entity @s[scores={Dialog=68..}] at @e[tag=director_tune,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=director_tune,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=68}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.tune_observes.4"}]}
tellraw @s[scores={Dialog=100}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.tune_observes.5"}]}
tellraw @s[scores={Dialog=116}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.tune_observes.6"}]}
tellraw @s[scores={Dialog=148}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.tune_observes.7"}]}
tag @s[scores={Dialog=172}] remove dialog_infinity_tune_observes
scoreboard players set @s[scores={Dialog=172}] MusicType 1
scoreboard players set @s[scores={Dialog=172}] Music 0
scoreboard players reset @s[scores={Dialog=172}] DialogNr
scoreboard players set @s[scores={Dialog=172}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog