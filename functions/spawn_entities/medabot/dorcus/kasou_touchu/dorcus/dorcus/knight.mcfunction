# Dorcus
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomName:'{"translate":"medabots_server:entity.dorcus"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/medabot/dorcus/kasou_touchu/dorcus/dorcus",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["dorcus","medabot","killerable","hostile","male_tinpet","two_legged_legs","hammer_left_arm","no_defend_right_arm","scout_head","knight_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[distance=..0.1,tag=dorcus,limit=1] {DeathLootTable:"medabots_server:entities/medabot"}
scoreboard players set @e[distance=..0.1,tag=dorcus] Medabot 0
scoreboard players set @e[distance=..0.1,tag=dorcus] Killer 0
scoreboard players set @e[distance=..0.1,tag=dorcus] Charge 0
scoreboard players set @e[distance=..0.1,tag=dorcus] Battle 2
scoreboard players set @e[distance=..0.1,tag=dorcus] MaxHeadUses 6
scoreboard players set @e[distance=..0.1,tag=dorcus] MaxHeadArmor 85
scoreboard players set @e[distance=..0.1,tag=dorcus] MaxRightArmArmor 60
scoreboard players set @e[distance=..0.1,tag=dorcus] MaxLeftArmArmor 45
scoreboard players set @e[distance=..0.1,tag=dorcus] MaxLegsArmor 50
scoreboard players set @e[distance=..0.1,tag=dorcus] HeadPower 72
scoreboard players set @e[distance=..0.1,tag=dorcus] RightArmPower 16
scoreboard players set @e[distance=..0.1,tag=dorcus] LeftArmPower 52
scoreboard players set @e[distance=..0.1,tag=dorcus] LegsDefense 52
scoreboard players operation @e[distance=..0.1,tag=dorcus] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..0.1,tag=dorcus] MedabotNr 1
execute as @e[distance=..0.1,tag=dorcus] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..0.1,tag=dorcus] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..0.1,tag=dorcus] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..0.1,tag=dorcus] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..0.1,tag=dorcus] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:32,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_windfluke"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.defense","with":[{"text":"52"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dorcus"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_windfluke.model"}']},medabots_server:{id:"medabots_server:dorcus_windfluke",gender:0b,move:"two_legged",part:"legs",armor:50,defense:52,activated:0b,model_data:{leg_count:2},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:32,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_intensebeat"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dorcus"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_intensebeat.model"}']},medabots_server:{id:"medabots_server:dorcus_intensebeat",gender:0b,move:"hammer",part:"left_arm",armor:45,power:52,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:5,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kasou_touchu_shitake"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.no_defend"}','{"italic":false,"color":"white","translate":"medabots_server:move.no_defend.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.kasou_touchu"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.kasou_touchu_shitake.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:kasou_touchu_shitake",gender:0b,move:"no_defend",part:"right_arm",armor:60,power:16,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:32,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_twinincome"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.scout"}','{"italic":false,"color":"white","translate":"medabots_server:move.scout.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"85"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dorcus"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_twinincome.model"}']},medabots_server:{id:"medabots_server:dorcus_twinincome",gender:0b,move:"scout",part:"head",armor:85,power:72,uses:6,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..0.1] unless entity @s[scores={MedabotNr=1..}] run scoreboard players operation @s MedabotNr = @e[distance=..0.1,limit=1,tag=dorcus] MedabotNr