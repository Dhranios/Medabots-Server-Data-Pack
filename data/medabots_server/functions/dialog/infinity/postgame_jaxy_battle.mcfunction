execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
scoreboard players set @s[scores={Dialog=1}] MusicType 41
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1997 51 -557 run function medabots_server:spawn_entities/cutscene/jaxy
execute if entity @s[scores={Dialog=1..143}] at @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1997 51 -560 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_jaxy_battle.1"}]}
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_jaxy_battle.2"}]}
execute if entity @s[scores={Dialog=144}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1997 51 -540
execute if entity @s[scores={Dialog=144}] run tag @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=145..}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
scoreboard players set @s[scores={Dialog=224}] KillStreak 0
scoreboard players set @s[scores={Dialog=224}] MusicType 1
scoreboard players set @s[scores={Dialog=224}] Music 0
tag @s[scores={Dialog=224}] remove dialog_infinity_postgame_jaxy_battle
scoreboard players reset @s[scores={Dialog=224}] DialogNr
scoreboard players set @s[scores={Dialog=224}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog