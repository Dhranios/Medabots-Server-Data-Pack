execute as @e[distance=..0.7,tag=drawbridge] run function medabots_server:blocks/tag_for_replacing_block
scoreboard players set @e[distance=..0.7,tag=drawbridge] Time 0
setblock ~ ~-1 ~ minecraft:oak_planks
execute as @e[distance=..0.7,tag=drawbridge] run function medabots_server:blocks/drawbridge/turn_back