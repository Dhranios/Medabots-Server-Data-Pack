summon minecraft:area_effect_cloud ~ ~-0.375 ~ {CustomName:'{"translate":"medabots_server:entity.bomb"}',Tags:["bomb","hostile","delay_90"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:10,BlockState:{Name:"minecraft:tnt"},NoGravity:1b,Tags:["bomb","hostile"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Peek:1b,Tags:["bomb","hostile"],ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,Amplifier:0b,ShowParticles:0b}]}]}
scoreboard players set @e[distance=..0.7,tag=bomb] Dialog 1800
fill ~ ~1 ~ ~ ~1 ~ minecraft:black_stained_glass replace minecraft:air