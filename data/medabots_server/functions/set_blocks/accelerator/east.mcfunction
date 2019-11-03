function medabots_server:set_blocks/accelerator
tag @e[distance=..0.7,tag=accelerator] add east
fill ~ ~ ~ ~ ~ ~ minecraft:comparator[powered=false,mode=compare,facing=west] replace minecraft:air