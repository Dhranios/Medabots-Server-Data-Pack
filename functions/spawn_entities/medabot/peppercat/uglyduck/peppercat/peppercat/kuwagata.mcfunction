# Peppercat
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomName:'{"translate":"medabots_server:entity.peppercat"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/medabot/peppercat/uglyduck/peppercat/peppercat",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["peppercat","medabot","killerable","hostile","female_tinpet","two_legged_legs","kuwagata_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[distance=..0.1,tag=peppercat,limit=1] {DeathLootTable:"medabots_server:entities/medabot"}
scoreboard players set @e[distance=..0.1,tag=peppercat] Medabot 0
scoreboard players set @e[distance=..0.1,tag=peppercat] Killer 0
scoreboard players set @e[distance=..0.1,tag=peppercat] Charge 0
scoreboard players set @e[distance=..0.1,tag=peppercat] Battle 2
scoreboard players set @e[distance=..0.1,tag=peppercat] MaxHeadUses 7
scoreboard players set @e[distance=..0.1,tag=peppercat] MaxHeadArmor 40
scoreboard players set @e[distance=..0.1,tag=peppercat] MaxRightArmArmor 65
scoreboard players set @e[distance=..0.1,tag=peppercat] MaxLeftArmArmor 40
scoreboard players set @e[distance=..0.1,tag=peppercat] MaxLegsArmor 40
scoreboard players set @e[distance=..0.1,tag=peppercat] HeadPower 44
scoreboard players set @e[distance=..0.1,tag=peppercat] RightArmPower 26
scoreboard players set @e[distance=..0.1,tag=peppercat] LeftArmPower 28
scoreboard players set @e[distance=..0.1,tag=peppercat] LegsDefense 40
scoreboard players operation @e[distance=..0.1,tag=peppercat] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..0.1,tag=peppercat] MedabotNr 1
execute as @e[distance=..0.1,tag=peppercat] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..0.1,tag=peppercat] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..0.1,tag=peppercat] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..0.1,tag=peppercat] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..0.1,tag=peppercat] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","female_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:27,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_quick_alert"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.defense","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.peppercat"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_quick_alert.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:peppercat_quick_alert",gender:1b,move:"two_legged",part:"legs",armor:40,defense:40,activated:0b,model_data:{leg_count:2,has_tail:1b},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","female_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:27,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_light_blow"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.paralyze"}','{"italic":false,"color":"white","translate":"medabots_server:move.paralyze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.peppercat"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_light_blow.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:peppercat_light_blow",gender:1b,move:"paralyze",part:"left_arm",armor:40,power:28,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","female_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:42,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.uglyduck_feathermend"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:move.break.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.uglyduck"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.uglyduck_feathermend.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:uglyduck_feathermend",gender:1b,move:"break",part:"right_arm",armor:65,power:26,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","female_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:27,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_lightcircuit"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.paralyze"}','{"italic":false,"color":"white","translate":"medabots_server:move.paralyze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.peppercat"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_lightcircuit.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:peppercat_lightcircuit",gender:1b,move:"paralyze",part:"head",armor:60,power:44,uses:7,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..0.1] unless entity @s[scores={MedabotNr=1..}] run scoreboard players operation @s MedabotNr = @e[distance=..0.1,limit=1,tag=peppercat] MedabotNr