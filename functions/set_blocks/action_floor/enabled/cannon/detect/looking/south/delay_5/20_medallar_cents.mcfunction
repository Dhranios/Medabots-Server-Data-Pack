summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.action_floor"}',Tags:["action_floor","enabled","cannon","delay_5","detect","looking","south","20_medallar_cents"],Duration:2147483647}
execute as @e[distance=..0.7,tag=action_floor] run function medabots_server:blocks/tag_for_replacing_block
scoreboard players operation @e[distance=..0.7,tag=action_floor] ActionFloorNr > @e[tag=action_floor] ActionFloorNr
scoreboard players add @e[distance=..0.7,tag=action_floor] ActionFloorNr 1
setblock ~ ~-1 ~ minecraft:white_wool
scoreboard players set @e[distance=..0.7,tag=action_floor] Time -80