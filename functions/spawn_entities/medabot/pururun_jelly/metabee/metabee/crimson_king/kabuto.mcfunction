# Pururun-Jelly
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomName:'{"translate":"medabots_server:entity.pururun_jelly"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/medabot/pururun_jelly/metabee/metabee/crimson_king",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["pururun_jelly","medabot","killerable","hostile","male_tinpet","fly_legs","gatling_left_arm","rifle_right_arm","missile_head","kabuto_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[distance=..0.1,tag=pururun_jelly,limit=1] {DeathLootTable:"medabots_server:entities/medabot"}
scoreboard players set @e[distance=..0.1,tag=pururun_jelly] Medabot 0
scoreboard players set @e[distance=..0.1,tag=pururun_jelly] Killer 0
scoreboard players set @e[distance=..0.1,tag=pururun_jelly] Charge 0
scoreboard players set @e[distance=..0.1,tag=pururun_jelly] Battle 2
scoreboard players set @e[distance=..0.1,tag=pururun_jelly] MaxHeadUses 2
scoreboard players set @e[distance=..0.1,tag=pururun_jelly] MaxHeadArmor 70
scoreboard players set @e[distance=..0.1,tag=pururun_jelly] MaxRightArmArmor 30
scoreboard players set @e[distance=..0.1,tag=pururun_jelly] MaxLeftArmArmor 30
scoreboard players set @e[distance=..0.1,tag=pururun_jelly] MaxLegsArmor 35
scoreboard players set @e[distance=..0.1,tag=pururun_jelly] HeadPower 40
scoreboard players set @e[distance=..0.1,tag=pururun_jelly] RightArmPower 17
scoreboard players set @e[distance=..0.1,tag=pururun_jelly] LeftArmPower 25
scoreboard players set @e[distance=..0.1,tag=pururun_jelly] LegsDefense 78
scoreboard players operation @e[distance=..0.1,tag=pururun_jelly] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..0.1,tag=pururun_jelly] MedabotNr 1
execute as @e[distance=..0.1,tag=pururun_jelly] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..0.1,tag=pururun_jelly] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..0.1,tag=pururun_jelly] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..0.1,tag=pururun_jelly] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..0.1,tag=pururun_jelly] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:61,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.crimson_king_wannafly"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.fly.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.defense","with":[{"text":"78"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.crimson_king"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.crimson_king_wannafly.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:crimson_king_wannafly",gender:0b,move:"fly",part:"legs",armor:35,defense:78,activated:0b,model_data:{leg_count:0},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:62,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.metabee_sub_machine_gun"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"30"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.metabee"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.metabee_sub_machine_gun.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:metabee_sub_machine_gun",gender:0b,move:"gatling",part:"left_arm",armor:30,power:25,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:62,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.metabee_revolver"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"30"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.metabee"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.metabee_revolver.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:metabee_revolver",gender:0b,move:"rifle",part:"right_arm",armor:30,power:17,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:65,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pururun_jelly_missilebase"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"2"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pururun_jelly"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pururun_jelly_missilebase.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pururun_jelly_missilebase",gender:0b,move:"missile",part:"head",armor:70,power:40,uses:2,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..0.1] unless entity @s[scores={MedabotNr=1..}] run scoreboard players operation @s MedabotNr = @e[distance=..0.1,limit=1,tag=pururun_jelly] MedabotNr