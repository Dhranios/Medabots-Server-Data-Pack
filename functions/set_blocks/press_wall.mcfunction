summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.press_wall"}',Tags:["press_wall"],Duration:2147483647}
scoreboard players set @e[distance=..0.7,tag=press_wall] Time 0
scoreboard players set @e[distance=..0.7,tag=press_wall] PowerNeeded 1
scoreboard players set @e[distance=..0.7,tag=press_wall] PowerAmount 0