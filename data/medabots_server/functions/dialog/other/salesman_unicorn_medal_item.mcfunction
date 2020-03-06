execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other salesman_unicorn_medal_item
tag @s[scores={Dialog=1}] add salesman_unicorn_medal_item_dialog
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_item.1"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_item.2"}]}
tellraw @s[scores={Dialog=104}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_item.3"}]}
tag @s[scores={Dialog=176}] remove dialog_other_salesman_unicorn_medal_item
tag @s[scores={Dialog=176}] remove salesman_unicorn_medal_item_dialog
tag @s[scores={Dialog=176}] add go_talk_to_salesman
advancement grant @s[scores={Dialog=176}] only medabots_server:main/salesman_quest/unicorn_medal find_the_item
scoreboard players set @s[scores={Dialog=176}] Dialog 0