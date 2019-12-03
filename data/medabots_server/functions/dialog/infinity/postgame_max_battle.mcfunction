execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
scoreboard players set @s[scores={Dialog=1}] MusicType 39
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1949 51 -561 run function medabots_server:spawn_entities/cutscene/max
execute if entity @s[scores={Dialog=1..119}] at @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1949 51 -564 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_max_battle.1"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_max_battle.2"}]}
tellraw @s[scores={Dialog=104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_max_battle.3"}]}
execute if entity @s[scores={Dialog=120}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -540
execute if entity @s[scores={Dialog=120}] run tag @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=121..}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
scoreboard players set @s[scores={Dialog=215}] KillStreak 0
scoreboard players set @s[scores={Dialog=215}] MusicType 1
scoreboard players set @s[scores={Dialog=215}] Music 0
tag @s[scores={Dialog=215}] remove dialog_infinity_postgame_max_battle
scoreboard players reset @s[scores={Dialog=215}] DialogNr
scoreboard players set @s[scores={Dialog=215}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog