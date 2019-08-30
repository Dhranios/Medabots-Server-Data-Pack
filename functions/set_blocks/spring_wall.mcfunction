summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.spring_wall"}',Tags:["spring_wall"],Duration:2147483647}
execute as @e[distance=..0.7,tag=spring_wall] run function medabots_server:blocks/tag_for_replacing_block
setblock ~ ~1 ~ minecraft:barrier
setblock ~ ~-1 ~ minecraft:observer[facing=down,powered=false]
scoreboard players set @e[distance=..0.7,tag=spring_wall] Time 20
scoreboard players set @e[distance=..0.7,tag=spring_wall] PowerNeeded 1
scoreboard players set @e[distance=..0.7,tag=spring_wall] PowerAmount 0