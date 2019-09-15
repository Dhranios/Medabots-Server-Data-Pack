# Hellphoenix
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomName:'{"translate":"medabots_server:entity.hellphoenix"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/medabot/hellphoenix/fly_falcon/poison_scorpi/hellphoenix",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["hellphoenix","medabot","killerable","hostile","male_tinpet","fly_legs","melt_left_arm","napalm_right_arm","melt_head","kuwagata_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[distance=..0.1,tag=hellphoenix,limit=1] {DeathLootTable:"medabots_server:entities/medabot"}
scoreboard players set @e[distance=..0.1,tag=hellphoenix] Medabot 0
scoreboard players set @e[distance=..0.1,tag=hellphoenix] Killer 0
scoreboard players set @e[distance=..0.1,tag=hellphoenix] Charge 0
scoreboard players set @e[distance=..0.1,tag=hellphoenix] Battle 2
scoreboard players set @e[distance=..0.1,tag=hellphoenix] MaxHeadUses 7
scoreboard players set @e[distance=..0.1,tag=hellphoenix] MaxHeadArmor 65
scoreboard players set @e[distance=..0.1,tag=hellphoenix] MaxRightArmArmor 50
scoreboard players set @e[distance=..0.1,tag=hellphoenix] MaxLeftArmArmor 45
scoreboard players set @e[distance=..0.1,tag=hellphoenix] MaxLegsArmor 35
scoreboard players set @e[distance=..0.1,tag=hellphoenix] HeadPower 23
scoreboard players set @e[distance=..0.1,tag=hellphoenix] RightArmPower 18
scoreboard players set @e[distance=..0.1,tag=hellphoenix] LeftArmPower 28
scoreboard players set @e[distance=..0.1,tag=hellphoenix] LegsDefense 36
scoreboard players operation @e[distance=..0.1,tag=hellphoenix] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..0.1,tag=hellphoenix] MedabotNr 1
execute as @e[distance=..0.1,tag=hellphoenix] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..0.1,tag=hellphoenix] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..0.1,tag=hellphoenix] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..0.1,tag=hellphoenix] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..0.1,tag=hellphoenix] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_red_tail"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.fly.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.defense","with":[{"text":"36"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_red_tail.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hellphoenix_red_tail",gender:0b,move:"fly",part:"legs",armor:35,defense:36,activated:0b,model_data:{leg_count:0,has_tail:1b},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:7,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_rat"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.poison_scorpi"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_rat.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:poison_scorpi_scorpion_rat",gender:0b,move:"melt",part:"left_arm",armor:45,power:28,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:13,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_burntube"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}','{"italic":false,"color":"white","translate":"medabots_server:move.napalm.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.fly_falcon"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_burntube.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:fly_falcon_burntube",gender:0b,move:"napalm",part:"right_arm",armor:50,power:18,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_blast_gun"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_blast_gun.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hellphoenix_blast_gun",gender:0b,move:"melt",part:"head",armor:65,power:23,uses:7,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..0.1] unless entity @s[scores={MedabotNr=1..}] run scoreboard players operation @s MedabotNr = @e[distance=..0.1,limit=1,tag=hellphoenix] MedabotNr