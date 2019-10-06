# Frappe
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomName:'{"translate":"medabots_server:entity.frappe"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/medabot",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["frappe","medabot","killerable","hostile","female_tinpet","tank_legs","kuwagata_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run tag @e[distance=..0.1,tag=frappe,limit=1] add practice_battle
scoreboard players set @e[distance=..0.1,tag=frappe] Medabot 0
scoreboard players set @e[distance=..0.1,tag=frappe] Killer 0
scoreboard players set @e[distance=..0.1,tag=frappe] Charge 0
scoreboard players set @e[distance=..0.1,tag=frappe] Battle 2
scoreboard players set @e[distance=..0.1,tag=frappe] MaxHeadUses 5
scoreboard players set @e[distance=..0.1,tag=frappe] MaxHeadArmor 55
scoreboard players set @e[distance=..0.1,tag=frappe] MaxRightArmArmor 45
scoreboard players set @e[distance=..0.1,tag=frappe] MaxLeftArmArmor 35
scoreboard players set @e[distance=..0.1,tag=frappe] MaxLegsArmor 65
scoreboard players set @e[distance=..0.1,tag=frappe] HeadPower 27
scoreboard players set @e[distance=..0.1,tag=frappe] RightArmPower 25
scoreboard players set @e[distance=..0.1,tag=frappe] LeftArmPower 30
scoreboard players set @e[distance=..0.1,tag=frappe] LegsDefense 40
scoreboard players operation @e[distance=..0.1,tag=frappe] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..0.1,tag=frappe] MedabotNr 1
execute as @e[distance=..0.1,tag=frappe] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..0.1,tag=frappe] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..0.1,tag=frappe] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..0.1,tag=frappe] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..0.1,tag=frappe] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","female_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:68,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flavor"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.tank"}','{"italic":false,"color":"white","translate":"medabots_server:move.tank.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.defense","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flavor.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:frappe_flavor",gender:1b,move:"tank",part:"legs",armor:65,defense:40,activated:0b,model_data:{leg_count:0},version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","female_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:68,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flop"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.freeze"}','{"italic":false,"color":"white","translate":"medabots_server:move.freeze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flop.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:frappe_flop",gender:1b,move:"freeze",part:"left_arm",armor:35,power:30,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","female_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:37,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pastel_fairy_energy_barrier"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.shooting_trap"}','{"italic":false,"color":"white","translate":"medabots_server:move.shooting_trap.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pastel_fairy"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pastel_fairy_energy_barrier.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pastel_fairy_energy_barrier",gender:1b,move:"shooting_trap",part:"right_arm",armor:45,power:25,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","female_tinpet","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:68,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flip"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.freeze"}','{"italic":false,"color":"white","translate":"medabots_server:move.freeze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flip.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:frappe_flip",gender:1b,move:"freeze",part:"head",armor:55,power:27,uses:5,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..0.1] unless entity @s[scores={MedabotNr=1..}] run scoreboard players operation @s MedabotNr = @e[distance=..0.1,limit=1,tag=frappe] MedabotNr