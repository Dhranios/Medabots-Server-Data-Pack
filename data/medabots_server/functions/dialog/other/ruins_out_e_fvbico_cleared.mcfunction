execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
scoreboard players set @s[scores={Dialog=1}] MusicType 32
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other ruins_out_e_fvbico_cleared
execute if entity @s[scores={Dialog=1}] positioned 28 59 49 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned 32 59 51 run function medabots_server:spawn_entities/cutscene/max
execute if entity @s[scores={Dialog=1}] positioned 29 59 53 run function medabots_server:spawn_entities/cutscene/gillgirl
execute if entity @s[scores={Dialog=1}] positioned 32 59 54 run function medabots_server:spawn_entities/cutscene/seaslug
execute if entity @s[scores={Dialog=1}] positioned 30 59 65 run function medabots_server:spawn_entities/cutscene/shrimplips
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=seaslug,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=seaslug,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..47}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s facing entity @e[tag=shrimplips,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..47}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s facing entity @e[tag=shrimplips,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 30 59 93
execute if entity @s[scores={Dialog=1}] run tag @e[tag=shrimplips,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=67}] run tag @e[tag=shrimplips,tag=this_dialog,limit=1] add dead
teleport @s[scores={Dialog=1}] 30 59 47 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico_cleared.1"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico_cleared.2"}]}
execute if entity @s[scores={Dialog=48}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 30 59 93
execute if entity @s[scores={Dialog=48}] run tag @e[tag=gillgirl,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=142}] run tag @e[tag=gillgirl,tag=this_dialog,limit=1] add dead
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico_cleared.3"}]}
execute if entity @s[scores={Dialog=128}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s facing entity @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=128}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico_cleared.4"}]}
tellraw @s[scores={Dialog=148}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico_cleared.5"}]}
tellraw @s[scores={Dialog=188}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico_cleared.6"}]}
tellraw @s[scores={Dialog=212}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico_cleared.7"}]}
tellraw @s[scores={Dialog=232}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico_cleared.8"}]}
execute if entity @s[scores={Dialog=264}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -135 ~
tellraw @s[scores={Dialog=264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico_cleared.9"}]}
execute if entity @s[scores={Dialog=288}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -120 ~
execute if entity @s[scores={Dialog=288}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -95 ~
tellraw @s[scores={Dialog=288}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico_cleared.10"}]}
execute if entity @s[scores={Dialog=296}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 30 59 93
execute if entity @s[scores={Dialog=296}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=390}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] add dead
tellraw @s[scores={Dialog=296}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico_cleared.11"}]}
execute if entity @s[scores={Dialog=304..390}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=seaslug,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=304..335}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=seaslug,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=304}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico_cleared.12"}]}
tellraw @s[scores={Dialog=312}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico_cleared.13"}]}
execute if entity @s[scores={Dialog=336}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 30 59 93
execute if entity @s[scores={Dialog=336}] run tag @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=437}] run tag @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] add dead
tellraw @s[scores={Dialog=356}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico_cleared.14"}]}
tellraw @s[scores={Dialog=436}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico_cleared.15"}]}
tag @s[scores={Dialog=484}] remove dialog_other_ruins_out_e_fvbico_cleared
scoreboard players set @s[scores={Dialog=484}] MusicType 1
scoreboard players set @s[scores={Dialog=484}] Music 0
scoreboard players reset @s[scores={Dialog=484}] DialogNr
scoreboard players set @s[scores={Dialog=484}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog