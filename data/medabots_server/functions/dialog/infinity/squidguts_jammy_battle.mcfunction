execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity squidguts_jammy_battle
scoreboard players set @s[scores={Dialog=1}] MusicType 32
scoreboard players set @s[scores={Dialog=1}] Music 0
scoreboard players set @s[scores={Dialog=1}] Jukebox 0
execute if entity @s[scores={Dialog=1}] positioned -1997 51 -607 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -2000 51 -601 run function medabots_server:spawn_entities/cutscene/squidguts
execute if entity @s[scores={Dialog=1..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=squidguts,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..499}] at @e[tag=squidguts,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=squidguts,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1999 51 -608 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.1"}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.2"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.3"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.4"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.5"}]}
tellraw @s[scores={Dialog=192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.6"}]}
tellraw @s[scores={Dialog=200}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.7"}]}
tellraw @s[scores={Dialog=256}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.8"}]}
tellraw @s[scores={Dialog=304}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.9"}]}
tellraw @s[scores={Dialog=400}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.10"}]}
tellraw @s[scores={Dialog=416}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.11"}]}
scoreboard players set @s[scores={Dialog=480}] MusicType 33
scoreboard players set @s[scores={Dialog=480}] Music 0
execute if entity @s[scores={Dialog=480}] positioned -1999 51 -585 run function medabots_server:spawn_entities/cutscene/select_corps
execute if entity @s[scores={Dialog=480}] as @e[tag=select_corps,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1998 51 -601
execute if entity @s[scores={Dialog=480}] run tag @e[tag=select_corps,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=481..555}] as @e[tag=select_corps,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=555}] run tag @e[tag=select_corps,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=555..1127}] as @e[tag=select_corps,tag=this_dialog,limit=1] at @s facing entity @e[tag=squidguts,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=500..1127}] as @e[tag=squidguts,tag=this_dialog,limit=1] at @s facing entity @e[tag=select_corps,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=480}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.12"}]}
tellraw @s[scores={Dialog=512}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.13"}]}
tellraw @s[scores={Dialog=520}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.14"}]}
tellraw @s[scores={Dialog=544}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.15"}]}
tellraw @s[scores={Dialog=600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.16"}]}
tellraw @s[scores={Dialog=664}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.17"}]}
tellraw @s[scores={Dialog=728}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.18"}]}
tellraw @s[scores={Dialog=744}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.19"}]}
tellraw @s[scores={Dialog=800}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.20"}]}
tellraw @s[scores={Dialog=848}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.21"}]}
tellraw @s[scores={Dialog=872}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.22"}]}
tellraw @s[scores={Dialog=896}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.23"}]}
tellraw @s[scores={Dialog=920}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.24"}]}
tellraw @s[scores={Dialog=944}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.25"}]}
tellraw @s[scores={Dialog=968}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.26"}]}
tellraw @s[scores={Dialog=976}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.27"}]}
tellraw @s[scores={Dialog=1016}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.28"}]}
tellraw @s[scores={Dialog=1040}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.29"}]}
execute if entity @s[scores={Dialog=1128}] as @e[tag=squidguts,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1999 51 -585
execute if entity @s[scores={Dialog=1128}] run tag @e[tag=squidguts,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1129..}] as @e[tag=squidguts,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1128}] as @e[tag=select_corps,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1999 51 -585
execute if entity @s[scores={Dialog=1128}] run tag @e[tag=select_corps,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1129..}] as @e[tag=select_corps,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tellraw @s[scores={Dialog=1148}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.squidguts_jammy_battle.30"}]}
tag @s[scores={Dialog=1198}] remove dialog_infinity_squidguts_jammy_battle
scoreboard players set @s[scores={Dialog=1198}] MusicType 1
scoreboard players set @s[scores={Dialog=1198}] Music 0
scoreboard players reset @s[scores={Dialog=1198}] DialogNr
scoreboard players set @s[scores={Dialog=1198}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog