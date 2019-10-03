# Le Villan
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomName:'{"translate":"medabots_server:entity.le_villain"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/medabot/le_villain/warbonnet/crimson_king/le_villain",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["le_villain","medabot","killerable","hostile","male_tinpet","wheel_legs","chameleon_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[distance=..0.1,tag=le_villain,limit=1] {DeathLootTable:"medabots_server:entities/medabot"}
scoreboard players set @e[distance=..0.1,tag=le_villain] Medabot 0
scoreboard players set @e[distance=..0.1,tag=le_villain] Killer 0
scoreboard players set @e[distance=..0.1,tag=le_villain] Charge 0
scoreboard players set @e[distance=..0.1,tag=le_villain] Battle 2
scoreboard players set @e[distance=..0.1,tag=le_villain] MaxHeadUses 4
scoreboard players set @e[distance=..0.1,tag=le_villain] MaxHeadArmor 50
scoreboard players set @e[distance=..0.1,tag=le_villain] MaxRightArmArmor 30
scoreboard players set @e[distance=..0.1,tag=le_villain] MaxLeftArmArmor 30
scoreboard players set @e[distance=..0.1,tag=le_villain] MaxLegsArmor 55
scoreboard players set @e[distance=..0.1,tag=le_villain] HeadPower 17
scoreboard players set @e[distance=..0.1,tag=le_villain] RightArmPower 25
scoreboard players set @e[distance=..0.1,tag=le_villain] LeftArmPower 39
scoreboard players set @e[distance=..0.1,tag=le_villain] LegsDefense 35
scoreboard players operation @e[distance=..0.1,tag=le_villain] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..0.1,tag=le_villain] MedabotNr 1
execute as @e[distance=..0.1,tag=le_villain] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..0.1,tag=le_villain] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..0.1,tag=le_villain] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..0.1,tag=le_villain] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..0.1,tag=le_villain] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:66,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.le_villain_protoauto"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.wheel"}','{"italic":false,"color":"white","translate":"medabots_server:move.wheel.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.defense","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.le_villain"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.le_villain_protoauto.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:le_villain_protoauto",gender:0b,move:"wheel",part:"legs",armor:55,defense:35,activated:0b,model_data:{leg_count:0},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:61,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.crimson_king_dopa_punch"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.destroy"}','{"italic":false,"color":"white","translate":"medabots_server:move.destroy.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"30"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.crimson_king"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.crimson_king_dopa_punch.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:crimson_king_dopa_punch",gender:0b,move:"destroy",part:"left_arm",armor:30,power:39,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:56,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.warbonnet_shoot_barrel"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"30"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.warbonnet"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.warbonnet_shoot_barrel.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:warbonnet_shoot_barrel",gender:0b,move:"rifle",part:"right_arm",armor:30,power:25,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:66,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.le_villain_grave_lane"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"4"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.le_villain"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.le_villain_grave_lane.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:le_villain_grave_lane",gender:0b,move:"laser",part:"head",armor:50,power:17,uses:4,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..0.1] unless entity @s[scores={MedabotNr=1..}] run scoreboard players operation @s MedabotNr = @e[distance=..0.1,limit=1,tag=le_villain] MedabotNr