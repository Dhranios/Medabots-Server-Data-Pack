summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.press_wall"}',Tags:["press_wall","south"],Duration:2147483647}
scoreboard players set @e[distance=..0.1,tag=press_wall] Range 2
setblock ~ ~ ~ minecraft:quartz_pillar[axis=z]