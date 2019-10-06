# Shrimplips
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomName:'{"translate":"medabots_server:entity.spyke"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/medabot",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["rhinorush","medabot","killerable","hostile","male_tinpet","tank_legs","spider_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run tag @e[distance=..0.1,tag=rhinorush,limit=1] add practice_battle
scoreboard players set @e[distance=..0.1,tag=rhinorush] Medabot 35
scoreboard players set @e[distance=..0.1,tag=rhinorush] Killer 0
scoreboard players set @e[distance=..0.1,tag=rhinorush] Charge 0
scoreboard players set @e[distance=..0.1,tag=rhinorush] Battle 2
scoreboard players set @e[distance=..0.1,tag=rhinorush] MaxHeadUses 4
scoreboard players set @e[distance=..0.1,tag=rhinorush] MaxHeadArmor 90
scoreboard players set @e[distance=..0.1,tag=rhinorush] MaxRightArmArmor 65
scoreboard players set @e[distance=..0.1,tag=rhinorush] MaxLeftArmArmor 65
scoreboard players set @e[distance=..0.1,tag=rhinorush] MaxLegsArmor 85
scoreboard players set @e[distance=..0.1,tag=rhinorush] HeadPower 77
scoreboard players set @e[distance=..0.1,tag=rhinorush] RightArmPower 17
scoreboard players set @e[distance=..0.1,tag=rhinorush] LeftArmPower 22
scoreboard players set @e[distance=..0.1,tag=rhinorush] LegsDefense 48
scoreboard players operation @e[distance=..0.1,tag=rhinorush] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..0.1,tag=rhinorush] MedabotNr 1
execute as @e[distance=..0.1,tag=rhinorush] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..0.1,tag=rhinorush] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..0.1,tag=rhinorush] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..0.1,tag=rhinorush] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..0.1,tag=rhinorush] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:35,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_jaguarnote"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.tank"}','{"italic":false,"color":"white","translate":"medabots_server:move.tank.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.defense","with":[{"text":"48"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"85"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.rhinorush"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_jaguarnote.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:rhinorush_jaguarnote",gender:0b,move:"tank",part:"legs",armor:85,defense:48,activated:0b,model_data:{leg_count:0},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:35,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinoburn"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.rhinorush"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinoburn.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:rhinorush_rhinoburn",gender:0b,move:"missile",part:"left_arm",armor:65,power:22,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:35,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinogone"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.rhinorush"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinogone.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:rhinorush_rhinogone",gender:0b,move:"missile",part:"right_arm",armor:65,power:17,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:35,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinone"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.defense"}','{"italic":false,"color":"white","translate":"medabots_server:move.defense.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"4"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"90"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.rhinorush"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinone.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:rhinorush_rhinone",gender:0b,move:"defense",part:"head",armor:90,power:77,uses:4,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..0.1] unless entity @s[scores={MedabotNr=1..}] run scoreboard players operation @s MedabotNr = @e[distance=..0.1,limit=1,tag=rhinorush] MedabotNr