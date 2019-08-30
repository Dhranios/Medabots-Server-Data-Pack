function medabots_server:set_blocks/press_wall
tag @e[distance=..0.7,tag=press_wall] add south
setblock ~ ~ ~ minecraft:quartz_pillar[axis=z]
fill ~ ~ ~ ~ ~3 ~ minecraft:black_stained_glass