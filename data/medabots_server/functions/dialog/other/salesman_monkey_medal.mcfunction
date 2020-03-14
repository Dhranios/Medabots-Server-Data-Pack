execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other salesman_monkey_medal
execute as @e[tag=salesman,distance=..4,limit=1] at @s run teleport @s ~ ~ ~ facing entity @a[distance=..4,scores={Dialog=1..},limit=1,sort=nearest]
execute unless block ~ ~ ~ minecraft:air{loaded:true} at @s at @e[tag=salesman_dialog,sort=nearest,limit=1,distance=..1] run teleport @s ~ ~ ~
execute at @s run kill @e[tag=salesman_dialog,sort=nearest,limit=1,distance=..1]
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["salesman_dialog"],Duration:2}
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_monkey_medal.1"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_monkey_medal.2"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_monkey_medal.3"}]}
tellraw @s[scores={Dialog=240}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_monkey_medal.4"}]}
tellraw @s[scores={Dialog=400}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_monkey_medal.5"}]}
tellraw @s[scores={Dialog=456}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_monkey_medal.6"}]}
tellraw @s[scores={Dialog=480}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_monkey_medal.7"}]}
tag @s[scores={Dialog=544}] remove dialog_other_salesman_monkey_medal
advancement grant @s[scores={Dialog=544}] only medabots_server:main/salesman_quest
advancement grant @s[scores={Dialog=544}] only medabots_server:main/salesman_quest/monkey_medal start_the_quest
scoreboard players set @s[scores={Dialog=544}] Dialog 0