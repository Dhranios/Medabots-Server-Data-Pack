# Blackbeetle
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomName:'{"translate":"medabots_server:entity.blackbeetle"}',CustomNameVisisble:1b,Team:"EnemyMedabot",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/medabot",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["blackbeetle","medabot","killerable","hostile","female_tinpet","two_legged_legs","monkey_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run tag @e[distance=..0.1,tag=blackbeetle,limit=1] add practice_battle
scoreboard players set @e[distance=..0.1,tag=blackbeetle] Medabot 0
scoreboard players set @e[distance=..0.1,tag=blackbeetle] Killer 0
scoreboard players set @e[distance=..0.1,tag=blackbeetle] Charge 0
scoreboard players set @e[distance=..0.1,tag=blackbeetle] Battle 2
scoreboard players set @e[distance=..0.1,tag=blackbeetle] MaxHeadUses 6
scoreboard players set @e[distance=..0.1,tag=blackbeetle] MaxHeadArmor 65
scoreboard players set @e[distance=..0.1,tag=blackbeetle] MaxRightArmArmor 35
scoreboard players set @e[distance=..0.1,tag=blackbeetle] MaxLeftArmArmor 35
scoreboard players set @e[distance=..0.1,tag=blackbeetle] MaxLegsArmor 40
scoreboard players set @e[distance=..0.1,tag=blackbeetle] HeadPower 31
scoreboard players set @e[distance=..0.1,tag=blackbeetle] RightArmPower 40
scoreboard players set @e[distance=..0.1,tag=blackbeetle] LeftArmPower 28
scoreboard players set @e[distance=..0.1,tag=blackbeetle] LegsDefense 44
scoreboard players operation @e[distance=..0.1,tag=blackbeetle] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..0.1,tag=blackbeetle] MedabotNr 1
execute as @e[distance=..0.1,tag=blackbeetle] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..0.1,tag=blackbeetle] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..0.1,tag=blackbeetle] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..0.1,tag=blackbeetle] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..0.1,tag=blackbeetle] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","female_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:24,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackplace"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"44"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackplace.model"}']},medabots_server:{id:"medabots_server:blackbeetle_blackplace",gender:1b,move:"two_legged",part:"legs",armor:40,defense:44,activated:0b,model_data:{leg_count:2},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","female_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:24,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackblaster"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackblaster.model"}']},medabots_server:{id:"medabots_server:blackbeetle_blackblaster",gender:1b,move:"gatling",part:"left_arm",armor:35,power:28,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","female_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:36,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.fancyroll_magicalbit"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sword"}','{"italic":false,"color":"white","translate":"medabots_server:move.sword.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"30"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.fancyroll"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.fancyroll_magicalbit.model"}']},medabots_server:{id:"medabots_server:fancyroll_magicalbit",gender:1b,move:"sword",part:"right_arm",armor:30,power:20,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","female_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:24,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackbalister"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackbalister.model"}']},medabots_server:{id:"medabots_server:blackbeetle_blackbalister",gender:1b,move:"missile",part:"head",armor:65,power:31,uses:6,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..0.1] unless entity @s[scores={MedabotNr=1..}] run scoreboard players operation @s MedabotNr = @e[distance=..0.1,limit=1,tag=blackbeetle] MedabotNr