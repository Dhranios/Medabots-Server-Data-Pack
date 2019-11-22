execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
scoreboard players set @s[scores={Dialog=1}] MusicType 41
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1997 51 -563 run function medabots_server:spawn_entities/cutscene/jaxy
execute if entity @s[scores={Dialog=1..95}] at @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1997 51 -560 -180 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.postgame_jaxy.1","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.postgame_jaxy.2"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.postgame_jaxy.3"}]}
execute if entity @s[scores={Dialog=96}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1998 51 -581
execute if entity @s[scores={Dialog=96}] run tag @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=97..}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
scoreboard players set @s[scores={Dialog=180}] KillStreak 2
scoreboard players set @s[scores={Dialog=180}] MusicType 1
scoreboard players set @s[scores={Dialog=180}] Music 0
tag @s[scores={Dialog=180}] remove dialog_infinity_postgame_jaxy
scoreboard players reset @s[scores={Dialog=180}] DialogNr
scoreboard players set @s[scores={Dialog=180}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog