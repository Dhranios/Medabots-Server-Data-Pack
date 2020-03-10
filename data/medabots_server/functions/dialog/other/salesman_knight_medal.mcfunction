execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other salesman_knight_medal
execute as @e[tag=salesman,distance=..4,limit=1] at @s run teleport @s ~ ~ ~ facing entity @a[distance=..4,scores={Dialog=1..},limit=1,sort=nearest]
execute unless block ~ ~ ~ minecraft:air{loaded:true} at @s at @e[tag=salesman_dialog,sort=nearest,limit=1,distance=..1] run teleport @s ~ ~ ~
execute at @s run kill @e[tag=salesman_dialog,sort=nearest,limit=1,distance=..1]
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["salesman_dialog"],Duration:2}
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_knight_medal.1"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_knight_medal.2"}]}
tellraw @s[scores={Dialog=120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_knight_medal.3"}]}
tellraw @s[scores={Dialog=200}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_knight_medal.4"}]}
tellraw @s[scores={Dialog=280}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_knight_medal.5"}]}
tellraw @s[scores={Dialog=368}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_knight_medal.6"}]}
tellraw @s[scores={Dialog=440}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_knight_medal.7"}]}
tellraw @s[scores={Dialog=472}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.salesman_knight_medal.8"}]}
tellraw @s[scores={Dialog=520}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:dialog.other.salesman_knight_medal.9"}]}
tag @s[scores={Dialog=560}] remove dialog_other_salesman_knight_medal
advancement grant @s[scores={Dialog=560}] only medabots_server:main/salesman_quest
advancement grant @s[scores={Dialog=560}] only medabots_server:main/salesman_quest/knight_medal start_the_quest
scoreboard players set @s[scores={Dialog=560}] Dialog 0