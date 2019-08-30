function medabots_server:set_blocks/hammer_punch
setblock ~ ~ ~ minecraft:brown_mushroom_block[down=true,east=true,north=false,south=true,up=true,west=true]
setblock ~ ~1 ~ minecraft:piston[facing=north,extended=false]
tag @e[distance=..0.7,tag=hammer_punch] add north