execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity squidguts_jammy
scoreboard players set @s[scores={Dialog=1}] MusicType 32
scoreboard players set @s[scores={Dialog=1}] Music 0
scoreboard players set @s[scores={Dialog=1}] Jukebox 0
execute if entity @s[scores={Dialog=1}] positioned -2001 51 -609 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1999 51 -613 run function medabots_server:spawn_entities/cutscene/squidguts
execute if entity @s[scores={Dialog=1..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=squidguts,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..711}] at @e[tag=squidguts,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=squidguts,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1999 51 -608 -180 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy.2"}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy.3"}]}
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy.4"}]}
tellraw @s[scores={Dialog=144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy.5"}]}
tellraw @s[scores={Dialog=200}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy.6"}]}
tellraw @s[scores={Dialog=208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy.7"}]}
tellraw @s[scores={Dialog=256}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy.8"}]}
tellraw @s[scores={Dialog=264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy.9"}]}
tellraw @s[scores={Dialog=272}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy.10"}]}
tellraw @s[scores={Dialog=352}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy.11"}]}
tellraw @s[scores={Dialog=400}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy.12"}]}
tellraw @s[scores={Dialog=456}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy.13"}]}
tellraw @s[scores={Dialog=520}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy.14"}]}
tellraw @s[scores={Dialog=568}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy.15"}]}
tellraw @s[scores={Dialog=608}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy.16"}]}
execute if entity @s[scores={Dialog=712}] as @e[tag=squidguts,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -2000 51 -632
execute if entity @s[scores={Dialog=712}] run tag @e[tag=squidguts,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=713..}] as @e[tag=squidguts,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tag @s[scores={Dialog=802}] remove dialog_infinity_squidguts_jammy
scoreboard players set @s[scores={Dialog=802}] MusicType 1
scoreboard players set @s[scores={Dialog=802}] Music 0
scoreboard players reset @s[scores={Dialog=802}] DialogNr
scoreboard players set @s[scores={Dialog=802}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog