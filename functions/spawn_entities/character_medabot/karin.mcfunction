# Karin
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomName:'{"translate":"medabots_server:entity.karin"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/medabot",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["saintnurse","medabot","killerable","hostile","female_tinpet","two_legged_legs","mermaid_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run tag @e[distance=..0.1,tag=saintnurse,limit=1] add practice_battle
scoreboard players set @e[distance=..0.1,tag=saintnurse] Medabot 40
scoreboard players set @e[distance=..0.1,tag=saintnurse] Killer 0
scoreboard players set @e[distance=..0.1,tag=saintnurse] Charge 0
scoreboard players set @e[distance=..0.1,tag=saintnurse] Battle 2
scoreboard players set @e[distance=..0.1,tag=saintnurse] MaxHeadUses 5
scoreboard players set @e[distance=..0.1,tag=saintnurse] MaxHeadArmor 60
scoreboard players set @e[distance=..0.1,tag=saintnurse] MaxRightArmArmor 40
scoreboard players set @e[distance=..0.1,tag=saintnurse] MaxLeftArmArmor 40
scoreboard players set @e[distance=..0.1,tag=saintnurse] MaxLegsArmor 40
scoreboard players set @e[distance=..0.1,tag=saintnurse] HeadPower 76
scoreboard players set @e[distance=..0.1,tag=saintnurse] RightArmPower 10
scoreboard players set @e[distance=..0.1,tag=saintnurse] LeftArmPower 20
scoreboard players set @e[distance=..0.1,tag=saintnurse] LegsDefense 40
scoreboard players operation @e[distance=..0.1,tag=saintnurse] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..0.1,tag=saintnurse] MedabotNr 1
execute as @e[distance=..0.1,tag=saintnurse] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..0.1,tag=saintnurse] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..0.1,tag=saintnurse] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..0.1,tag=saintnurse] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..0.1,tag=saintnurse] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","female_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:40,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_petticoat"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.defense","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saintnurse"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_petticoat.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:saintnurse_petticoat",gender:1b,move:"two_legged",part:"legs",armor:40,defense:40,activated:0b,model_data:{leg_count:2},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","female_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:40,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_translate"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.heal"}','{"italic":false,"color":"white","translate":"medabots_server:move.heal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saintnurse"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_translate.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:saintnurse_translate",gender:1b,move:"heal",part:"left_arm",armor:40,power:20,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","female_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:40,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_donor"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.heal"}','{"italic":false,"color":"white","translate":"medabots_server:move.heal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saintnurse"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_donor.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:saintnurse_donor",gender:1b,move:"heal",part:"right_arm",armor:40,power:10,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","female_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:40,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_holy_helm"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.perfect_guard"}','{"italic":false,"color":"white","translate":"medabots_server:move.perfect_guard.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saintnurse"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_holy_helm.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:saintnurse_holy_helm",gender:1b,move:"perfect_guard",part:"head",armor:60,power:76,uses:5,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..0.1] unless entity @s[scores={MedabotNr=1..}] run scoreboard players operation @s MedabotNr = @e[distance=..0.1,limit=1,tag=saintnurse] MedabotNr