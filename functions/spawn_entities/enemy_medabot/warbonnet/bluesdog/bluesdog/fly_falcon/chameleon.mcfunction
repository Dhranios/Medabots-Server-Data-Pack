# Warbonnet
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomName:'{"translate":"medabots_server:entity.warbonnet"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/enemy_medabot/warbonnet/bluesdog/bluesdog/fly_falcon",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["warbonnet","enemy_medabot","killerable","hostile","male_tinpet","fly_legs","rifle_left_arm","rifle_right_arm","auxiliary_charge_head","chameleon_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[distance=..1,tag=warbonnet,limit=1] {DeathLootTable:"medabots_server:entities/medabot"}
scoreboard players set @e[distance=..1,tag=warbonnet] Medabot 0
scoreboard players set @e[distance=..1,tag=warbonnet] Killer 0
scoreboard players set @e[distance=..1,tag=warbonnet] Charge 0
scoreboard players set @e[distance=..1,tag=warbonnet] Battle 2
scoreboard players set @e[distance=..1,tag=warbonnet] MaxHeadUses 3
scoreboard players set @e[distance=..1,tag=warbonnet] MaxHeadArmor 60
scoreboard players set @e[distance=..1,tag=warbonnet] MaxRightArmArmor 40
scoreboard players set @e[distance=..1,tag=warbonnet] MaxLeftArmArmor 40
scoreboard players set @e[distance=..1,tag=warbonnet] MaxLegsArmor 40
scoreboard players set @e[distance=..1,tag=warbonnet] HeadPower 29
scoreboard players set @e[distance=..1,tag=warbonnet] RightArmPower 16
scoreboard players set @e[distance=..1,tag=warbonnet] LeftArmPower 20
scoreboard players set @e[distance=..1,tag=warbonnet] LegsDefense 20
scoreboard players operation @e[distance=..1,tag=warbonnet] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..1,tag=warbonnet] MedabotNr 1
execute as @e[distance=..1,tag=warbonnet] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..1,tag=warbonnet] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..1,tag=warbonnet] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..1,tag=warbonnet] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..1,tag=warbonnet] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:13,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_flyphone"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.fly.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.fly_falcon"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_flyphone.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:fly_falcon_flyphone",gender:0b,move:"fly",part:"legs",armor:40,defense:20,activated:0b,model_data:{leg_count:0},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:8,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_battle_rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.bluesdog"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_battle_rifle.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:bluesdog_battle_rifle",gender:0b,move:"rifle",part:"left_arm",armor:40,power:20,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:8,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_aim_rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.bluesdog"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_aim_rifle.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:bluesdog_aim_rifle",gender:0b,move:"rifle",part:"right_arm",armor:40,power:16,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:56,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.warbonnet_tension_up"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.auxiliary_charge"}','{"italic":false,"color":"white","translate":"medabots_server:move.auxiliary_charge.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"3"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.warbonnet"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.warbonnet_tension_up.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:warbonnet_tension_up",gender:0b,move:"auxiliary_charge",part:"head",armor:60,power:29,uses:3,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..1] unless entity @s[scores={MedabotNr=1..}] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=warbonnet] MedabotNr