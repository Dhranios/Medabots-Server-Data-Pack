execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity flame_tisala_is_yours
scoreboard players set @s[scores={Dialog=1}] MusicType 43
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1}] positioned -1728 50 -574 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1727 50 -572 run function medabots_server:spawn_entities/cutscene/doctor_haru
execute if entity @s[scores={Dialog=1..243}] at @e[tag=doctor_haru,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=doctor_haru,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1727 50 -575 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.flame_tisala_is_yours.1"}]}
tellraw @s[scores={Dialog=20}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.flame_tisala_is_yours.2"}]}
tellraw @s[scores={Dialog=36}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.flame_tisala_is_yours.3"}]}
tellraw @s[scores={Dialog=76}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.flame_tisala_is_yours.4"}]}
tellraw @s[scores={Dialog=100}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.flame_tisala_is_yours.5"}]}
tellraw @s[scores={Dialog=116}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.flame_tisala_is_yours.6"}]}
tellraw @s[scores={Dialog=148}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.flame_tisala_is_yours.7"}]}
tellraw @s[scores={Dialog=180}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.flame_tisala_is_yours.8"}]}
tellraw @s[scores={Dialog=212}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.flame_tisala_is_yours.9"}]}
execute if entity @s[scores={Dialog=244}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1727 50 -542
execute if entity @s[scores={Dialog=244}] run tag @e[tag=doctor_haru,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=245..}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tellraw @s[scores={Dialog=284}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.flame_tisala_is_yours.10"}]}
tellraw @s[scores={Dialog=324}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.flame_tisala_is_yours.11"}]}
scoreboard players set @s[scores={Dialog=385}] MusicType 1
scoreboard players set @s[scores={Dialog=385}] Music 0
tag @s[scores={Dialog=385}] remove dialog_infinity_flame_tisala_is_yours
scoreboard players reset @s[scores={Dialog=385}] DialogNr
scoreboard players set @s[scores={Dialog=385}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog