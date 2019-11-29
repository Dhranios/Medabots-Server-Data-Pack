function medabots_server:set_blocks/press_wall
tag @e[distance=..0.7,tag=press_wall] add north
setblock ~ ~ ~ minecraft:quartz_pillar[axis=z]