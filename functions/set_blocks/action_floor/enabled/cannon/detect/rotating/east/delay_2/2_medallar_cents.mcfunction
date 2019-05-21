summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.action_floor"}',Tags:["action_floor","cannon","delay_2","detect","rotating","east","2_medallar_cents","enabled"],Duration:2147483647}
execute as @e[distance=..0.7] run function medabots_server:blocks/tag_for_replacing_block
scoreboard players operation @e[distance=..0.7] ActionFloorNr > @e[tag=action_floor] ActionFloorNr
scoreboard players add @e[distance=..0.7] ActionFloorNr 1
setblock ~ ~-1 ~ minecraft:white_wool
scoreboard players set @e[distance=..0.7] Time -80