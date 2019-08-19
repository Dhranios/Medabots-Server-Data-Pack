function medabots_server:set_blocks/fan
tag @e[distance=..0.7,tag=fan] add east
setblock ~ ~1 ~ minecraft:furnace[facing=east]