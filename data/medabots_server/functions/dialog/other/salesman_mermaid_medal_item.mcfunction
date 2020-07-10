execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other salesman_mermaid_medal_item
tag @s[scores={Dialog=1}] add salesman_mermaid_medal_item_dialog
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_item.1"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_mermaid_medal_item.2"}]}
tag @s[scores={Dialog=96}] remove dialog_other_salesman_mermaid_medal_item
tag @s[scores={Dialog=96}] remove salesman_mermaid_medal_item_dialog
tag @s[scores={Dialog=96}] add go_talk_to_salesman
advancement grant @s[scores={Dialog=96}] only medabots_server:main/salesman_quest/mermaid_medal obtain_item
scoreboard players set @s[scores={Dialog=96}] Dialog 0