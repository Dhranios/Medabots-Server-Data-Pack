summon minecraft:ghast ~ ~ ~ {ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}],NoAI:1b,Silent:1b,CustomName:'{"translate":"medabots_server:entity.master_hand"}',Tags:["hostile","killerable","master_hand","boss"],DeathLootTable:"medabots_server:entities/master_hand",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,Team:"StageBoss",AbsorptionAmount:1.0f,Health:100.0f}
scoreboard players set @e[distance=..0.7,tag=master_hand] Time 0
scoreboard players set @e[distance=..0.7,tag=master_hand] Dialog 0
scoreboard players set @e[distance=..0.7,tag=master_hand] Sound 0
teleport @e[distance=..0.7,tag=master_hand] ~ ~ ~ ~ 0
execute as @e[distance=..0.7,tag=master_hand] store result score @s HomeRot run data get entity @s Rotation[0]
execute as @e[distance=..0.7,tag=master_hand] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[distance=..0.7,tag=master_hand] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[distance=..0.7,tag=master_hand] store result score @s HomeZ run data get entity @s Pos[2] 100
scoreboard players operation @e[distance=..0.7,tag=master_hand] MasterHandNr > @e[tag=master_hand] MasterHandNr
scoreboard players add @e[distance=..0.7,tag=master_hand] MasterHandNr 1
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["hand","master_hand_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:3,Unbreakable:1b,CustomModelData:6}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["thumb","master_hand_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:3,Unbreakable:1b,CustomModelData:7}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["index_finger","master_hand_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:3,Unbreakable:1b,CustomModelData:8}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["middle_finger","master_hand_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:3,Unbreakable:1b,CustomModelData:9}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ring_finger","master_hand_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:3,Unbreakable:1b,CustomModelData:10}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["pinkie","master_hand_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:3,Unbreakable:1b,CustomModelData:11}}]}
execute as @e[tag=master_hand_model,distance=..0.1] unless entity @s[scores={MasterHandNr=1..}] run scoreboard players operation @s MasterHandNr = @e[distance=..0.1,limit=1,tag=master_hand] MasterHandNr