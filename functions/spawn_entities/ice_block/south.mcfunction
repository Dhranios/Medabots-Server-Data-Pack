summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.ice_block"}',Tags:["ice_block","hostile"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Peek:1b,Tags:["ice_block","hostile"],ActiveEffect:[{Id:14b,Duration:1000000,Ambient:1b,Amplifier:0b,ShowParticles:0b}]}]}
scoreboard players set @e[distance=..0.7,tag=ice_block] Moving 2