execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
scoreboard players set @s[scores={Dialog=1}] MusicType 35
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned 24 59 27 run function medabots_server:spawn_entities/cutscene/totalizer
execute if entity @s[scores={Dialog=1}] positioned 22 59 27 run function medabots_server:spawn_entities/cutscene/sloan
execute if entity @s[scores={Dialog=1..59}] at @e[tag=sloan,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=sloan,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..59}] at @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] 23 59 24 0 0 
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_sloan_battle.1"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.totalizer","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_sloan_battle.2"}]}
execute if entity @s[scores={Dialog=60}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 23 59 47
execute if entity @s[scores={Dialog=60}] run tag @e[tag=sloan,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=60}] as @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 23 59 47
execute if entity @s[scores={Dialog=60}] run tag @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] add walking
scoreboard players set @s[scores={Dialog=154}] KillStreak 0
scoreboard players set @s[scores={Dialog=154}] MusicType 1
scoreboard players set @s[scores={Dialog=154}] Music 0
tag @s[scores={Dialog=154}] remove dialog_infinity_postgame_sloan_battle
scoreboard players reset @s[scores={Dialog=154}] DialogNr
scoreboard players set @s[scores={Dialog=154}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog