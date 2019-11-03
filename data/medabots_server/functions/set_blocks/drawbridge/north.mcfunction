function medabots_server:set_blocks/drawbridge
tag @e[distance=..0.7,tag=drawbridge] add north
setblock ~ ~ ~ minecraft:oak_stairs[facing=north,shape=straight]