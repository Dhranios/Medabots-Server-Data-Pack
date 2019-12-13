execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
scoreboard players set @s[scores={Dialog=1}] MusicType 37
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1949 51 -561 run function medabots_server:spawn_entities/cutscene/erika
execute if entity @s[scores={Dialog=1..71},tag=!give_medal] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..307},tag=give_medal] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tag @s[scores={Dialog=1},advancements={medabots_server:get_all_medabots/wave_1/alien_medal=false}] add give_medal
teleport @s[scores={Dialog=1}] -1949 51 -564 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_erika_battle.1"}]}
execute if entity @s[scores={Dialog=72},tag=!give_medal] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -540
execute if entity @s[scores={Dialog=72},tag=!give_medal] run tag @e[tag=erika,tag=this_dialog,limit=1] add walking
scoreboard players set @s[scores={Dialog=167},tag=!give_medal] KillStreak 0
scoreboard players set @s[scores={Dialog=167},tag=!give_medal] MusicType 1
scoreboard players set @s[scores={Dialog=167},tag=!give_medal] Music 0
tag @s[scores={Dialog=167},tag=!give_medal] remove dialog_infinity_postgame_erika_battle
scoreboard players reset @s[scores={Dialog=167},tag=!give_medal] DialogNr
scoreboard players set @s[scores={Dialog=167},tag=!give_medal] Dialog 0
tellraw @s[scores={Dialog=72},tag=give_medal] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_erika_battle.2"}]}
tellraw @s[scores={Dialog=176},tag=give_medal] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_erika_battle.3"}]}
tellraw @s[scores={Dialog=200}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_erika_battle.4"}]}
tellraw @s[scores={Dialog=208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_erika_battle.5"}]}
execute if entity @s[scores={Dialog=288},tag=!already_gave_items] run function medabots_server:give_items/medal/alien
tag @s[scores={Dialog=288}] add already_gave_items
execute if entity @s[scores={Dialog=308}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -540
execute if entity @s[scores={Dialog=308}] run tag @e[tag=erika,tag=this_dialog,limit=1] add walking
scoreboard players set @s[scores={Dialog=403}] KillStreak 0
scoreboard players set @s[scores={Dialog=403}] MusicType 1
scoreboard players set @s[scores={Dialog=403}] Music 0
tag @s[scores={Dialog=403}] remove dialog_infinity_postgame_erika_battle
tag @s[scores={Dialog=403}] remove already_gave_items
tag @s[scores={Dialog=403}] remove give_medal
scoreboard players reset @s[scores={Dialog=403}] DialogNr
scoreboard players set @s[scores={Dialog=403}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog