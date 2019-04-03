# Blackbeetle
summon minecraft:skeleton -1889 44 -574 {CustomName:'{"translate":"medabots_server:entity.blackbeetle"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/battle_enemies/blackbeetle",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["blackbeetle","enemy_medabot","killerable","hostile","two_legged_legs","gating_left_arm","rifle_right_arm","missile_head","kabuto_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
scoreboard players set @e[x=-1889,y=44,z=-574,distance=..1,tag=blackbeetle] Stage 29
scoreboard players set @e[x=-1889,y=44,z=-574,distance=..1,tag=blackbeetle] Medabot 24
scoreboard players set @e[x=-1889,y=44,z=-574,distance=..1,tag=blackbeetle] Charge 0
scoreboard players set @e[x=-1889,y=44,z=-574,distance=..1,tag=blackbeetle] Battle 2
scoreboard players set @e[x=-1889,y=44,z=-574,distance=..1,tag=blackbeetle] MaxHeadUses 6
scoreboard players set @e[x=-1889,y=44,z=-574,distance=..1,tag=blackbeetle] MaxHeadArmor 65
scoreboard players set @e[x=-1889,y=44,z=-574,distance=..1,tag=blackbeetle] MaxRightArmArmor 35
scoreboard players set @e[x=-1889,y=44,z=-574,distance=..1,tag=blackbeetle] MaxLeftArmArmor 35
scoreboard players set @e[x=-1889,y=44,z=-574,distance=..1,tag=blackbeetle] MaxLegsArmor 40
scoreboard players set @e[x=-1889,y=44,z=-574,distance=..1,tag=blackbeetle] HeadPower 31
scoreboard players set @e[x=-1889,y=44,z=-574,distance=..1,tag=blackbeetle] RightArmPower 40
scoreboard players set @e[x=-1889,y=44,z=-574,distance=..1,tag=blackbeetle] LeftArmPower 28
scoreboard players set @e[x=-1889,y=44,z=-574,distance=..1,tag=blackbeetle] LegsDefense 44
scoreboard players operation @e[x=-1889,y=44,z=-574,distance=..1,tag=blackbeetle] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[x=-1889,y=44,z=-574,distance=..1,tag=blackbeetle] MedabotNr 1
execute as @e[x=-1889,y=44,z=-574,distance=..1,tag=blackbeetle] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1889,y=44,z=-574,distance=..1,tag=blackbeetle] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1889,y=44,z=-574,distance=..1,tag=blackbeetle] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1889,y=44,z=-574,distance=..1,tag=blackbeetle] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1889,y=44,z=-574,distance=..1,tag=blackbeetle] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand -1889 44 -574 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:24,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackplace"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackplace.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackplace.model"}']},medabots_server:{id:"medabots_server:blackbeetle_blackplace",gender:1b,move:"two_legged",part:"legs",armor:40,defense:44,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1889 44 -574 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:24,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackblaster"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackblaster.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackblaster.model"}']},medabots_server:{id:"medabots_server:blackbeetle_blackblaster",gender:1b,move:"gatling",part:"left_arm",armor:35,power:28,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1889 44 -574 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:24,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackfuser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackfuser.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackfuser.model"}']},medabots_server:{id:"medabots_server:blackbeetle_blackfuser",gender:1b,move:"rifle",part:"right_arm",armor:35,power:40,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1889 44 -574 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:24,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackbalister"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackbalister.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackbalister.model"}']},medabots_server:{id:"medabots_server:blackbeetle_blackbalister",gender:1b,move:"missile",part:"head",armor:65,power:31,uses:6,activated:0b,version:1}}}]}
execute positioned -1889 44 -574 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=blackbeetle] MedabotNr