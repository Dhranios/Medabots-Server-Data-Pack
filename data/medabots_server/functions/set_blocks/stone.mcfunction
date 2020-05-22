summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.stone"}',Tags:["stone"],Duration:2147483647}
scoreboard players set @e[distance=..0.7,tag=stone] WallLength 1
setblock ~ ~ ~ minecraft:stone_slab[type=bottom]