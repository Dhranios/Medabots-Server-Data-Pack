execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other salesman_mermaid_medal_burried
scoreboard players set @s[scores={Dialog=1}] MusicType 32
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned 47 59 45 run function medabots_server:spawn_entities/cutscene/seaslug
teleport @s[scores={Dialog=1}] 47 59 46 -180 0
execute if entity @s[scores={Dialog=1..631}] at @e[tag=seaslug,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=seaslug,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_burried.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_burried.2"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_burried.3"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_burried.4"}]}
tellraw @s[scores={Dialog=112}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_burried.5"}]}
tellraw @s[scores={Dialog=144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_burried.6"}]}
tellraw @s[scores={Dialog=216}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_burried.7"}]}
tellraw @s[scores={Dialog=224}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_burried.8"}]}
tellraw @s[scores={Dialog=344}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_burried.9"}]}
tellraw @s[scores={Dialog=368}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_burried.10"}]}
tellraw @s[scores={Dialog=384}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_burried.11"}]}
tellraw @s[scores={Dialog=392}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_burried.12"}]}
tellraw @s[scores={Dialog=472}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_burried.13"}]}
tellraw @s[scores={Dialog=568}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_burried.14"}]}
tellraw @s[scores={Dialog=624}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_burried.15"}]}
execute if entity @s[scores={Dialog=632}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 47 59 93
execute if entity @s[scores={Dialog=632}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=744}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] add dead
tellraw @s[scores={Dialog=644}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_burried.16"}]}
scoreboard players set @s[scores={Dialog=744}] MusicType 1
scoreboard players set @s[scores={Dialog=744}] Music 0
tellraw @s[scores={Dialog=744}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_burried.17"}]}
tellraw @s[scores={Dialog=856}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_burried.18"}]}
tellraw @s[scores={Dialog=992}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_burried.19"}]}
tag @s[scores={Dialog=1104}] remove dialog_other_salesman_mermaid_medal_burried
advancement grant @s[scores={Dialog=1104}] only medabots_server:main/salesman_quest/mermaid_medal seaslug_burried_item
scoreboard players reset @s[scores={Dialog=1104}] DialogNr
scoreboard players set @s[scores={Dialog=1104}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog