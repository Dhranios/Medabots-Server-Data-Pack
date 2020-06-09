execute if entity @s[tag=east] positioned ~1 ~-0.3 ~ run tag @e[tag=bomb,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=0}] add spring_wall_pushed
execute if entity @s[tag=east] positioned ~1 ~-0.3 ~ run scoreboard players set @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=0}] Moving 1
execute if entity @s[tag=east] positioned ~1 ~-0.3 ~ run scoreboard players set @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=0}] Moving 1
execute if entity @s[tag=east] positioned ~1 ~-0.3 ~ run scoreboard players set @e[tag=bomb,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=0}] Moving 1
execute if entity @s[tag=east] positioned ~1 ~ ~ as @e[tag=!bomb,tag=!round_stone,tag=!ice_block,tag=hostile,type=!minecraft:armor_stand,type=!minecraft:area_effect_cloud,tag=!action_floor_moving,distance=..0.7] at @s run teleport @s ~1 ~ ~
execute if entity @s[tag=south] positioned ~ ~-0.3 ~1 run tag @e[tag=bomb,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=0}] add spring_wall_pushed
execute if entity @s[tag=south] positioned ~ ~-0.3 ~1 run scoreboard players set @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=0}] Moving 2
execute if entity @s[tag=south] positioned ~ ~-0.3 ~1 run scoreboard players set @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=0}] Moving 2
execute if entity @s[tag=south] positioned ~ ~-0.3 ~1 run scoreboard players set @e[tag=bomb,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=0}] Moving 2
execute if entity @s[tag=south] positioned ~ ~ ~1 as @e[tag=!bomb,tag=!round_stone,tag=!ice_block,tag=hostile,type=!minecraft:armor_stand,type=!minecraft:area_effect_cloud,tag=!action_floor_moving,distance=..0.7] at @s run teleport @s ~ ~ ~1
execute if entity @s[tag=west] positioned ~-1 ~-0.3 ~ run tag @e[tag=bomb,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=0}] add spring_wall_pushed
execute if entity @s[tag=west] positioned ~-1 ~-0.3 ~ run scoreboard players set @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=0}] Moving 3
execute if entity @s[tag=west] positioned ~-1 ~-0.3 ~ run scoreboard players set @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=0}] Moving 3
execute if entity @s[tag=west] positioned ~-1 ~-0.3 ~ run scoreboard players set @e[tag=bomb,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=0}] Moving 3
execute if entity @s[tag=west] positioned ~-1 ~ ~ as @e[tag=!bomb,tag=!round_stone,tag=!ice_block,tag=hostile,type=!minecraft:armor_stand,type=!minecraft:area_effect_cloud,tag=!action_floor_moving,distance=..0.7] at @s run teleport @s ~-1 ~ ~
execute if entity @s[tag=north] positioned ~ ~-0.3 ~-1 run tag @e[tag=bomb,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=0}] add spring_wall_pushed
execute if entity @s[tag=north] positioned ~ ~-0.3 ~-1 run scoreboard players set @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=0}] Moving 4
execute if entity @s[tag=north] positioned ~ ~-0.3 ~-1 run scoreboard players set @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=0}] Moving 4
execute if entity @s[tag=north] positioned ~ ~-0.3 ~-1 run scoreboard players set @e[tag=bomb,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=0}] Moving 4
execute if entity @s[tag=north] positioned ~ ~ ~-1 as @e[tag=!bomb,tag=!round_stone,tag=!ice_block,tag=hostile,type=!minecraft:armor_stand,type=!minecraft:area_effect_cloud,tag=!action_floor_moving,distance=..0.7] at @s run teleport @s ~ ~ ~-1