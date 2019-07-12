# Rokusho
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomName:'{"translate":"medabots_server:entity.rokusho"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/enemy_medabot/rokusho/primity_baby/rokusho/primity_baby",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["rokusho","enemy_medabot","killerable","hostile","male_tinpet","float_legs","hammer_left_arm","confuse_right_arm","scout_head","kuwagata_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[distance=..1,tag=rokusho,limit=1] {DeathLootTable:"medabots_server:entities/medabot"}
scoreboard players set @e[distance=..1,tag=rokusho] Medabot 0
scoreboard players set @e[distance=..1,tag=rokusho] Killer 0
scoreboard players set @e[distance=..1,tag=rokusho] Charge 0
scoreboard players set @e[distance=..1,tag=rokusho] Battle 2
scoreboard players set @e[distance=..1,tag=rokusho] MaxHeadUses 3
scoreboard players set @e[distance=..1,tag=rokusho] MaxHeadArmor 80
scoreboard players set @e[distance=..1,tag=rokusho] MaxRightArmArmor 60
scoreboard players set @e[distance=..1,tag=rokusho] MaxLeftArmArmor 30
scoreboard players set @e[distance=..1,tag=rokusho] MaxLegsArmor 110
scoreboard players set @e[distance=..1,tag=rokusho] HeadPower 37
scoreboard players set @e[distance=..1,tag=rokusho] RightArmPower 51
scoreboard players set @e[distance=..1,tag=rokusho] LeftArmPower 25
scoreboard players set @e[distance=..1,tag=rokusho] LegsDefense 37
scoreboard players operation @e[distance=..1,tag=rokusho] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..1,tag=rokusho] MedabotNr 1
execute as @e[distance=..1,tag=rokusho] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..1,tag=rokusho] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..1,tag=rokusho] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..1,tag=rokusho] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..1,tag=rokusho] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:57,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.primity_baby_umbilical"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.float"}','{"italic":false,"color":"white","translate":"medabots_server:move.float.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"110"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.primity_baby"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.primity_baby_umbilical.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:primity_baby_umbilical",gender:0b,move:"float",part:"legs",armor:110,defense:37,activated:0b,model_data:{leg_count:0,has_tail:1b},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:63,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.rokusho_pipo_hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"30"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.rokusho"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.rokusho_pipo_hammer.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:rokusho_pipo_hammer",gender:0b,move:"hammer",part:"left_arm",armor:30,power:25,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:57,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.primity_baby_past_touch"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.confuse"}','{"italic":false,"color":"white","translate":"medabots_server:move.confuse.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.primity_baby"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.primity_baby_past_touch.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:primity_baby_past_touch",gender:0b,move:"confuse",part:"right_arm",armor:60,power:51,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:63,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.rokusho_antenna"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.scout"}','{"italic":false,"color":"white","translate":"medabots_server:move.scout.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"3"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.rokusho"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.rokusho_antenna.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:rokusho_antenna",gender:0b,move:"scout",part:"head",armor:80,power:37,uses:3,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..1] unless entity @s[scores={MedabotNr=1..}] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=rokusho] MedabotNr