# Fly-Falcon
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomName:'{"translate":"medabots_server:entity.fly_falcon"}',CustomNameVisisble:1b,Team:"EnemyMedabot",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/medabot",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["fly_falcon","medabot","killerable","hostile","male_tinpet","fly_legs","melee_trap_right_arm","kabuto_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run tag @e[distance=..0.1,tag=fly_falcon,limit=1] add practice_battle
scoreboard players set @e[distance=..0.1,tag=fly_falcon] Medabot 0
scoreboard players set @e[distance=..0.1,tag=fly_falcon] Killer 0
scoreboard players set @e[distance=..0.1,tag=fly_falcon] Charge 0
scoreboard players set @e[distance=..0.1,tag=fly_falcon] Battle 2
scoreboard players set @e[distance=..0.1,tag=fly_falcon] MaxHeadUses 7
scoreboard players set @e[distance=..0.1,tag=fly_falcon] MaxHeadArmor 80
scoreboard players set @e[distance=..0.1,tag=fly_falcon] MaxRightArmArmor 45
scoreboard players set @e[distance=..0.1,tag=fly_falcon] MaxLeftArmArmor 35
scoreboard players set @e[distance=..0.1,tag=fly_falcon] MaxLegsArmor 40
scoreboard players set @e[distance=..0.1,tag=fly_falcon] HeadPower 25
scoreboard players set @e[distance=..0.1,tag=fly_falcon] RightArmPower 23
scoreboard players set @e[distance=..0.1,tag=fly_falcon] LeftArmPower 59
scoreboard players set @e[distance=..0.1,tag=fly_falcon] LegsDefense 20
scoreboard players operation @e[distance=..0.1,tag=fly_falcon] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..0.1,tag=fly_falcon] MedabotNr 1
execute as @e[distance=..0.1,tag=fly_falcon] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..0.1,tag=fly_falcon] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..0.1,tag=fly_falcon] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..0.1,tag=fly_falcon] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..0.1,tag=fly_falcon] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:13,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_flyphone"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.fly.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"20"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.fly_falcon"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_flyphone.model"}']},medabots_server:{id:"medabots_server:fly_falcon_fly_phone",gender:0b,move:"fly",part:"legs",armor:40,defense:20,activated:0b,model_data:{leg_count:0},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:20,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.basstroyer_srounding"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.destroy"}','{"italic":false,"color":"white","translate":"medabots_server:move.destroy.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.basstroyer"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.basstroyer_srounding.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:basstroyer_srounding",gender:0b,move:"destroy",part:"left_arm",armor:35,power:59,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:18,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.shoot_spider_cheapertrap"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melee_trap"}','{"italic":false,"color":"white","translate":"medabots_server:move.melee_trap.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.shoot_spider"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.shoot_spider_cheapertrap.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:shoot_spider_cheapertrap",gender:0b,move:"melee_trap",part:"right_arm",armor:45,power:23,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:13,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_burn_head"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}','{"italic":false,"color":"white","translate":"medabots_server:move.napalm.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.fly_falcon"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_burn_head.model"}']},medabots_server:{id:"medabots_server:fly_falcon_burn_head",gender:0b,move:"napalm",part:"head",armor:80,power:25,uses:7,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..0.1] unless entity @s[scores={MedabotNr=1..}] run scoreboard players operation @s MedabotNr = @e[distance=..0.1,limit=1,tag=fly_falcon] MedabotNr