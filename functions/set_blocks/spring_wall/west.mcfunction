function medabots_server:set_blocks/spring_wall
setblock ~ ~ ~ minecraft:piston[facing=west,extended=false]
tag @e[distance=..0.7,tag=spring_wall] add west