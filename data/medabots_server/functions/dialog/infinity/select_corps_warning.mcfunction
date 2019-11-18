execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity select_corps_warning
scoreboard players set @s[scores={Dialog=1}] MusicType 33
scoreboard players set @s[scores={Dialog=1}] Music 0
scoreboard players set @s[scores={Dialog=1}] Jukebox 0
execute if entity @s[scores={Dialog=1}] positioned -394 55 -52 run function medabots_server:spawn_entities/cutscene/select_corps
teleport @s[x=-394,y=55,z=-52,distance=..4] -399 55 -52
execute if entity @s[scores={Dialog=1}] as @e[tag=select_corps,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 ~
execute if entity @s[scores={Dialog=1}] run tag @e[tag=select_corps,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2..81}] as @e[tag=select_corps,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=82}] as @e[tag=select_corps,tag=this_dialog,limit=1] run tag @s remove walking
execute if entity @s[scores={Dialog=82..255}] at @e[tag=select_corps,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=select_corps,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.select_corps_warning.1"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.select_corps_warning.2"}]}
tellraw @s[scores={Dialog=120}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.select_corps_warning.3"}]}
tellraw @s[scores={Dialog=128}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.select_corps_warning.4"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.select_corps_warning.5"}]}
tellraw @s[scores={Dialog=200}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.select_corps_warning.6"}]}
execute if entity @s[scores={Dialog=256}] as @e[tag=select_corps,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=256}] run tag @e[tag=select_corps,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=257..}] as @e[tag=select_corps,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tag @s[scores={Dialog=297}] remove dialog_infinity_select_corps_warning
scoreboard players set @s[scores={Dialog=297}] MusicType 1
scoreboard players set @s[scores={Dialog=297}] Music 0
scoreboard players reset @s[scores={Dialog=297}] DialogNr
scoreboard players set @s[scores={Dialog=297}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog
