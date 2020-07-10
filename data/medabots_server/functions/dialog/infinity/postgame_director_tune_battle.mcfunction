execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
scoreboard players set @s[scores={Dialog=1}] MusicType 42
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned 23 59 27 run function medabots_server:spawn_entities/cutscene/director_tune
execute if entity @s[scores={Dialog=1..47}] at @e[tag=director_tune,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=director_tune,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] 23 59 24 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_director_tune_battle.1","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_director_tune_battle.2"}]}
execute if entity @s[scores={Dialog=48}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 23 59 47
execute if entity @s[scores={Dialog=48}] run tag @e[tag=director_tune,tag=this_dialog,limit=1] add walking
scoreboard players set @s[scores={Dialog=142}] KillStreak 0
scoreboard players set @s[scores={Dialog=142}] MusicType 1
scoreboard players set @s[scores={Dialog=142}] Music 0
tag @s[scores={Dialog=142}] remove dialog_infinity_postgame_director_tune_battle
scoreboard players reset @s[scores={Dialog=142}] DialogNr
scoreboard players set @s[scores={Dialog=142}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog