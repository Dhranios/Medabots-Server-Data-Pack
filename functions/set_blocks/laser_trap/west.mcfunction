function medabots_server:set_blocks/laser_trap
tag @e[distance=..0.7,tag=laser_trap] add west
setblock ~ ~1 ~ minecraft:sandstone_stairs[facing=west,shape=straight]