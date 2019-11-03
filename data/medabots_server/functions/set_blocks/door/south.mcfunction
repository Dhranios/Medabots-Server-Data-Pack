function medabots_server:set_blocks/door
tag @e[distance=..0.7,tag=door] add south
setblock ~ ~ ~ minecraft:iron_door[facing=north,open=false,hinge=left,half=lower]
setblock ~ ~1 ~ minecraft:iron_door[facing=north,open=false,hinge=left,half=upper]
setblock ~1 ~ ~ minecraft:iron_door[facing=north,open=false,hinge=right,half=lower]
setblock ~1 ~1 ~ minecraft:iron_door[facing=north,open=false,hinge=right,half=upper]
fill ~1 ~2 ~ ~1 ~3 ~ minecraft:barrier replace minecraft:air