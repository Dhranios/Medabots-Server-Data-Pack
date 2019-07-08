summon minecraft:zombie ~ ~ ~ {ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}],NoAI:1b,Silent:1b,CustomName:'{"translate":"medabots_server:entity.cannon"}',ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],Tags:["delay_3","detect","hostile","killerable","rotating","west","mission_entity","cannon"],Rotation:[90.0f,0.0f],DeathLootTable:"medabots_server:entities/cannon/20_medallar_cents",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,Team:"StageEnemy",AbsorptionAmount:20.0f,Health:100.0f}
scoreboard players set @e[distance=..0.7,tag=cannon] CannonFire 0
scoreboard players set @e[distance=..0.7,tag=cannon] Time -1
scoreboard players set @e[distance=..0.7,tag=cannon] Killer 0
fill ~ ~2 ~ ~ ~2 ~ minecraft:barrier replace minecraft:air
fill ~ ~ ~ ~ ~ ~ minecraft:iron_block replace minecraft:air
fill ~ ~ ~ ~ ~ ~ minecraft:iron_block replace minecraft:chest