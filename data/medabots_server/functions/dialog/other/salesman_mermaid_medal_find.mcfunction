execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other salesman_mermaid_medal_find
scoreboard players set @s[scores={Dialog=1}] MusicType 32
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned 46 59 43 run function medabots_server:spawn_entities/cutscene/seaslug
teleport @s[scores={Dialog=1}] 47 59 47 170 0
execute if entity @s[scores={Dialog=1..321}] at @e[tag=seaslug,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=seaslug,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_find.1"}]}
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_find.2"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_find.3"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_find.4"}]}
tellraw @s[scores={Dialog=112}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_find.5"}]}
tellraw @s[scores={Dialog=178}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_find.6"}]}
tellraw @s[scores={Dialog=218}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_find.7"}]}
tellraw @s[scores={Dialog=250}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_find.8"}]}
tellraw @s[scores={Dialog=298}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_find.9"}]}
tellraw @s[scores={Dialog=322}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_find.10"}]}
execute if entity @s[scores={Dialog=322}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 47 59 93
execute if entity @s[scores={Dialog=322}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] add running
tag @s[scores={Dialog=439}] remove dialog_other_salesman_mermaid_medal_find
advancement grant @s[scores={Dialog=439}] only medabots_server:main/salesman_quest/mermaid_medal find_seaslug
scoreboard players set @s[scores={Dialog=439}] MusicType 1
scoreboard players set @s[scores={Dialog=439}] Music 0
scoreboard players reset @s[scores={Dialog=439}] DialogNr
scoreboard players set @s[scores={Dialog=439}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog