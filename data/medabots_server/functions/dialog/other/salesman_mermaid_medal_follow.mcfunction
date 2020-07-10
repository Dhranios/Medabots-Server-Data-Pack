execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other salesman_mermaid_medal_follow
scoreboard players set @s[scores={Dialog=1}] MusicType 32
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -465 55 -34 run function medabots_server:spawn_entities/cutscene/seaslug
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_follow.1"}]}
execute if entity @s[scores={Dialog=1}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -401 55 -52
execute if entity @s[scores={Dialog=2}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=162}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -318 55 -29
execute if entity @s[scores={Dialog=362}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -305 55 0
execute if entity @s[scores={Dialog=438}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -323 55 0
execute if entity @s[scores={Dialog=480}] run setblock -324 53 0 minecraft:redstone_block
execute if entity @s[scores={Dialog=481}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -325 55 -2
execute if entity @s[scores={Dialog=487}] run setblock -324 53 0 minecraft:dirt
tag @s[scores={Dialog=487}] remove dialog_other_salesman_mermaid_medal_follow
advancement grant @s[scores={Dialog=487}] only medabots_server:main/salesman_quest/mermaid_medal follow_seaslug
scoreboard players set @s[scores={Dialog=487}] MusicType 1
scoreboard players set @s[scores={Dialog=487}] Music 0
scoreboard players reset @s[scores={Dialog=487}] DialogNr
scoreboard players set @s[scores={Dialog=487}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog