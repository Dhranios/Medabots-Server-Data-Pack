# Rokusho
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomName:'{"translate":"medabots_server:entity.rokusho"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/medabot/rokusho/hippopojamas/nin_ninja/fly_falcon",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["rokusho","medabot","killerable","hostile","male_tinpet","fly_legs","devil_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[distance=..0.1,tag=rokusho,limit=1] {DeathLootTable:"medabots_server:entities/medabot"}
scoreboard players set @e[distance=..0.1,tag=rokusho] Medabot 0
scoreboard players set @e[distance=..0.1,tag=rokusho] Killer 0
scoreboard players set @e[distance=..0.1,tag=rokusho] Charge 0
scoreboard players set @e[distance=..0.1,tag=rokusho] Battle 2
scoreboard players set @e[distance=..0.1,tag=rokusho] MaxHeadUses 3
scoreboard players set @e[distance=..0.1,tag=rokusho] MaxHeadArmor 80
scoreboard players set @e[distance=..0.1,tag=rokusho] MaxRightArmArmor 55
scoreboard players set @e[distance=..0.1,tag=rokusho] MaxLeftArmArmor 40
scoreboard players set @e[distance=..0.1,tag=rokusho] MaxLegsArmor 40
scoreboard players set @e[distance=..0.1,tag=rokusho] HeadPower 37
scoreboard players set @e[distance=..0.1,tag=rokusho] RightArmPower 20
scoreboard players set @e[distance=..0.1,tag=rokusho] LeftArmPower 28
scoreboard players set @e[distance=..0.1,tag=rokusho] LegsDefense 20
scoreboard players operation @e[distance=..0.1,tag=rokusho] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..0.1,tag=rokusho] MedabotNr 1
execute as @e[distance=..0.1,tag=rokusho] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..0.1,tag=rokusho] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..0.1,tag=rokusho] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..0.1,tag=rokusho] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..0.1,tag=rokusho] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:13,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_flyphone"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.fly.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.defense","with":[{"text":"20"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.fly_falcon"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_flyphone.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:fly_falcon_flyphone",gender:0b,move:"fly",part:"legs",armor:40,defense:20,activated:0b,model_data:{leg_count:0},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:69,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_ninja_sword"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sword"}','{"italic":false,"color":"white","translate":"medabots_server:move.sword.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.nin_ninja"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_ninja_sword.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:nin_ninja_ninja_sword",gender:0b,move:"sword",part:"left_arm",armor:40,power:28,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:34,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hippopojamas_megabaton"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.wave"}','{"italic":false,"color":"white","translate":"medabots_server:move.wave.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hippopojamas"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hippopojamas_megabaton.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hippopojamas_megabaton",gender:0b,move:"wave",part:"right_arm",armor:55,power:20,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:63,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.rokusho_antenna"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.scout"}','{"italic":false,"color":"white","translate":"medabots_server:move.scout.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"3"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.rokusho"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.rokusho_antenna.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:rokusho_antenna",gender:0b,move:"scout",part:"head",armor:80,power:37,uses:3,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..0.1] unless entity @s[scores={MedabotNr=1..}] run scoreboard players operation @s MedabotNr = @e[distance=..0.1,limit=1,tag=rokusho] MedabotNr