execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other salesman_ghost_medal_one_down
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_ghost_medal_one_down.1"}]}
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_ghost_medal_one_down.2"}]}
tag @s[scores={Dialog=192}] remove dialog_other_salesman_ghost_medal_one_down
tag @s[scores={Dialog=192}] add go_talk_to_salesman
advancement grant @s[scores={Dialog=192}] only medabots_server:main/salesman_quest/ghost_medal find_first_suspect
scoreboard players set @s[scores={Dialog=192}] Dialog 0