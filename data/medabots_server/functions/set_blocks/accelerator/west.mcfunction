function medabots_server:set_blocks/accelerator
tag @e[distance=..0.7,tag=accelerator] add west
fill ~ ~ ~ ~ ~ ~ minecraft:comparator[powered=false,mode=compare,facing=east] replace minecraft:air