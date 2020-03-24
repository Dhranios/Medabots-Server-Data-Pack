execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other salesman_chameleon_medal_end
execute as @e[tag=salesman,distance=..4,limit=1] at @s run teleport @s ~ ~ ~ facing entity @a[distance=..4,scores={Dialog=1..},limit=1,sort=nearest]
data merge entity @e[tag=salesman,distance=..4,limit=1] {NoAI:1b}
execute unless block ~ ~ ~ minecraft:air{loaded:true} at @s at @e[tag=salesman_dialog,sort=nearest,limit=1,distance=..1] run teleport @s ~ ~ ~
execute at @s run kill @e[tag=salesman_dialog,sort=nearest,limit=1,distance=..1]
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["salesman_dialog"],Duration:2}
tag @s[scores={Dialog=1}] add salesman_chameleon_medal_end_dialog
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_chameleon_medal_end.1"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_chameleon_medal_end.2"}]}
tellraw @s[scores={Dialog=120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_chameleon_medal_end.3"}]}
tellraw @s[scores={Dialog=128}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_chameleon_medal_end.4"}]}
tellraw @s[scores={Dialog=216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_chameleon_medal_end.5"}]}
tellraw @s[scores={Dialog=232}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_chameleon_medal_end.6"}]}
execute if entity @s[scores={Dialog=296},tag=!already_gave_items] run function medabots_server:give_items/medal/chameleon
tag @s[scores={Dialog=296}] add already_gave_items
tellraw @s[scores={Dialog=316}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_chameleon_medal_end.7"}]}
tag @s[scores={Dialog=332}] remove dialog_other_salesman_chameleon_medal_end
tag @s[scores={Dialog=332}] remove salesman_chameleon_medal_end_dialog
tag @s[scores={Dialog=332}] remove already_gave_items
advancement grant @s[scores={Dialog=332}] only medabots_server:main/salesman_quest/chameleon_medal end_the_quest
scoreboard players set @s[scores={Dialog=332}] Dialog 0