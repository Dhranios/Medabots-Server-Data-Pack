function medabots_server:set_blocks/hammer_punch
setblock ~ ~ ~ minecraft:brown_mushroom_block[down=true,east=true,north=true,south=false,up=true,west=true]
setblock ~ ~1 ~ minecraft:piston[facing=south,extended=false]
tag @e[distance=..0.7,tag=hammer_punch] add south