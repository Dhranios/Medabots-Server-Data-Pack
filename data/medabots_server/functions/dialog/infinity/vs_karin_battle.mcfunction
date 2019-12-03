execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity vs_karin_battle
scoreboard players set @s[scores={Dialog=1}] MusicType 36
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1999 51 -605 run function medabots_server:spawn_entities/cutscene/karin
execute if entity @s[scores={Dialog=1}] positioned -2007 51 -620 run function medabots_server:spawn_entities/cutscene/koji
execute if entity @s[scores={Dialog=1}] positioned -2007 51 -612 run function medabots_server:spawn_entities/cutscene/rubberobo
execute if entity @s[scores={Dialog=1..63}] at @e[tag=karin,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=karin,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=64..135}] as @e[tag=karin,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=136..515}] at @e[tag=karin,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=karin,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1999 51 -608 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.vs_karin_battle.1","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.vs_karin_battle.2"}]}
scoreboard players set @s[scores={Dialog=40}] MusicType 32
scoreboard players set @s[scores={Dialog=40}] Music 0
execute if entity @s[scores={Dialog=1}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1999 51 -585
execute if entity @s[scores={Dialog=1}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=1..130}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=130}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ -100 ~
execute if entity @s[scores={Dialog=130}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] add dead
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.infinity.vs_karin_battle.3"}]}
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.infinity.vs_karin_battle.4"}]}
tellraw @s[scores={Dialog=104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.vs_karin_battle.5"}]}
execute if entity @s[scores={Dialog=1}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1999 51 -585
execute if entity @s[scores={Dialog=1}] run tag @e[tag=koji,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1..170}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=170}] run tag @e[tag=koji,tag=this_dialog,limit=1] add dead
scoreboard players set @s[scores={Dialog=136}] MusicType 36
scoreboard players set @s[scores={Dialog=136}] Music 0
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.vs_karin_battle.6"}]}
tellraw @s[scores={Dialog=200}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.vs_karin_battle.7"}]}
tellraw @s[scores={Dialog=256}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.vs_karin_battle.8"}]}
tellraw @s[scores={Dialog=272}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.vs_karin_battle.9"}]}
tellraw @s[scores={Dialog=304}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.vs_karin_battle.10"}]}
tellraw @s[scores={Dialog=324}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.vs_karin_battle.11"}]}
tellraw @s[scores={Dialog=388}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.vs_karin_battle.12"}]}
tellraw @s[scores={Dialog=460}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.vs_karin_battle.13"}]}
tellraw @s[scores={Dialog=492}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.vs_karin_battle.14"}]}
execute if entity @s[scores={Dialog=516}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1999 51 -585
execute if entity @s[scores={Dialog=516}] run tag @e[tag=karin,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=517..}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tag @s[scores={Dialog=610}] remove dialog_infinity_vs_karin_battle
scoreboard players set @s[scores={Dialog=610}] MusicType 1
scoreboard players set @s[scores={Dialog=610}] Music 0
scoreboard players reset @s[scores={Dialog=610}] DialogNr
scoreboard players set @s[scores={Dialog=610}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog