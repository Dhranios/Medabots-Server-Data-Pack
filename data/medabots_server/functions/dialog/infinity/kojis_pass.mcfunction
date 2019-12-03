execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity kojis_pass
scoreboard players set @s[scores={Dialog=1}] MusicType 38
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -341 55 -74 run function medabots_server:spawn_entities/cutscene/roks
execute if entity @s[scores={Dialog=1}] positioned -343 55 -75 run function medabots_server:spawn_entities/cutscene/koji
execute if entity @s[scores={Dialog=1..}] at @e[tag=koji,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=koji,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..}] at @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=koji,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_pass.1"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_pass.2"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_pass.3"}]}
tellraw @s[scores={Dialog=112}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_pass.4"}]}
advancement grant @s[scores={Dialog=144}] only medabots_server:special_items/passes/snowfield_d
tellraw @s[scores={Dialog=164}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_pass.5"}]}
tellraw @s[scores={Dialog=220}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_pass.6"}]}
tag @s[scores={Dialog=252}] remove dialog_infinity_kojis_pass
scoreboard players set @s[scores={Dialog=252}] MusicType 1
scoreboard players set @s[scores={Dialog=252}] Music 0
scoreboard players reset @s[scores={Dialog=252}] DialogNr
scoreboard players set @s[scores={Dialog=252}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog