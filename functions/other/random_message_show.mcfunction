summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Message\"}",Tags:["random_message","1"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Message\"}",Tags:["random_message","2"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Message\"}",Tags:["random_message","3"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Message\"}",Tags:["random_message","4"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Message\"}",Tags:["random_message","5"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Message\"}",Tags:["random_message","6"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Message\"}",Tags:["random_message","7"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Message\"}",Tags:["random_message","8"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Message\"}",Tags:["random_message","9"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Message\"}",Tags:["random_message","10"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Message\"}",Tags:["random_message","11"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Message\"}",Tags:["random_message","12"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Message\"}",Tags:["random_message","13"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Message\"}",Tags:["random_message","14"],Duration:1}
scoreboard players set @e[sort=random,limit=1,type=minecraft:area_effect_cloud,tag=random_message] RandomMessage 1
execute if entity @e[type=minecraft:area_effect_cloud,scores={RandomMessage=1},tag=1] run tellraw @a[scores={Dialog=..0}] {"translate":"medabots_server:message.random.1","color":"gold"}
execute if entity @e[type=minecraft:area_effect_cloud,scores={RandomMessage=1},tag=2] run tellraw @a[scores={Dialog=..0}] {"translate":"medabots_server:message.random.2","color":"gold"}
execute if entity @e[type=minecraft:area_effect_cloud,scores={RandomMessage=1},tag=3] run tellraw @a[scores={Dialog=..0}] {"translate":"medabots_server:message.random.3","color":"gold"}
execute if entity @e[type=minecraft:area_effect_cloud,scores={RandomMessage=1},tag=4] run tellraw @a[scores={Dialog=..0}] {"translate":"medabots_server:message.random.4","color":"gold"}
execute if entity @e[type=minecraft:area_effect_cloud,scores={RandomMessage=1},tag=5] run tellraw @a[scores={Dialog=..0}] {"translate":"medabots_server:message.random.5","color":"gold"}
execute if entity @e[type=minecraft:area_effect_cloud,scores={RandomMessage=1},tag=6] run tellraw @a[scores={Dialog=..0}] {"translate":"medabots_server:message.random.6","color":"gold"}
execute if entity @e[type=minecraft:area_effect_cloud,scores={RandomMessage=1},tag=7] run tellraw @a[scores={Dialog=..0}] {"translate":"medabots_server:message.random.7","color":"gold"}
execute if entity @e[type=minecraft:area_effect_cloud,scores={RandomMessage=1},tag=8] run tellraw @a[scores={Dialog=..0}] {"translate":"medabots_server:message.random.8","color":"gold"}
execute if entity @e[type=minecraft:area_effect_cloud,scores={RandomMessage=1},tag=9] run tellraw @a[scores={Dialog=..0}] {"translate":"medabots_server:message.random.9","color":"gold"}
execute if entity @e[type=minecraft:area_effect_cloud,scores={RandomMessage=1},tag=10] run tellraw @a[scores={Dialog=..0}] {"translate":"medabots_server:message.random.10","color":"gold"}
execute if entity @e[type=minecraft:area_effect_cloud,scores={RandomMessage=1},tag=11] run tellraw @a[scores={Dialog=..0}] {"translate":"medabots_server:message.random.11","color":"gold"}
execute if entity @e[type=minecraft:area_effect_cloud,scores={RandomMessage=1},tag=12] run tellraw @a[scores={Dialog=..0}] {"translate":"medabots_server:message.random.12","color":"gold"}
execute if entity @e[type=minecraft:area_effect_cloud,scores={RandomMessage=1},tag=13] run tellraw @a[scores={Dialog=..0}] {"translate":"medabots_server:message.random.13","color":"gold"}
execute if entity @e[type=minecraft:area_effect_cloud,scores={RandomMessage=1},tag=14] run tellraw @a[scores={Dialog=..0}] {"translate":"medabots_server:message.random.14","color":"gold"}
kill @e[type=minecraft:area_effect_cloud,tag=random_message]
scoreboard players set @s RandomMessage 0