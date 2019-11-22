execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity vs_seaslug_battle
scoreboard players set @s[scores={Dialog=1}] MusicType 32
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1995 51 -559 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1997 51 -556 run function medabots_server:spawn_entities/cutscene/seaslug
execute if entity @s[scores={Dialog=1..411}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=seaslug,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..335}] at @e[tag=seaslug,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=seaslug,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1997 51 -560 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.2"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.3"}]}
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.4"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.5"}]}
tellraw @s[scores={Dialog=192}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.6"}]}
tellraw @s[scores={Dialog=224}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.7"}]}
tellraw @s[scores={Dialog=240}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.8"}]}
tellraw @s[scores={Dialog=264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.9"}]}
tellraw @s[scores={Dialog=280}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.10"}]}
tellraw @s[scores={Dialog=296}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.11"}]}
tellraw @s[scores={Dialog=312}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.12"}]}
execute if entity @s[scores={Dialog=336}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1997 51 -540
execute if entity @s[scores={Dialog=336}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=337..412}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=412}] run kill @e[tag=seaslug,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=336}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.13"}]}
tellraw @s[scores={Dialog=352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.14"}]}
tellraw @s[scores={Dialog=384}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.15"}]}
tellraw @s[scores={Dialog=408}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.16"}]}
tellraw @s[scores={Dialog=416}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.17"}]}
execute if entity @s[scores={Dialog=440}] positioned -1997 51 -540 run function medabots_server:spawn_entities/cutscene/seaslug
execute if entity @s[scores={Dialog=440}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1997 51 -556
execute if entity @s[scores={Dialog=440}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=441..516}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=516}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=516..695}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s facing entity @e[tag=select_corps,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=440..715}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=seaslug,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=440}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.18"}]}
scoreboard players set @s[scores={Dialog=464}] MusicType 33
scoreboard players set @s[scores={Dialog=464}] Music 0
execute if entity @s[scores={Dialog=464}] positioned -1997 51 -540 run function medabots_server:spawn_entities/cutscene/select_corps
execute if entity @s[scores={Dialog=464}] as @e[tag=select_corps,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1995 51 -556
execute if entity @s[scores={Dialog=464}] run tag @e[tag=select_corps,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=465..540}] as @e[tag=select_corps,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=540}] run tag @e[tag=select_corps,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=540..695}] as @e[tag=select_corps,tag=this_dialog,limit=1] at @s facing entity @e[tag=seaslug,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=464}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.19"}]}
tellraw @s[scores={Dialog=496}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.20"}]}
tellraw @s[scores={Dialog=512}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.21"}]}
tellraw @s[scores={Dialog=544}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.22"}]}
tellraw @s[scores={Dialog=568}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.23"}]}
tellraw @s[scores={Dialog=616}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.24"}]}
tellraw @s[scores={Dialog=656}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.25"}]}
tellraw @s[scores={Dialog=680}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.26"}]}
execute if entity @s[scores={Dialog=696}] as @e[tag=select_corps,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1997 51 -540
execute if entity @s[scores={Dialog=696}] run tag @e[tag=select_corps,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=697..772}] as @e[tag=select_corps,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=772}] run kill @e[tag=select_corps,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=696}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1997 51 -540
execute if entity @s[scores={Dialog=696}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=697..772}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=772}] run kill @e[tag=seaslug,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=716..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=716}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.27"}]}
tellraw @s[scores={Dialog=780}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.28"}]}
tellraw @s[scores={Dialog=796}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.29"}]}
tellraw @s[scores={Dialog=836}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_seaslug_battle.30"}]}
tag @s[scores={Dialog=908}] remove dialog_infinity_vs_seaslug_battle
scoreboard players set @s[scores={Dialog=908}] MusicType 1
scoreboard players set @s[scores={Dialog=908}] Music 0
scoreboard players reset @s[scores={Dialog=908}] DialogNr
scoreboard players set @s[scores={Dialog=908}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog