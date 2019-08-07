fill ~ ~ ~ ~ ~3 ~ minecraft:air
fill ~ ~-1 ~ ~ ~-1 ~ minecraft:grass_block replace minecraft:dirt
fill ~ ~-1 ~ ~ ~-2 ~ minecraft:water replace minecraft:bedrock
execute if entity @s[tag=crater] run fill ~ 0 ~ ~ ~-1 ~ minecraft:air replace minecraft:bedrock
function medabots_server:blocks/put_higher_blocks_back