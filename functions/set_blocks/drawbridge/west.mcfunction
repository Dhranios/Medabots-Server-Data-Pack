function medabots_server:set_blocks/drawbridge
tag @e[distance=..0.7,tag=drawbridge] add west
setblock ~ ~ ~ minecraft:oak_stairs[facing=west,shape=straight]