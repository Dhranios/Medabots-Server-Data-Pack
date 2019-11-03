function medabots_server:set_blocks/drawbridge
tag @e[distance=..0.7,tag=drawbridge] add east
setblock ~ ~ ~ minecraft:oak_stairs[facing=east,shape=straight]