scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:wave_1/story_progression vs_squidguts
stopsound @s[scores={Dialog=1}] music
playsound medabots_server:music.entity.rubberobo_intro music @s[scores={Dialog=1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 62
execute if entity @s[scores={Dialog=1}] positioned -1999 51 -560 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1998 51 -564 run function medabots_server:spawn_entities/cutscene/squidguts
execute if entity @s[scores={Dialog=1..857}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @e[tag=squidguts,tag=this_dialog,limit=1] feet run teleport @e[distance=..0.1,tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=squidguts,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 ~
teleport @s[scores={Dialog=1}] -1997 51 -560 -180 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_squidguts.1"}]}
execute if entity @s[scores={Dialog=24..786}] at @e[tag=squidguts,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=squidguts,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts.2"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts.3"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts.4"}]}
tellraw @s[scores={Dialog=176}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_squidguts.5"}]}
tellraw @s[scores={Dialog=184}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_squidguts.6"}]}
tellraw @s[scores={Dialog=256}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts.7"}]}
tellraw @s[scores={Dialog=288}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts.8"}]}
tellraw @s[scores={Dialog=328}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts.9"}]}
tellraw @s[scores={Dialog=352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_squidguts.10"}]}
tellraw @s[scores={Dialog=360}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_squidguts.11"}]}
tellraw @s[scores={Dialog=376}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts.12"}]}
tellraw @s[scores={Dialog=400}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts.13"}]}
tellraw @s[scores={Dialog=432}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts.14"}]}
tellraw @s[scores={Dialog=480}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts.15"}]}
tellraw @s[scores={Dialog=536}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts.16"}]}
tellraw @s[scores={Dialog=592}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_squidguts.17"}]}
tellraw @s[scores={Dialog=600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_squidguts.18"}]}
tellraw @s[scores={Dialog=664}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts.19"}]}
execute if entity @s[scores={Dialog=786}] as @e[tag=squidguts,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 ~
execute if entity @s[scores={Dialog=787..866}] as @e[tag=squidguts,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=866}] run tag @e[tag=squidguts,tag=this_dialog,limit=1] add dead
tellraw @s[scores={Dialog=826}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_squidguts.20"}]}
execute if entity @s[scores={Dialog=858..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=858}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_squidguts.21","with":[{"selector":"@s"}]}]}
tag @s[scores={Dialog=898}] remove dialog_infinity_vs_squidguts
stopsound @s[scores={Dialog=898}] music
scoreboard players set @s[scores={Dialog=898}] MusicType 1
scoreboard players set @s[scores={Dialog=898}] Music 0
scoreboard players reset @s[scores={Dialog=898}] DialogNr
scoreboard players set @s[scores={Dialog=898}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.rubberobo music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 744