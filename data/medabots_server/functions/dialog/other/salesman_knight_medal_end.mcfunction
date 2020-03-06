execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other salesman_knight_medal_end
tag @s[scores={Dialog=1}] add salesman_knight_medal_end_dialog
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_knight_medal_end.1"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_knight_medal_end.2"}]}
tellraw @s[scores={Dialog=104}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_knight_medal_end.3"}]}
tellraw @s[scores={Dialog=232}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_knight_medal_end.4"}]}
tellraw @s[scores={Dialog=272}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_knight_medal_end.5"}]}
tellraw @s[scores={Dialog=312}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_knight_medal_end.6"}]}
execute if entity @s[scores={Dialog=384},tag=!already_gave_items] run function medabots_server:give_items/medal/knight
tag @s[scores={Dialog=384}] add already_gave_items
tellraw @s[scores={Dialog=404}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_knight_medal_end.7"}]}
tellraw @s[scores={Dialog=420}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_knight_medal_end.8"}]}
tag @s[scores={Dialog=436}] remove dialog_other_salesman_knight_medal_end
tag @s[scores={Dialog=436}] remove salesman_knight_medal_end_dialog
tag @s[scores={Dialog=436}] remove already_gave_items
advancement grant @s[scores={Dialog=436}] only medabots_server:main/salesman_quest/knight_medal end_the_quest
scoreboard players set @s[scores={Dialog=436}] Dialog 0