execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity vs_shrimplips_battle
scoreboard players set @s[scores={Dialog=1}] MusicType 32
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1951 51 -564 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1950 51 -561 run function medabots_server:spawn_entities/cutscene/shrimplips
execute if entity @s[scores={Dialog=1..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=shrimplips,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..199}] at @e[tag=shrimplips,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=shrimplips,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1949 51 -564 20 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips_battle.1"}]}
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips_battle.2"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips_battle.3"}]}
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips","color":"green"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips_battle.4"}]}
tellraw @s[scores={Dialog=160}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips","color":"green"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips_battle.5"}]}
execute if entity @s[scores={Dialog=200}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -540
execute if entity @s[scores={Dialog=200}] run tag @e[tag=shrimplips,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=201..298}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=298}] run tag @e[tag=shrimplips,tag=this_dialog,limit=1] add dead
tellraw @s[scores={Dialog=240}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips_battle.6"}]}
tag @s[scores={Dialog=298}] remove dialog_infinity_vs_shrimplips_battle
scoreboard players set @s[scores={Dialog=298}] MusicType 1
scoreboard players set @s[scores={Dialog=298}] Music 0
scoreboard players reset @s[scores={Dialog=298}] DialogNr
scoreboard players set @s[scores={Dialog=298}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog