summon minecraft:creeper ~ ~ ~ {Invulnerable:1b,Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
scoreboard players operation @e[distance=..0.7,tag=guard] GuardNr > @e[tag=guard] GuardNr
scoreboard players add @e[distance=..0.7,tag=guard] GuardNr 1
scoreboard players set @e[distance=..0.7,tag=guard] Sound 0
scoreboard players set @e[distance=..0.7,tag=guard] Time 30
scoreboard players set @e[distance=..0.7,tag=guard] Killer 0
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["body","guard_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:3,Unbreakable:1b,CustomModelData:0}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["hammer","guard_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:3,Unbreakable:1b,CustomModelData:1}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["front_legs","guard_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:3,Unbreakable:1b,CustomModelData:3}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:3,Unbreakable:1b,CustomModelData:2}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["back_legs","guard_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:3,Unbreakable:1b,CustomModelData:4}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:3,Unbreakable:1b,CustomModelData:5}}]}
execute as @e[tag=guard_model,distance=..0.1] unless entity @s[scores={GuardNr=1..}] run scoreboard players operation @s GuardNr = @e[distance=..0.1,limit=1,tag=guard] GuardNr