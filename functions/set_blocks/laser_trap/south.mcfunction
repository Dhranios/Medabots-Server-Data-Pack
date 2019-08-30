function medabots_server:set_blocks/laser_trap
tag @e[distance=..0.7,tag=laser_trap] add south
setblock ~ ~1 ~ minecraft:sandstone_stairs[facing=north,shape=straight]