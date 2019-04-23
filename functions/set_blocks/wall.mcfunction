summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.wall"}',Tags:["wall"],Duration:2147483647}
execute if block ~ ~-1 ~ minecraft:water run tag @e[distance=..0.7,tag=wall] add shallow_water
execute if block ~ ~-2 ~ minecraft:water run tag @e[distance=..0.7,tag=wall] add deep_water
execute if block ~ ~-1 ~ minecraft:air run tag @e[distance=..0.7,tag=wall] add crater
fill ~ ~ ~ ~ ~3 ~ minecraft:bedrock
execute if block ~ ~-1 ~ minecraft:water run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:bedrock
execute if block ~ ~-2 ~ minecraft:water run fill ~ ~-2 ~ ~ ~-2 ~ minecraft:bedrock
execute if block ~ ~-1 ~ minecraft:air run fill ~ 0 ~ ~ ~-1 ~ minecraft:bedrock replace minecraft:air