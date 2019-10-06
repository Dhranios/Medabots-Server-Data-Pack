# Primity Baby
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomName:'{"translate":"medabots_server:entity.primity_baby"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/medabot",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["primity_baby","medabot","killerable","hostile","male_tinpet","swim_legs","kuwagata_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run tag @e[distance=..0.1,tag=primity_baby,limit=1] add practice_battle
scoreboard players set @e[distance=..0.1,tag=primity_baby] Medabot 0
scoreboard players set @e[distance=..0.1,tag=primity_baby] Killer 0
scoreboard players set @e[distance=..0.1,tag=primity_baby] Charge 0
scoreboard players set @e[distance=..0.1,tag=primity_baby] Battle 2
scoreboard players set @e[distance=..0.1,tag=primity_baby] MaxHeadUses 2
scoreboard players set @e[distance=..0.1,tag=primity_baby] MaxHeadArmor 90
scoreboard players set @e[distance=..0.1,tag=primity_baby] MaxRightArmArmor 30
scoreboard players set @e[distance=..0.1,tag=primity_baby] MaxLeftArmArmor 30
scoreboard players set @e[distance=..0.1,tag=primity_baby] MaxLegsArmor 60
scoreboard players set @e[distance=..0.1,tag=primity_baby] HeadPower 58
scoreboard players set @e[distance=..0.1,tag=primity_baby] RightArmPower 17
scoreboard players set @e[distance=..0.1,tag=primity_baby] LeftArmPower 17
scoreboard players set @e[distance=..0.1,tag=primity_baby] LegsDefense 14
scoreboard players operation @e[distance=..0.1,tag=primity_baby] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..0.1,tag=primity_baby] MedabotNr 1
execute as @e[distance=..0.1,tag=primity_baby] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..0.1,tag=primity_baby] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..0.1,tag=primity_baby] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..0.1,tag=primity_baby] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..0.1,tag=primity_baby] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:59,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.yuchitang_smacker"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.swim"}','{"italic":false,"color":"white","translate":"medabots_server:move.swim.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"14"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.yuchitang"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.yuchitang_smacker.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:yuchitang_smacker",gender:0b,move:"swim",part:"legs",armor:60,defense:14,activated:0b,model_data:{leg_count:0,has_wormtail:1b},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:56,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.warbonnet_range_shooter"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"30"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.warbonnet"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.warbonnet_range_shooter.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:warbonnet_range_shooter",gender:0b,move:"gatling",part:"left_arm",armor:30,power:17,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:63,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.rokusho_sword"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sword"}','{"italic":false,"color":"white","translate":"medabots_server:move.sword.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"30"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.rokusho"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.rokusho_sword.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:rokusho_sword",gender:0b,move:"sword",part:"right_arm",armor:30,power:17,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:57,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.primity_baby_fracture"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.medaforce_control"}','{"italic":false,"color":"white","translate":"medabots_server:move.medaforce_control.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"2"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"90"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.primity_baby"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.primity_baby_fracture.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:primity_baby_fracture",gender:0b,move:"medaforce_control",part:"head",armor:90,power:58,uses:2,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..0.1] unless entity @s[scores={MedabotNr=1..}] run scoreboard players operation @s MedabotNr = @e[distance=..0.1,limit=1,tag=primity_baby] MedabotNr