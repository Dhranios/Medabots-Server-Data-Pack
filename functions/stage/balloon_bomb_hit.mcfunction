execute positioned ~-2 ~ ~ if entity @e[distance=..2,type=minecraft:creeper,tag=wave] run scoreboard players set @s Moving 1
execute positioned ~ ~ ~-2 if entity @e[distance=..2,type=minecraft:creeper,tag=wave] run scoreboard players set @s Moving 2
execute positioned ~2 ~ ~ if entity @e[distance=..2,type=minecraft:creeper,tag=wave] run scoreboard players set @s Moving 3
execute positioned ~ ~ ~2 if entity @e[distance=..2,type=minecraft:creeper,tag=wave] run scoreboard players set @s Moving 4