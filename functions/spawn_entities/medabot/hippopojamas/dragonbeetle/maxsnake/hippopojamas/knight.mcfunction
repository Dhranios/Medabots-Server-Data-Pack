# Hippopojamas
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomName:'{"translate":"medabots_server:entity.hippopojamas"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/medabot/hippopojamas/dragonbeetle/maxsnake/hippopojamas",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["hippopojamas","medabot","killerable","hostile","male_tinpet","tank_legs","infect_left_arm","press_right_arm","defense_head","knight_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[distance=..0.1,tag=hippopojamas,limit=1] {DeathLootTable:"medabots_server:entities/medabot"}
scoreboard players set @e[distance=..0.1,tag=hippopojamas] Medabot 0
scoreboard players set @e[distance=..0.1,tag=hippopojamas] Killer 0
scoreboard players set @e[distance=..0.1,tag=hippopojamas] Charge 0
scoreboard players set @e[distance=..0.1,tag=hippopojamas] Battle 2
scoreboard players set @e[distance=..0.1,tag=hippopojamas] MaxHeadUses 4
scoreboard players set @e[distance=..0.1,tag=hippopojamas] MaxHeadArmor 85
scoreboard players set @e[distance=..0.1,tag=hippopojamas] MaxRightArmArmor 70
scoreboard players set @e[distance=..0.1,tag=hippopojamas] MaxLeftArmArmor 45
scoreboard players set @e[distance=..0.1,tag=hippopojamas] MaxLegsArmor 80
scoreboard players set @e[distance=..0.1,tag=hippopojamas] HeadPower 88
scoreboard players set @e[distance=..0.1,tag=hippopojamas] RightArmPower 18
scoreboard players set @e[distance=..0.1,tag=hippopojamas] LeftArmPower 38
scoreboard players set @e[distance=..0.1,tag=hippopojamas] LegsDefense 80
scoreboard players operation @e[distance=..0.1,tag=hippopojamas] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..0.1,tag=hippopojamas] MedabotNr 1
execute as @e[distance=..0.1,tag=hippopojamas] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..0.1,tag=hippopojamas] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..0.1,tag=hippopojamas] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..0.1,tag=hippopojamas] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..0.1,tag=hippopojamas] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:34,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hippopojamas_hipporet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.tank"}','{"italic":false,"color":"white","translate":"medabots_server:move.tank.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.defense","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hippopojamas"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hippopojamas_hipporet.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hippopojamas_hipporet",gender:0b,move:"tank",part:"legs",armor:80,defense:80,activated:0b,model_data:{leg_count:0},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:6,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_jack"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.infect"}','{"italic":false,"color":"white","translate":"medabots_server:move.infect.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.maxsnake"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_jack.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:maxsnake_jack",gender:0b,move:"infect",part:"left_arm",armor:45,power:38,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_heavyweighter"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_heavyweighter.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_heavyweighter",gender:0b,move:"press",part:"right_arm",armor:70,power:18,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:34,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hippopojamas_hippotent"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.defense"}','{"italic":false,"color":"white","translate":"medabots_server:move.defense.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"4"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"85"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hippopojamas"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hippopojamas_hippotent.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hippopojamas_hippotent",gender:0b,move:"defense",part:"head",armor:85,power:88,uses:4,activated:0b,model_data:{has_head:0b},version:1}}}]}
execute as @e[tag=medabot_model,distance=..0.1] unless entity @s[scores={MedabotNr=1..}] run scoreboard players operation @s MedabotNr = @e[distance=..0.1,limit=1,tag=hippopojamas] MedabotNr