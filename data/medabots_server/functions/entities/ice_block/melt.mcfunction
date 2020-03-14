execute positioned ~-1 ~ ~ at @e[distance=..1,scores={Melt=1..}] run tag @s add melting
execute positioned ~ ~ ~-1 at @e[distance=..1,scores={Melt=1..}] run tag @s add melting
execute positioned ~1 ~ ~ at @e[distance=..1,scores={Melt=1..}] run tag @s add melting
execute positioned ~ ~ ~1 at @e[distance=..1,scores={Melt=1..}] run tag @s add melting
execute positioned ~-1 ~ ~ at @e[distance=..1,type=minecraft:creeper,tag=napalm] run tag @s add melting
execute positioned ~ ~ ~-1 at @e[distance=..1,type=minecraft:creeper,tag=napalm] run tag @s add melting
execute positioned ~1 ~ ~ at @e[distance=..1,type=minecraft:creeper,tag=napalm] run tag @s add melting
execute positioned ~ ~ ~1 at @e[distance=..1,type=minecraft:creeper,tag=napalm] run tag @s add melting
execute if entity @s[tag=melting] run setblock ~ ~ ~ minecraft:water[level=7]
tag @s[tag=melting] add dead