function medabots_server:set_blocks/laser_trap
tag @e[distance=..0.7,tag=laser_trap] add east
setblock ~ ~1 ~ minecraft:sandstone_stairs[facing=east,shape=straight]