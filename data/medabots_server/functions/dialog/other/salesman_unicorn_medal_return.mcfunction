execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other salesman_unicorn_medal_return
execute as @e[tag=salesman,distance=..4,limit=1] at @s run teleport @s ~ ~ ~ facing entity @a[distance=..4,scores={Dialog=1..},limit=1,sort=nearest]
data merge entity @e[tag=salesman,distance=..4,limit=1] {NoAI:1b}
execute unless block ~ ~ ~ minecraft:air{loaded:true} at @s at @e[tag=salesman_dialog,sort=nearest,limit=1,distance=..1] run teleport @s ~ ~ ~
execute at @s run kill @e[tag=salesman_dialog,sort=nearest,limit=1,distance=..1]
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["salesman_dialog"],Duration:2}
tag @s[scores={Dialog=1}] add salesman_unicorn_medal_return_dialog
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_return.1"}]}
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_return.2"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_return.3"}]}
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_return.4"}]}
tellraw @s[scores={Dialog=120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_return.5"}]}
tellraw @s[scores={Dialog=208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_return.6"}]}
tellraw @s[scores={Dialog=320}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal_return.7"}]}
tag @s[scores={Dialog=336}] remove salesman_unicorn_medal_return_dialog
tag @s[scores={Dialog=336}] remove dialog_other_salesman_unicorn_medal_return
advancement grant @s[scores={Dialog=336}] only medabots_server:main/salesman_quest/unicorn_medal return_to_salesman
scoreboard players set @s[scores={Dialog=336}] Dialog 0