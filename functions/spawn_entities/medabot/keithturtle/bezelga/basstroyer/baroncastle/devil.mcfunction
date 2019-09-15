# Keithturtle
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomName:'{"translate":"medabots_server:entity.keithturtle"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/medabot/keithturtle/bezelga/basstroyer/baroncastle",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["keithturtle","medabot","killerable","hostile","male_tinpet","float_legs","destroy_left_arm","sacrifice_right_arm","laser_head","devil_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[distance=..0.1,tag=keithturtle,limit=1] {DeathLootTable:"medabots_server:entities/medabot"}
scoreboard players set @e[distance=..0.1,tag=keithturtle] Medabot 0
scoreboard players set @e[distance=..0.1,tag=keithturtle] Killer 0
scoreboard players set @e[distance=..0.1,tag=keithturtle] Charge 0
scoreboard players set @e[distance=..0.1,tag=keithturtle] Battle 2
scoreboard players set @e[distance=..0.1,tag=keithturtle] MaxHeadUses 5
scoreboard players set @e[distance=..0.1,tag=keithturtle] MaxHeadArmor 50
scoreboard players set @e[distance=..0.1,tag=keithturtle] MaxRightArmArmor 15
scoreboard players set @e[distance=..0.1,tag=keithturtle] MaxLeftArmArmor 35
scoreboard players set @e[distance=..0.1,tag=keithturtle] MaxLegsArmor 60
scoreboard players set @e[distance=..0.1,tag=keithturtle] HeadPower 48
scoreboard players set @e[distance=..0.1,tag=keithturtle] RightArmPower 66
scoreboard players set @e[distance=..0.1,tag=keithturtle] LeftArmPower 59
scoreboard players set @e[distance=..0.1,tag=keithturtle] LegsDefense 28
scoreboard players operation @e[distance=..0.1,tag=keithturtle] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..0.1,tag=keithturtle] MedabotNr 1
execute as @e[distance=..0.1,tag=keithturtle] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..0.1,tag=keithturtle] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..0.1,tag=keithturtle] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..0.1,tag=keithturtle] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..0.1,tag=keithturtle] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:11,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_tyrantower"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.float"}','{"italic":false,"color":"white","translate":"medabots_server:move.float.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"28"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.baroncastle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_tyrantower.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:baroncastle_tyrantower",gender:0b,move:"float",part:"legs",armor:60,defense:28,activated:0b,model_data:{leg_count:0},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:20,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.basstroyer_srounding"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.destroy"}','{"italic":false,"color":"white","translate":"medabots_server:move.destroy.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.basstroyer"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.basstroyer_srounding.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:basstroyer_srounding",gender:0b,move:"destroy",part:"left_arm",armor:35,power:59,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:16,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bezelga_helmight"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sacrifice"}','{"italic":false,"color":"white","translate":"medabots_server:move.sacrifice.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.1"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"15"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.bezelga"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.bezelga_helmight.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:bezelga_helmight",gender:0b,move:"sacrifice",part:"right_arm",armor:15,power:66,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_tyranolaser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_tyranolaser.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:keithturtle_tyranolaser",gender:0b,move:"laser",part:"head",armor:50,power:48,uses:5,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..0.1] unless entity @s[scores={MedabotNr=1..}] run scoreboard players operation @s MedabotNr = @e[distance=..0.1,limit=1,tag=keithturtle] MedabotNr