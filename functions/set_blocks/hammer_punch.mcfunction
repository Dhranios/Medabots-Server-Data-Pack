summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.hammer_punch"}',Tags:["hammer_punch"],Duration:2147483647}
execute as @e[distance=..0.7,tag=hammer_punch] run function medabots_server:blocks/tag_for_replacing_block
execute as @e[distance=..0.7,tag=hammer_punch] run function medabots_server:blocks/tag_for_replacing_higher_blocks
setblock ~ ~-1 ~ minecraft:observer[facing=down,powered=false]
scoreboard players add @e[distance=..0.7,tag=hammer_punch] Time 20
scoreboard players set @e[distance=..0.7,tag=hammer_punch] PowerNeeded 1
scoreboard players set @e[distance=..0.7,tag=hammer_punch] PowerAmount 0