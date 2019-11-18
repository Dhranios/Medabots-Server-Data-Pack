execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity vs_screws_battle
scoreboard players set @s[scores={Dialog=1}] MusicType 35
scoreboard players set @s[scores={Dialog=1}] Music 0
scoreboard players set @s[scores={Dialog=1}] Jukebox 0
execute if entity @s[scores={Dialog=1}] positioned -1999 51 -559 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1999 51 -556 run function medabots_server:spawn_entities/cutscene/spyke
execute if entity @s[scores={Dialog=1}] positioned -1995 51 -556 run function medabots_server:spawn_entities/cutscene/sloan
execute if entity @s[scores={Dialog=1}] positioned -1997 51 -556 run function medabots_server:spawn_entities/cutscene/samantha
execute if entity @s[scores={Dialog=1..234}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=samantha,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..171}] at @e[tag=spyke,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=spyke,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..171}] at @e[tag=sloan,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=sloan,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..159}] at @e[tag=samantha,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=samantha,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1997 51 -560 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws_battle.1"}]}
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_screws_battle.2"}]}
tellraw @s[scores={Dialog=104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws_battle.3"}]}
tellraw @s[scores={Dialog=112}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws_battle.4","with":[{"selector":"@s"}]}]}
execute if entity @s[scores={Dialog=160}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1997 51 -540
execute if entity @s[scores={Dialog=160}] run tag @e[tag=samantha,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=161..235}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=235}] run kill @e[tag=samantha,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=132}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.vs_screws_battle.5"}]}
tellraw @s[scores={Dialog=172}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.vs_screws_battle.6"}]}
execute if entity @s[scores={Dialog=172}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1997 51 -540
execute if entity @s[scores={Dialog=172}] run tag @e[tag=spyke,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=173..247}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=247}] run kill @e[tag=spyke,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=172}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1997 51 -540
execute if entity @s[scores={Dialog=172}] run tag @e[tag=sloan,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=173..247}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=247}] run kill @e[tag=sloan,tag=this_dialog,limit=1]
scoreboard players set @s[scores={Dialog=248}] MusicType 1
scoreboard players set @s[scores={Dialog=248}] Music 0
tellraw @s[scores={Dialog=248}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_screws_battle.7"}]}
tellraw @s[scores={Dialog=272}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_screws_battle.8"}]}
tag @s[scores={Dialog=288}] remove dialog_infinity_vs_screws_battle
scoreboard players reset @s[scores={Dialog=288}] DialogNr
scoreboard players set @s[scores={Dialog=288}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog