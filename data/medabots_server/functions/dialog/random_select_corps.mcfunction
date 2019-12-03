scoreboard players reset @s[tag=!talked,tag=talk] Dialog
scoreboard players add @s[scores={Dialog=1..}] Dialog 1
execute if entity @s[tag=!talked,tag=talk] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["random_dialog","1"],Duration:1}
execute if entity @s[tag=!talked,tag=talk] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["random_dialog","2"],Duration:1}
execute if entity @s[tag=!talked,tag=talk] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["random_dialog","3"],Duration:1}
execute if entity @s[tag=!talked,tag=talk] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["random_dialog","4"],Duration:1}
execute if entity @s[tag=!talked,tag=talk] run tag @e[distance=..1,tag=random_dialog,limit=1,sort=random] add selected
execute if entity @s[tag=!talked,tag=talk] if entity @e[distance=..1,tag=random_dialog,tag=selected,tag=1] run tellraw @a[distance=..5,scores={Dialog=0}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps","color":"green"},{"translate":"medabots_server:dialog.random_select_corps.1"}]}
execute if entity @s[tag=!talked,tag=talk] if entity @e[distance=..1,tag=random_dialog,tag=selected,tag=2] run tellraw @a[distance=..5,scores={Dialog=0}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps","color":"green"},{"translate":"medabots_server:dialog.random_select_corps.2"}]}
execute if entity @s[tag=!talked,tag=talk] if entity @e[distance=..1,tag=random_dialog,tag=selected,tag=3] run tellraw @a[distance=..5,scores={Dialog=0}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps","color":"green"},{"translate":"medabots_server:dialog.random_select_corps.3"}]}
execute if entity @s[tag=!talked,tag=talk] if entity @e[distance=..1,tag=random_dialog,tag=selected,tag=4] run scoreboard players set @s Dialog 1
execute if entity @s[scores={Dialog=1}] run tellraw @a[distance=..5,scores={Dialog=0}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps","color":"green"},{"translate":"medabots_server:dialog.random_select_corps.4.1"}]}
execute if entity @s[scores={Dialog=36}] run tellraw @a[distance=..5,scores={Dialog=0}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps","color":"green"},{"translate":"medabots_server:dialog.random_select_corps.4.2"}]}
execute if entity @s[scores={Dialog=52}] run tellraw @a[distance=..5,scores={Dialog=0}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps","color":"green"},{"translate":"medabots_server:dialog.random_select_corps.4.3"}]}
scoreboard players reset @s[scores={Dialog=52}] Dialog
kill @e[distance=..1,tag=random_dialog]