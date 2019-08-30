summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.gas_floor"}',Tags:["gas_floor"],Duration:2147483647}
scoreboard players set @e[distance=..0.7,tag=gas_floor] PowerNeeded 1
scoreboard players set @e[distance=..0.7,tag=gas_floor] PowerAmount 0