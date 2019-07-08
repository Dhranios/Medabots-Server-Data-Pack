summon minecraft:creeper ~ ~ ~ {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","mission_entity","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard/2_medallar_cents",AbsorptionAmount:10.0f,Health:100.0f}
scoreboard players operation @e[distance=..0.7,tag=guard] GuardNr > @e[tag=guard] GuardNr
scoreboard players add @e[distance=..0.7,tag=guard] GuardNr 1
scoreboard players set @e[distance=..0.7,tag=guard] Sound 0
scoreboard players set @e[distance=..0.7,tag=guard] Time 30
scoreboard players set @e[distance=..0.7,tag=guard] Killer 0