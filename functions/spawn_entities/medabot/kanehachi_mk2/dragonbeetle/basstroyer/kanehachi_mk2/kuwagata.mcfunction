# Kanehachi Mk2
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomName:'{"translate":"medabots_server:entity.kanehachi_mk2"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/medabot/kanehachi_mk2/dragonbeetle/basstroyer/kanehachi_mk2",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["kanehachi_mk2","medabot","killerable","hostile","male_tinpet","multi_legged_legs","destroy_left_arm","press_right_arm","hold_head","kuwagata_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[distance=..1,tag=kanehachi_mk2,limit=1] {DeathLootTable:"medabots_server:entities/medabot"}
scoreboard players set @e[distance=..1,tag=kanehachi_mk2] Medabot 0
scoreboard players set @e[distance=..1,tag=kanehachi_mk2] Killer 0
scoreboard players set @e[distance=..1,tag=kanehachi_mk2] Charge 0
scoreboard players set @e[distance=..1,tag=kanehachi_mk2] Battle 2
scoreboard players set @e[distance=..1,tag=kanehachi_mk2] MaxHeadUses 9
scoreboard players set @e[distance=..1,tag=kanehachi_mk2] MaxHeadArmor 55
scoreboard players set @e[distance=..1,tag=kanehachi_mk2] MaxRightArmArmor 70
scoreboard players set @e[distance=..1,tag=kanehachi_mk2] MaxLeftArmArmor 35
scoreboard players set @e[distance=..1,tag=kanehachi_mk2] MaxLegsArmor 40
scoreboard players set @e[distance=..1,tag=kanehachi_mk2] HeadPower 28
scoreboard players set @e[distance=..1,tag=kanehachi_mk2] RightArmPower 18
scoreboard players set @e[distance=..1,tag=kanehachi_mk2] LeftArmPower 59
scoreboard players set @e[distance=..1,tag=kanehachi_mk2] LegsDefense 40
scoreboard players operation @e[distance=..1,tag=kanehachi_mk2] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..1,tag=kanehachi_mk2] MedabotNr 1
execute as @e[distance=..1,tag=kanehachi_mk2] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..1,tag=kanehachi_mk2] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..1,tag=kanehachi_mk2] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..1,tag=kanehachi_mk2] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..1,tag=kanehachi_mk2] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:21,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kanehachi_mk2_swick"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.multi_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.multi_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.defense","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.kanehachi_mk2"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.kanehachi_mk2_swick.model"}']},medabots_server:{id:"medabots_server:kanehachi_mk2_swick",gender:0b,move:"multi_legged",part:"legs",armor:40,defense:40,activated:0b,model_data:{leg_count:6},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:20,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.basstroyer_srounding"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.destroy"}','{"italic":false,"color":"white","translate":"medabots_server:move.destroy.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.basstroyer"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.basstroyer_srounding.model"}']},medabots_server:{id:"medabots_server:basstroyer_srounding",gender:0b,move:"destroy",part:"left_arm",armor:35,power:59,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_heavyweighter"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_heavyweighter.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_heavyweighter",gender:0b,move:"press",part:"right_arm",armor:70,power:18,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:21,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kanehachi_mk2_hatchin"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hold"}','{"italic":false,"color":"white","translate":"medabots_server:move.hold.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"9"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.kanehachi_mk2"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.kanehachi_mk2_hatchin.model"}']},medabots_server:{id:"medabots_server:kanehachi_mk2_hatchin",gender:0b,move:"hold",part:"head",armor:55,power:28,uses:9,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..1] unless entity @s[scores={MedabotNr=1..}] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=kanehachi_mk2] MedabotNr