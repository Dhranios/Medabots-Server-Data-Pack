# Bluesdog
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomName:'{"translate":"medabots_server:entity.bluesdog"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/medabot/bluesdog/fly_falcon/bluesdog/bluesdog",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["bluesdog","medabot","killerable","hostile","male_tinpet","two_legged_legs","rifle_left_arm","napalm_right_arm","rifle_head","kuwagata_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[distance=..1,tag=bluesdog,limit=1] {DeathLootTable:"medabots_server:entities/medabot"}
scoreboard players set @e[distance=..1,tag=bluesdog] Medabot 0
scoreboard players set @e[distance=..1,tag=bluesdog] Killer 0
scoreboard players set @e[distance=..1,tag=bluesdog] Charge 0
scoreboard players set @e[distance=..1,tag=bluesdog] Battle 2
scoreboard players set @e[distance=..1,tag=bluesdog] MaxHeadUses 18
scoreboard players set @e[distance=..1,tag=bluesdog] MaxHeadArmor 60
scoreboard players set @e[distance=..1,tag=bluesdog] MaxRightArmArmor 50
scoreboard players set @e[distance=..1,tag=bluesdog] MaxLeftArmArmor 40
scoreboard players set @e[distance=..1,tag=bluesdog] MaxLegsArmor 45
scoreboard players set @e[distance=..1,tag=bluesdog] HeadPower 40
scoreboard players set @e[distance=..1,tag=bluesdog] RightArmPower 18
scoreboard players set @e[distance=..1,tag=bluesdog] LeftArmPower 20
scoreboard players set @e[distance=..1,tag=bluesdog] LegsDefense 36
scoreboard players operation @e[distance=..1,tag=bluesdog] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..1,tag=bluesdog] MedabotNr 1
execute as @e[distance=..1,tag=bluesdog] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..1,tag=bluesdog] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..1,tag=bluesdog] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..1,tag=bluesdog] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..1,tag=bluesdog] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:8,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_howzer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.defense","with":[{"text":"36"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.bluesdog"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_howzer.model"}']},medabots_server:{id:"medabots_server:bluesdog_howzer",gender:0b,move:"two_legged",part:"legs",armor:45,defense:36,activated:0b,model_data:{leg_count:2},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:8,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_battle_rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.bluesdog"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_battle_rifle.model"}']},medabots_server:{id:"medabots_server:bluesdog_battle_rifle",gender:0b,move:"rifle",part:"left_arm",armor:40,power:20,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:13,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_burntube"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}','{"italic":false,"color":"white","translate":"medabots_server:move.napalm.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.fly_falcon"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_burntube.model"}']},medabots_server:{id:"medabots_server:fly_falcon_burntube",gender:0b,move:"napalm",part:"right_arm",armor:50,power:18,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:8,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_headcannon"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"18"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.bluesdog"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_headcannon.model"}']},medabots_server:{id:"medabots_server:bluesdog_headcannon",gender:0b,move:"rifle",part:"head",armor:60,power:40,uses:18,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..1] unless entity @s[scores={MedabotNr=1..}] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=bluesdog] MedabotNr