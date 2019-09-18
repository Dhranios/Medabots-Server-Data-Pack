# Knight Armor
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomName:'{"translate":"medabots_server:entity.knight_armor"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/medabot/knight_armor/nin_ninja/doctor_study/knight_armor",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["knight_armor","medabot","killerable","hostile","male_tinpet","wheel_legs","scout_left_arm","sword_right_arm","defense_head","chameleon_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[distance=..0.1,tag=knight_armor,limit=1] {DeathLootTable:"medabots_server:entities/medabot"}
scoreboard players set @e[distance=..0.1,tag=knight_armor] Medabot 0
scoreboard players set @e[distance=..0.1,tag=knight_armor] Killer 0
scoreboard players set @e[distance=..0.1,tag=knight_armor] Charge 0
scoreboard players set @e[distance=..0.1,tag=knight_armor] Battle 2
scoreboard players set @e[distance=..0.1,tag=knight_armor] MaxHeadUses 8
scoreboard players set @e[distance=..0.1,tag=knight_armor] MaxHeadArmor 100
scoreboard players set @e[distance=..0.1,tag=knight_armor] MaxRightArmArmor 40
scoreboard players set @e[distance=..0.1,tag=knight_armor] MaxLeftArmArmor 65
scoreboard players set @e[distance=..0.1,tag=knight_armor] MaxLegsArmor 60
scoreboard players set @e[distance=..0.1,tag=knight_armor] HeadPower 52
scoreboard players set @e[distance=..0.1,tag=knight_armor] RightArmPower 20
scoreboard players set @e[distance=..0.1,tag=knight_armor] LeftArmPower 41
scoreboard players set @e[distance=..0.1,tag=knight_armor] LegsDefense 32
scoreboard players operation @e[distance=..0.1,tag=knight_armor] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..0.1,tag=knight_armor] MedabotNr 1
execute as @e[distance=..0.1,tag=knight_armor] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..0.1,tag=knight_armor] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..0.1,tag=knight_armor] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..0.1,tag=knight_armor] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..0.1,tag=knight_armor] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:2,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.knight_armor_troyan_horse"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.wheel"}','{"italic":false,"color":"white","translate":"medabots_server:move.wheel.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.defense","with":[{"text":"32"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.knight_armor"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.knight_armor_troyan_horse.model"}']},medabots_server:{id:"medabots_server:knight_armor_troyan_horse",gender:0b,move:"wheel",part:"legs",armor:60,defense:32,activated:0b,model_data:{leg_count:0},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:3,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.doctor_study_cut_radar"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.scout"}','{"italic":false,"color":"white","translate":"medabots_server:move.scout.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.doctor_study"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.doctor_study_cut_radar.model"}']},medabots_server:{id:"medabots_server:doctor_study_cut_radar",gender:0b,move:"scout",part:"left_arm",armor:65,power:41,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:69,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_ninja_dagger"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sword"}','{"italic":false,"color":"white","translate":"medabots_server:move.sword.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.nin_ninja"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_ninja_dagger.model"}']},medabots_server:{id:"medabots_server:nin_ninja_ninja_dagger",gender:0b,move:"sword",part:"right_arm",armor:40,power:20,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:2,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.knight_armor_clearshield"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.defense"}','{"italic":false,"color":"white","translate":"medabots_server:move.defense.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"8"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"100"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.knight_armor"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.knight_armor_clearshield.model"}']},medabots_server:{id:"medabots_server:knight_armor_clearshield",gender:0b,move:"defense",part:"head",armor:100,power:52,uses:8,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..0.1] unless entity @s[scores={MedabotNr=1..}] run scoreboard players operation @s MedabotNr = @e[distance=..0.1,limit=1,tag=knight_armor] MedabotNr