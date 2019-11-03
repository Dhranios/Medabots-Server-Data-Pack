function medabots_server:set_blocks/hammer_punch
setblock ~ ~ ~ minecraft:brown_mushroom_block[down=true,east=true,north=true,south=true,up=true,west=false]
setblock ~ ~1 ~ minecraft:piston[facing=west,extended=false]
tag @e[distance=..0.7,tag=hammer_punch] add west