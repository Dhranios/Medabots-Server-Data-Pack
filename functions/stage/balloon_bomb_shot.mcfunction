execute if block ~ ~0.1 ~ minecraft:sponge positioned ~ ~-0.9 ~ run tag @e[sort=nearest,distance=..1,limit=1,type=minecraft:area_effect_cloud,tag=balloon_bomb] add burst
execute if block ~ ~-0.1 ~ minecraft:sponge positioned ~ ~-1.1 ~ run tag @e[sort=nearest,distance=..1,limit=1,type=minecraft:area_effect_cloud,tag=balloon_bomb] add burst
execute if block ~0.1 ~ ~ minecraft:sponge positioned ~0.1 ~-1 ~ run tag @e[sort=nearest,distance=..1,limit=1,type=minecraft:area_effect_cloud,tag=balloon_bomb] add burst
execute if block ~-0.1 ~ ~ minecraft:sponge positioned ~-0.1 ~-1 ~ run tag @e[sort=nearest,distance=..1,limit=1,type=minecraft:area_effect_cloud,tag=balloon_bomb] add burst
execute if block ~ ~ ~0.1 minecraft:sponge positioned ~ ~-1 ~0.1 run tag @e[sort=nearest,distance=..1,limit=1,type=minecraft:area_effect_cloud,tag=balloon_bomb] add burst
execute if block ~ ~ ~-0.1 minecraft:sponge positioned ~ ~-1 ~-0.1 run tag @e[sort=nearest,distance=..1,limit=1,type=minecraft:area_effect_cloud,tag=balloon_bomb] add burst
