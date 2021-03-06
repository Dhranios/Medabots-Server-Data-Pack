execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
scoreboard players set @s[scores={Dialog=1}] MusicType 35
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned 24 59 27 run function medabots_server:spawn_entities/cutscene/peppercat
execute if entity @s[scores={Dialog=1}] positioned 22 59 27 run function medabots_server:spawn_entities/cutscene/samantha
execute if entity @s[scores={Dialog=1}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=samantha,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=80..151}] at @e[tag=samantha,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=samantha,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=80..151}] at @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] 23 59 24 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_samantha_battle.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_samantha_battle.2"}]}
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_samantha_battle.3"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_samantha_battle.4"}]}
execute if entity @s[scores={Dialog=152}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 23 59 47
execute if entity @s[scores={Dialog=152}] run tag @e[tag=samantha,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=152}] as @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 23 59 47
execute if entity @s[scores={Dialog=152}] run tag @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] add walking
scoreboard players set @s[scores={Dialog=246}] KillStreak 0
scoreboard players set @s[scores={Dialog=246}] MusicType 1
scoreboard players set @s[scores={Dialog=246}] Music 0
tag @s[scores={Dialog=246}] remove dialog_infinity_postgame_samantha_battle
scoreboard players reset @s[scores={Dialog=246}] DialogNr
scoreboard players set @s[scores={Dialog=246}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog