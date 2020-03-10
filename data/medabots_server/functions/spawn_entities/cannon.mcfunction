summon minecraft:husk ~ ~ ~ {ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}],NoAI:1b,Silent:1b,CustomName:'{"translate":"medabots_server:entity.cannon"}',Tags:["hostile","killerable","cannon"],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,Team:"StageEnemy",AbsorptionAmount:20.0f,Health:100.0f}
scoreboard players operation @e[distance=..0.7,tag=cannon,tag=!pot,tag=!action_floor] CannonNr > @e[tag=cannon,tag=!pot,tag=!action_floor] CannonNr
scoreboard players add @e[distance=..0.7,tag=cannon,tag=!pot,tag=!action_floor] CannonNr 1
scoreboard players set @e[distance=..0.7,tag=cannon,tag=!pot,tag=!action_floor] CannonFire 0
scoreboard players set @e[distance=..0.7,tag=cannon,tag=!pot,tag=!action_floor] DelayTime 0
scoreboard players set @e[distance=..0.7,tag=cannon,tag=!pot,tag=!action_floor] Time 20
scoreboard players set @e[distance=..0.7,tag=cannon,tag=!pot,tag=!action_floor] Killer 0
fill ~ ~2 ~ ~ ~2 ~ minecraft:black_stained_glass replace minecraft:air
fill ~ ~ ~ ~ ~ ~ minecraft:black_stained_glass replace minecraft:air
fill ~ ~ ~ ~ ~ ~ minecraft:black_stained_glass replace minecraft:chest

summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["body","cannon_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:3,Unbreakable:1b,CustomModelData:12}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","cannon_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:3,Unbreakable:1b,CustomModelData:13}}]}
execute as @e[tag=cannon,tag=!pot,tag=!action_floor_model,distance=..0.1] unless entity @s[scores={CannonNr=1..}] run scoreboard players operation @s CannonNr = @e[distance=..0.1,limit=1,tag=cannon,tag=!pot,tag=!action_floor] CannonNr