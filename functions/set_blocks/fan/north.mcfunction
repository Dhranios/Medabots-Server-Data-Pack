function medabots_server:set_blocks/fan
tag @e[distance=..0.7,tag=fan] add north
setblock ~ ~1 ~ minecraft:furnace[facing=north]