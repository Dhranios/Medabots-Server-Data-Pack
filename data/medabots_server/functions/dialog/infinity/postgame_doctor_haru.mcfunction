execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
scoreboard players set @s[scores={Dialog=1}] MusicType 43
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned 20 59 18 run function medabots_server:spawn_entities/cutscene/doctor_haru
execute if entity @s[scores={Dialog=1..103}] at @e[tag=doctor_haru,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=doctor_haru,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] 20 59 21 -180 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_doctor_haru.1","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_doctor_haru.2"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_doctor_haru.3"}]}
execute if entity @s[scores={Dialog=104}] as @e[tag=doctor_haru,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 19 59 0
execute if entity @s[scores={Dialog=104}] run tag @e[tag=doctor_haru,tag=!medabot_model,tag=this_dialog,limit=1] add walking
scoreboard players set @s[scores={Dialog=188}] KillStreak 3
scoreboard players set @s[scores={Dialog=188}] MusicType 1
scoreboard players set @s[scores={Dialog=188}] Music 0
tag @s[scores={Dialog=188}] remove dialog_infinity_postgame_doctor_haru
scoreboard players reset @s[scores={Dialog=188}] DialogNr
scoreboard players set @s[scores={Dialog=188}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog