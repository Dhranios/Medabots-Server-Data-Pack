# Yuchitang
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomName:'{"translate":"medabots_server:entity.yuchitang"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/medabot/yuchitang/ka_o_lantern/attack_tyrano/yuchitang",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["yuchitang","medabot","killerable","hostile","male_tinpet","swim_legs","kuwagata_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[distance=..0.1,tag=yuchitang,limit=1] {DeathLootTable:"medabots_server:entities/medabot"}
scoreboard players set @e[distance=..0.1,tag=yuchitang] Medabot 0
scoreboard players set @e[distance=..0.1,tag=yuchitang] Killer 0
scoreboard players set @e[distance=..0.1,tag=yuchitang] Charge 0
scoreboard players set @e[distance=..0.1,tag=yuchitang] Battle 2
scoreboard players set @e[distance=..0.1,tag=yuchitang] MaxHeadUses 4
scoreboard players set @e[distance=..0.1,tag=yuchitang] MaxHeadArmor 40
scoreboard players set @e[distance=..0.1,tag=yuchitang] MaxRightArmArmor 20
scoreboard players set @e[distance=..0.1,tag=yuchitang] MaxLeftArmArmor 40
scoreboard players set @e[distance=..0.1,tag=yuchitang] MaxLegsArmor 60
scoreboard players set @e[distance=..0.1,tag=yuchitang] HeadPower 5
scoreboard players set @e[distance=..0.1,tag=yuchitang] RightArmPower 45
scoreboard players set @e[distance=..0.1,tag=yuchitang] LeftArmPower 32
scoreboard players set @e[distance=..0.1,tag=yuchitang] LegsDefense 14
scoreboard players operation @e[distance=..0.1,tag=yuchitang] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..0.1,tag=yuchitang] MedabotNr 1
execute as @e[distance=..0.1,tag=yuchitang] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..0.1,tag=yuchitang] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..0.1,tag=yuchitang] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..0.1,tag=yuchitang] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..0.1,tag=yuchitang] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:59,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.yuchitang_smacker"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.swim"}','{"italic":false,"color":"white","translate":"medabots_server:move.swim.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.defense","with":[{"text":"14"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.yuchitang"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.yuchitang_smacker.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:yuchitang_smacker",gender:0b,move:"swim",part:"legs",armor:60,defense:14,activated:0b,model_data:{leg_count:0,has_wormtail:1b},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:9,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_strike_hit"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.attack_tyrano"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_strike_hit.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:attack_tyrano_strike_hit",gender:0b,move:"hammer",part:"left_arm",armor:40,power:32,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:60,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.ka_o_lantern_pun"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.no_defend"}','{"italic":false,"color":"white","translate":"medabots_server:move.no_defend.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"20"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.ka_o_lantern"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.ka_o_lantern_pun.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:ka_o_lantern_pun",gender:0b,move:"no_defend",part:"right_arm",armor:20,power:45,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:59,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.yuchitang_power_diver"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:move.break.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"4"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.yuchitang"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.yuchitang_power_diver.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:yuchitang_power_diver",gender:0b,move:"break",part:"head",armor:40,power:5,uses:4,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..0.1] unless entity @s[scores={MedabotNr=1..}] run scoreboard players operation @s MedabotNr = @e[distance=..0.1,limit=1,tag=yuchitang] MedabotNr