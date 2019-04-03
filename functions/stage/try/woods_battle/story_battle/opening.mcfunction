teleport @s -1943 45 -617
tag @s add stones
tag @s add story_battle
summon minecraft:skeleton -1954 45 -616 {CustomName:'{"translate":"medabots_server:entity.erika"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/battle_enemies/practice_round",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["sailor_multi","enemy_medabot","killerable","hostile","two_legged_legs","rifle_left_arm","gatling_right_arm","scout_head","kabuto_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
scoreboard players set @e[x=-1954,y=45,z=-616,distance=..1,tag=sailor_multi] Stage 47
scoreboard players set @e[x=-1954,y=45,z=-616,distance=..1,tag=sailor_multi] Medabot 39
scoreboard players set @e[x=-1954,y=45,z=-616,distance=..1,tag=sailor_multi] Charge 0
scoreboard players set @e[x=-1954,y=45,z=-616,distance=..1,tag=sailor_multi] Battle 1
scoreboard players set @e[x=-1954,y=45,z=-616,distance=..1,tag=sailor_multi] MaxHeadUses 7
scoreboard players set @e[x=-1954,y=45,z=-616,distance=..1,tag=sailor_multi] MaxHeadArmor 75
scoreboard players set @e[x=-1954,y=45,z=-616,distance=..1,tag=sailor_multi] MaxRightArmArmor 35
scoreboard players set @e[x=-1954,y=45,z=-616,distance=..1,tag=sailor_multi] MaxLeftArmArmor 35
scoreboard players set @e[x=-1954,y=45,z=-616,distance=..1,tag=sailor_multi] MaxLegsArmor 40
scoreboard players set @e[x=-1954,y=45,z=-616,distance=..1,tag=sailor_multi] HeadPower 50
scoreboard players set @e[x=-1954,y=45,z=-616,distance=..1,tag=sailor_multi] RightArmPower 20
scoreboard players set @e[x=-1954,y=45,z=-616,distance=..1,tag=sailor_multi] LeftArmPower 24
scoreboard players set @e[x=-1954,y=45,z=-616,distance=..1,tag=sailor_multi] LegsDefense 40
scoreboard players operation @e[x=-1954,y=45,z=-616,distance=..1,tag=sailor_multi] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[x=-1954,y=45,z=-616,distance=..1,tag=sailor_multi] MedabotNr 1
execute as @e[x=-1954,y=45,z=-616,distance=..1,tag=sailor_multi] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1954,y=45,z=-616,distance=..1,tag=sailor_multi] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1954,y=45,z=-616,distance=..1,tag=sailor_multi] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1954,y=45,z=-616,distance=..1,tag=sailor_multi] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1954,y=45,z=-616,distance=..1,tag=sailor_multi] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand -1954 45 -616 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:39,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_flaregather"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_flaregather.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_flaregather.model"}']},medabots_server:{id:"medabots_server:sailor_multi_flaregather",gender:1b,move:"two_legged",part:"legs",armor:40,defense:40,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1954 45 -616 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:39,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_short_shot"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_short_shot.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_short_shot.model"}']},medabots_server:{id:"medabots_server:sailor_multi_short_shot",gender:1b,move:"rifle",part:"left_arm",armor:35,power:24,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1954 45 -616 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:39,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_pateri_vulcan"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_pateri_vulcan.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_pateri_vulcan.model"}']},medabots_server:{id:"medabots_server:sailor_multi_pateri_vulcan",gender:1b,move:"gatling",part:"right_arm",armor:35,power:20,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1954 45 -616 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:39,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_variablehair"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.scout"}','{"italic":false,"color":"white","translate":"medabots_server:move.scout.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"75"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_variablehair.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_variablehair.model"}']},medabots_server:{id:"medabots_server:sailor_multi_variablehair",gender:1b,move:"scout",part:"head",armor:75,power:50,uses:7,activated:0b,version:1}}}]}
execute positioned -1954 45 -616 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=sailor_multi] MedabotNr
function medabots_server:stage/create/woods_battle/stones