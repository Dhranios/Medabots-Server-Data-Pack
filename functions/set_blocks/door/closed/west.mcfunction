summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.door"}',Tags:["door"],Duration:2147483647}
setblock ~ ~ ~ minecraft:iron_door[facing=east,open=false,hinge=left,half=lower]
setblock ~ ~1 ~ minecraft:iron_door[facing=east,open=false,hinge=left,half=upper]
setblock ~ ~ ~1 minecraft:iron_door[facing=east,open=false,hinge=right,half=lower]
setblock ~ ~1 ~1 minecraft:iron_door[facing=east,open=false,hinge=right,half=upper]
fill ~ ~2 ~ ~ ~3 ~1 minecraft:barrier