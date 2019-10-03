# Warbonnet
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomName:'{"translate":"medabots_server:entity.warbonnet"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/medabot/warbonnet/crimson_king/crimson_king/metabee",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["warbonnet","medabot","killerable","hostile","male_tinpet","two_legged_legs","devil_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[distance=..0.1,tag=warbonnet,limit=1] {DeathLootTable:"medabots_server:entities/medabot"}
scoreboard players set @e[distance=..0.1,tag=warbonnet] Medabot 0
scoreboard players set @e[distance=..0.1,tag=warbonnet] Killer 0
scoreboard players set @e[distance=..0.1,tag=warbonnet] Charge 0
scoreboard players set @e[distance=..0.1,tag=warbonnet] Battle 2
scoreboard players set @e[distance=..0.1,tag=warbonnet] MaxHeadUses 3
scoreboard players set @e[distance=..0.1,tag=warbonnet] MaxHeadArmor 60
scoreboard players set @e[distance=..0.1,tag=warbonnet] MaxRightArmArmor 30
scoreboard players set @e[distance=..0.1,tag=warbonnet] MaxLeftArmArmor 30
scoreboard players set @e[distance=..0.1,tag=warbonnet] MaxLegsArmor 55
scoreboard players set @e[distance=..0.1,tag=warbonnet] HeadPower 29
scoreboard players set @e[distance=..0.1,tag=warbonnet] RightArmPower 26
scoreboard players set @e[distance=..0.1,tag=warbonnet] LeftArmPower 39
scoreboard players set @e[distance=..0.1,tag=warbonnet] LegsDefense 62
scoreboard players operation @e[distance=..0.1,tag=warbonnet] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..0.1,tag=warbonnet] MedabotNr 1
execute as @e[distance=..0.1,tag=warbonnet] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..0.1,tag=warbonnet] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..0.1,tag=warbonnet] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..0.1,tag=warbonnet] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..0.1,tag=warbonnet] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:62,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.metabee_ochitsuka"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.defense","with":[{"text":"62"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.metabee"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.metabee_ochitsuka.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:metabee_ochitsuka",gender:0b,move:"two_legged",part:"legs",armor:55,defense:62,activated:0b,model_data:{leg_count:2},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:61,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.crimson_king_dopa_punch"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.destroy"}','{"italic":false,"color":"white","translate":"medabots_server:move.destroy.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"30"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.crimson_king"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.crimson_king_dopa_punch.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:crimson_king_dopa_punch",gender:0b,move:"destroy",part:"left_arm",armor:30,power:39,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:61,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.crimson_king_dondon_punch"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.destroy"}','{"italic":false,"color":"white","translate":"medabots_server:move.destroy.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"30"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.crimson_king"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.crimson_king_dondon_punch.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:crimson_king_dondon_punch",gender:0b,move:"destroy",part:"right_arm",armor:30,power:26,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:56,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.warbonnet_tension_up"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.auxiliary_charge"}','{"italic":false,"color":"white","translate":"medabots_server:move.auxiliary_charge.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"3"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.warbonnet"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.warbonnet_tension_up.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:warbonnet_tension_up",gender:0b,move:"auxiliary_charge",part:"head",armor:60,power:29,uses:3,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..0.1] unless entity @s[scores={MedabotNr=1..}] run scoreboard players operation @s MedabotNr = @e[distance=..0.1,limit=1,tag=warbonnet] MedabotNr