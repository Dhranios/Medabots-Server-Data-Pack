execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other salesman_spider_medal_item
tag @s[scores={Dialog=1}] add salesman_spider_medal_item_dialog
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_spider_medal_item.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_spider_medal_item.2"}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_spider_medal_item.3"}]}
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_spider_medal_item.4"}]}
tellraw @s[scores={Dialog=128}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_spider_medal_item.5"}]}
tag @s[scores={Dialog=224}] remove dialog_other_salesman_spider_medal_item
tag @s[scores={Dialog=224}] remove salesman_spider_medal_item_dialog
tag @s[scores={Dialog=224}] add go_talk_to_salesman
advancement grant @s[scores={Dialog=224}] only medabots_server:main/salesman_quest/spider_medal find_the_item
scoreboard players set @s[scores={Dialog=224}] Dialog 0