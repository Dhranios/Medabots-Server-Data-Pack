summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.press_wall"}',Tags:["press_wall","east","enabled"],Duration:2147483647}
scoreboard players set @e[distance=..0.1,tag=press_wall] Range 7
setblock ~ ~ ~ minecraft:quartz_pillar[axis=x]