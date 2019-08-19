summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.action_floor"}',Tags:["action_floor"],Duration:2147483647}
execute as @e[distance=..0.7,tag=action_floor] run function medabots_server:blocks/tag_for_replacing_block
setblock ~ ~-1 ~ minecraft:white_wool
scoreboard players operation @e[distance=..0.7,tag=action_floor] ActionFloorNr > @e[tag=action_floor] ActionFloorNr
scoreboard players add @e[distance=..0.7,tag=action_floor] ActionFloorNr 1
scoreboard players set @e[distance=..0.7,tag=action_floor] Time -100
scoreboard players set @e[distance=..0.7,tag=action_floor] PowerNeeded 1
scoreboard players set @e[distance=..0.7,tag=action_floor] PowerAmount 0