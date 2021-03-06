execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity the_final_stage
scoreboard players set @s[scores={Dialog=1}] MusicType 38
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned 32 59 31 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned 30 59 27 run function medabots_server:spawn_entities/cutscene/roks
execute if entity @s[scores={Dialog=1}] positioned 31 59 27 run function medabots_server:spawn_entities/cutscene/koji
execute if entity @s[scores={Dialog=1..247}] at @e[tag=koji,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=koji,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] 31 59 31 -180 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_stage.1"}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_stage.2"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_stage.3"}]}
tellraw @s[scores={Dialog=152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_stage.4"}]}
tellraw @s[scores={Dialog=216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_stage.5"}]}
execute if entity @s[scores={Dialog=248}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 30 59 0
execute if entity @s[scores={Dialog=248}] run tag @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=248}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 30 59 0
execute if entity @s[scores={Dialog=248}] run tag @e[tag=koji,tag=this_dialog,limit=1] add walking
tag @s[scores={Dialog=375}] remove dialog_infinity_the_final_stage
scoreboard players set @s[scores={Dialog=375}] MusicType 1
scoreboard players set @s[scores={Dialog=375}] Music 0
scoreboard players reset @s[scores={Dialog=375}] DialogNr
scoreboard players set @s[scores={Dialog=375}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog