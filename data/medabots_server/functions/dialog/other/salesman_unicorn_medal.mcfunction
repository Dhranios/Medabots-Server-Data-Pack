execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other salesman_unicorn_medal
execute as @e[tag=salesman,distance=..4,limit=1] at @s run teleport @s ~ ~ ~ facing entity @a[distance=..4,scores={Dialog=1..},limit=1,sort=nearest]
data merge entity @e[tag=salesman,distance=..4,limit=1] {NoAI:1b}
execute unless block ~ ~ ~ minecraft:air{loaded:true} at @s at @e[tag=salesman_dialog,sort=nearest,limit=1,distance=..1] run teleport @s ~ ~ ~
execute at @s run kill @e[tag=salesman_dialog,sort=nearest,limit=1,distance=..1]
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["salesman_dialog"],Duration:2}
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal.1"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal.2"}]}
tellraw @s[scores={Dialog=216}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal.3"}]}
tellraw @s[scores={Dialog=296}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal.4"}]}
tellraw @s[scores={Dialog=304}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal.5"}]}
tellraw @s[scores={Dialog=408}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal.6"}]}
tellraw @s[scores={Dialog=488}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal.7"}]}
tellraw @s[scores={Dialog=624}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal.8"}]}
tellraw @s[scores={Dialog=728}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal.9"}]}
tellraw @s[scores={Dialog=744}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal.10"}]}
tellraw @s[scores={Dialog=784}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal.11"}]}
tellraw @s[scores={Dialog=896}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal.12"}]}
tellraw @s[scores={Dialog=976}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal.13"}]}
tellraw @s[scores={Dialog=1128}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_unicorn_medal.14"}]}
tag @s[scores={Dialog=1176}] remove dialog_other_salesman_unicorn_medal
advancement grant @s[scores={Dialog=1176}] only medabots_server:main/salesman_quest
advancement grant @s[scores={Dialog=1176}] only medabots_server:main/salesman_quest/unicorn_medal start_the_quest
scoreboard players set @s[scores={Dialog=1176}] Dialog 0