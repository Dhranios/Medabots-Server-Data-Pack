summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.wall"}',Tags:["wall"],Duration:2147483647}
scoreboard players set @e[distance=..0.7,tag=wall] WallLength 1
execute as @e[distance=..0.7,tag=wall] run function medabots_server:blocks/tag_for_replacing_higher_blocks
fill ~ ~ ~ ~ ~3 ~ minecraft:bedrock
fill ~ ~-1 ~ ~ ~-2 ~ minecraft:bedrock replace minecraft:water
execute if block ~ ~-1 ~ minecraft:air run fill ~ 0 ~ ~ ~-1 ~ minecraft:bedrock replace minecraft:air