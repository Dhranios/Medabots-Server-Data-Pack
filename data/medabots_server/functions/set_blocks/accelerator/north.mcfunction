function medabots_server:set_blocks/accelerator
tag @e[distance=..0.7,tag=accelerator] add north
fill ~ ~ ~ ~ ~ ~ minecraft:comparator[powered=false,mode=compare,facing=south] replace minecraft:air