execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other salesman_unicorn_medal_end
tag @s[scores={Dialog=1}] add salesman_unicorn_medal_end_dialog
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_end.1"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_end.2"}]}
tellraw @s[scores={Dialog=128}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_end.3"}]}
tellraw @s[scores={Dialog=224}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_end.4"}]}
tellraw @s[scores={Dialog=264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_end.5"}]}
execute if entity @s[scores={Dialog=416},tag=!already_gave_items] run function medabots_server:give_items/medal/unicorn
tag @s[scores={Dialog=416}] add already_gave_items
tellraw @s[scores={Dialog=436}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_end.6"}]}
tellraw @s[scores={Dialog=508}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_end.7"}]}
tag @s[scores={Dialog=564}] remove dialog_other_salesman_unicorn_medal_end
tag @s[scores={Dialog=564}] remove salesman_unicorn_medal_end_dialog
tag @s[scores={Dialog=564}] remove already_gave_items
advancement grant @s[scores={Dialog=564}] only medabots_server:main/salesman_quest/unicorn_medal end_the_quest
scoreboard players set @s[scores={Dialog=564}] Dialog 0