# Pastel Fairy
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomName:'{"translate":"medabots_server:entity.pastel_fairy"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/enemy_medabot/pastel_fairy/frappe/pure_mermaid/pastel_fairy",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["pastel_fairy","enemy_medabot","killerable","hostile","female_tinpet","float_legs","heal_left_arm","freeze_right_arm","shooting_trap_head","chameleon_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[distance=..1,tag=pastel_fairy,limit=1] {DeathLootTable:"medabots_server:entities/medabot"}
scoreboard players set @e[distance=..1,tag=pastel_fairy] Medabot 0
scoreboard players set @e[distance=..1,tag=pastel_fairy] Killer 0
scoreboard players set @e[distance=..1,tag=pastel_fairy] Charge 0
scoreboard players set @e[distance=..1,tag=pastel_fairy] Battle 2
scoreboard players set @e[distance=..1,tag=pastel_fairy] MaxHeadUses 12
scoreboard players set @e[distance=..1,tag=pastel_fairy] MaxHeadArmor 70
scoreboard players set @e[distance=..1,tag=pastel_fairy] MaxRightArmArmor 35
scoreboard players set @e[distance=..1,tag=pastel_fairy] MaxLeftArmArmor 40
scoreboard players set @e[distance=..1,tag=pastel_fairy] MaxLegsArmor 55
scoreboard players set @e[distance=..1,tag=pastel_fairy] HeadPower 43
scoreboard players set @e[distance=..1,tag=pastel_fairy] RightArmPower 26
scoreboard players set @e[distance=..1,tag=pastel_fairy] LeftArmPower 50
scoreboard players set @e[distance=..1,tag=pastel_fairy] LegsDefense 29
scoreboard players operation @e[distance=..1,tag=pastel_fairy] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..1,tag=pastel_fairy] MedabotNr 1
execute as @e[distance=..1,tag=pastel_fairy] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..1,tag=pastel_fairy] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..1,tag=pastel_fairy] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..1,tag=pastel_fairy] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..1,tag=pastel_fairy] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","female_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:37,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pastel_fairy_flower_fly"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.float"}','{"italic":false,"color":"white","translate":"medabots_server:move.float.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pastel_fairy"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pastel_fairy_flower_fly.model"}']},medabots_server:{id:"medabots_server:pastel_fairy_flower_fly",gender:1b,move:"float",part:"legs",armor:55,defense:29,activated:0b,model_data:{leg_count:0},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","female_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:43,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_repair_arm"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.heal"}','{"italic":false,"color":"white","translate":"medabots_server:move.heal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pure_mermaid"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_repair_arm.model"}']},medabots_server:{id:"medabots_server:pure_mermaid_repair_arm",gender:1b,move:"heal",part:"left_arm",armor:40,power:50,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","female_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:68,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flap"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.freeze"}','{"italic":false,"color":"white","translate":"medabots_server:move.freeze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flap.model"}']},medabots_server:{id:"medabots_server:frappe_flap",gender:1b,move:"freeze",part:"right_arm",armor:35,power:26,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","female_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:37,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pastel_fairy_field_barrier"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.shooting_trap"}','{"italic":false,"color":"white","translate":"medabots_server:move.shooting_trap.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"12"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pastel_fairy"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pastel_fairy_field_barrier.model"}']},medabots_server:{id:"medabots_server:pastel_fairy_field_barrier",gender:1b,move:"shooting_trap",part:"head",armor:70,power:43,uses:12,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..1] unless entity @s[scores={MedabotNr=1..}] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=pastel_fairy] MedabotNr