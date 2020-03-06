execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other salesman_ghost_medal_end
tag @s[scores={Dialog=1}] add salesman_ghost_medal_end_dialog
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_ghost_medal_end.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_ghost_medal_end.2"}]}
tellraw @s[scores={Dialog=104}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_ghost_medal_end.3"}]}
tellraw @s[scores={Dialog=240}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_ghost_medal_end.4"}]}
tellraw @s[scores={Dialog=312}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_ghost_medal_end.5"}]}
execute if entity @s[scores={Dialog=352},tag=!already_gave_items] run function medabots_server:give_items/medal/ghost
tag @s[scores={Dialog=352}] add already_gave_items
tellraw @s[scores={Dialog=372}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_ghost_medal_end.6"}]}
tellraw @s[scores={Dialog=412}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_ghost_medal_end.7"}]}
tag @s[scores={Dialog=420}] remove dialog_other_salesman_ghost_medal_end
tag @s[scores={Dialog=420}] remove salesman_ghost_medal_end_dialog
tag @s[scores={Dialog=420}] remove already_gave_items
advancement grant @s[scores={Dialog=420}] only medabots_server:main/salesman_quest/ghost_medal end_the_quest
scoreboard players set @s[scores={Dialog=420}] Dialog 0