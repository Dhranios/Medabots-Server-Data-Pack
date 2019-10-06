# Attack-Tyrano
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomName:'{"translate":"medabots_server:entity.attack_tyrano"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/medabot",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["attack_tyrano","medabot","killerable","hostile","male_tinpet","swim_legs","kuwagata_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run tag @e[distance=..0.1,tag=attack_tyrano,limit=1] add practice_battle
scoreboard players set @e[distance=..0.1,tag=attack_tyrano] Medabot 9
scoreboard players set @e[distance=..0.1,tag=attack_tyrano] Killer 0
scoreboard players set @e[distance=..0.1,tag=attack_tyrano] Charge 0
scoreboard players set @e[distance=..0.1,tag=attack_tyrano] Battle 2
scoreboard players set @e[distance=..0.1,tag=attack_tyrano] MaxHeadUses 7
scoreboard players set @e[distance=..0.1,tag=attack_tyrano] MaxHeadArmor 70
scoreboard players set @e[distance=..0.1,tag=attack_tyrano] MaxRightArmArmor 40
scoreboard players set @e[distance=..0.1,tag=attack_tyrano] MaxLeftArmArmor 40
scoreboard players set @e[distance=..0.1,tag=attack_tyrano] MaxLegsArmor 45
scoreboard players set @e[distance=..0.1,tag=attack_tyrano] HeadPower 17
scoreboard players set @e[distance=..0.1,tag=attack_tyrano] RightArmPower 24
scoreboard players set @e[distance=..0.1,tag=attack_tyrano] LeftArmPower 32
scoreboard players set @e[distance=..0.1,tag=attack_tyrano] LegsDefense 44
scoreboard players operation @e[distance=..0.1,tag=attack_tyrano] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..0.1,tag=attack_tyrano] MedabotNr 1
execute as @e[distance=..0.1,tag=attack_tyrano] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..0.1,tag=attack_tyrano] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..0.1,tag=attack_tyrano] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..0.1,tag=attack_tyrano] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..0.1,tag=attack_tyrano] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:9,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_attach_leg"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.defense","with":[{"text":"44"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.attack_tyrano"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_attach_leg.model"}']},medabots_server:{id:"medabots_server:attack_tyrano_attach_leg",gender:0b,move:"two_legged",part:"legs",armor:45,defense:44,activated:0b,model_data:{leg_count:2},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:9,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_strike_hit"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.attack_tyrano"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_strike_hit.model"}']},medabots_server:{id:"medabots_server:attack_tyrano_strike_hit",gender:0b,move:"hammer",part:"left_arm",armor:40,power:32,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:9,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_crab_hit"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.attack_tyrano"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_crab_hit.model"}']},medabots_server:{id:"medabots_server:attack_tyrano_crab_hit",gender:0b,move:"hammer",part:"right_arm",armor:40,power:24,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:9,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_breathfire"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.attack_tyrano"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_breathfire.model"}']},medabots_server:{id:"medabots_server:attack_tyrano_breathfire",gender:0b,move:"melt",part:"head",armor:70,power:17,uses:7,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..0.1] unless entity @s[scores={MedabotNr=1..}] run scoreboard players operation @s MedabotNr = @e[distance=..0.1,limit=1,tag=attack_tyrano] MedabotNr