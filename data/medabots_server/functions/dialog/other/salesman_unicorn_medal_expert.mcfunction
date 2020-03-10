execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other salesman_unicorn_medal_expert
execute as @e[tag=librarian,distance=..4,limit=1] at @s run teleport @s ~ ~ ~ facing entity @a[distance=..4,scores={Dialog=1..},limit=1,sort=nearest]
execute unless block ~ ~ ~ minecraft:air{loaded:true} at @s at @e[tag=salesman_dialog,sort=nearest,limit=1,distance=..1] run teleport @s ~ ~ ~
execute at @s run kill @e[tag=salesman_dialog,sort=nearest,limit=1,distance=..1]
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["salesman_dialog"],Duration:2}
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_expert.1"}]}
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.librarian","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_expert.2"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_expert.3"}]}
tellraw @s[scores={Dialog=160}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.librarian","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_expert.4"}]}
tellraw @s[scores={Dialog=176}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_expert.5"}]}
tellraw @s[scores={Dialog=184}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_expert.6"}]}
tellraw @s[scores={Dialog=320}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.librarian","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_expert.7"}]}
tellraw @s[scores={Dialog=368}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.librarian","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_expert.8"}]}
tellraw @s[scores={Dialog=440}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_expert.9"}]}
tellraw @s[scores={Dialog=464}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_expert.10"}]}
tellraw @s[scores={Dialog=496}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.librarian","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_expert.11"}]}
tellraw @s[scores={Dialog=584}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.librarian","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_expert.12"}]}
tellraw @s[scores={Dialog=696}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_expert.13"}]}
tag @s[scores={Dialog=728}] remove dialog_other_salesman_unicorn_medal_expert
tag @s[scores={Dialog=728}] add go_talk_to_salesman
advancement grant @s[scores={Dialog=728}] only medabots_server:main/salesman_quest/unicorn_medal find_the_expert
scoreboard players set @s[scores={Dialog=728}] Dialog 0