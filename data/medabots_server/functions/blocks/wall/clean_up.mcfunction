fill ~ ~ ~ ~ ~3 ~ minecraft:air
fill ~ ~-1 ~ ~ ~-1 ~ minecraft:grass_block replace minecraft:dirt
execute if block ~ 1 ~ minecraft:bedrock run fill ~ 0 ~ ~ ~-1 ~ minecraft:air replace minecraft:bedrock
fill ~ ~-1 ~ ~ ~-2 ~ minecraft:water replace minecraft:bedrock
function medabots_server:blocks/put_higher_blocks_back
scoreboard players remove @s WallLength 1
execute if entity @s[tag=x,scores={WallLength=1..}] positioned ~1 ~ ~ run function medabots_server:blocks/wall/clean_up
execute if entity @s[tag=z,scores={WallLength=1..}] positioned ~ ~ ~1 run function medabots_server:blocks/wall/clean_up