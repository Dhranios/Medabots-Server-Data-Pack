execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other salesman_knight_medal_item
tag @s[scores={Dialog=1}] add salesman_knight_medal_item_dialog
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_knight_medal_item.1"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_knight_medal_item.2"}]}
tag @s[scores={Dialog=120}] remove dialog_other_salesman_knight_medal_item
tag @s[scores={Dialog=120}] remove salesman_knight_medal_item_dialog
tag @s[scores={Dialog=120}] add go_talk_to_salesman
advancement grant @s[scores={Dialog=120}] only medabots_server:main/salesman_quest/knight_medal find_the_item
scoreboard players set @s[scores={Dialog=120}] Dialog 0