summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.pot"}',Tags:["pot","cannon","delay_5","detect","rotating","north","6_medallar_cents"],Duration:2147483647}
setblock ~ ~ ~ minecraft:chest[facing=south,type=single]
setblock ~ ~1 ~ minecraft:barrier
execute as @e[distance=..0.7,tag=floor_switch] at @s run function medabots_server:blocks/floor_switch