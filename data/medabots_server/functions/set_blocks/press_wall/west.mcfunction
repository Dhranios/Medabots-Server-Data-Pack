function medabots_server:set_blocks/press_wall
tag @e[distance=..0.7,tag=press_wall] add west
setblock ~ ~ ~ minecraft:quartz_pillar[axis=x]
fill ~ ~ ~ ~ ~3 ~ minecraft:black_stained_glass