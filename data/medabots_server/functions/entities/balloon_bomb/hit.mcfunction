execute positioned ~-3 ~-1 ~ if entity @e[distance=..3,type=minecraft:creeper,tag=wave] run scoreboard players set @s Moving 1
execute positioned ~ ~-1 ~-3 if entity @e[distance=..3,type=minecraft:creeper,tag=wave] run scoreboard players set @s Moving 2
execute positioned ~3 ~-1 ~ if entity @e[distance=..3,type=minecraft:creeper,tag=wave] run scoreboard players set @s Moving 3
execute positioned ~ ~-1 ~3 if entity @e[distance=..3,type=minecraft:creeper,tag=wave] run scoreboard players set @s Moving 4