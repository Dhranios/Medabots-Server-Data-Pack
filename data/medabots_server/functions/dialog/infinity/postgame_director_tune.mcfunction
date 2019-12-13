execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
scoreboard players set @s[scores={Dialog=1}] MusicType 42
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1949 51 -619 run function medabots_server:spawn_entities/cutscene/director_tune
execute if entity @s[scores={Dialog=1..127}] at @e[tag=director_tune,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=director_tune,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1949 51 -616 -180 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_director_tune.1","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_director_tune.2"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_director_tune.3"}]}
execute if entity @s[scores={Dialog=128}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1950 51 -640
execute if entity @s[scores={Dialog=128}] run tag @e[tag=director_tune,tag=this_dialog,limit=1] add walking
scoreboard players set @s[scores={Dialog=226}] KillStreak 3
scoreboard players set @s[scores={Dialog=226}] MusicType 1
scoreboard players set @s[scores={Dialog=226}] Music 0
tag @s[scores={Dialog=226}] remove dialog_infinity_postgame_director_tune
scoreboard players reset @s[scores={Dialog=226}] DialogNr
scoreboard players set @s[scores={Dialog=226}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog