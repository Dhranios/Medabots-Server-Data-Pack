# Shoot-Spider
summon minecraft:skeleton -1773 44 -298 {CustomName:"{\"translate\":\"medabots_server:entity.shoot_spider\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/laboratory_a/first_go/shoot_spider",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["shoot_spider","enemy_medabot","killerable","hostile","multi_legged_legs","confuse_left_arm","hold_right_arm","melee_trap_head","ghost_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
scoreboard players set @e[x=-1773,y=44,z=-298,distance=..1,tag=shoot_spider] Stage 27
scoreboard players set @e[x=-1773,y=44,z=-298,distance=..1,tag=shoot_spider] Medabot 0
scoreboard players set @e[x=-1773,y=44,z=-298,distance=..1,tag=shoot_spider] Battle 2
scoreboard players set @e[x=-1773,y=44,z=-298,distance=..1,tag=shoot_spider] MaxHeadUses 12
scoreboard players set @e[x=-1773,y=44,z=-298,distance=..1,tag=shoot_spider] MaxHeadArmor 70
scoreboard players set @e[x=-1773,y=44,z=-298,distance=..1,tag=shoot_spider] MaxRightArmArmor 40
scoreboard players set @e[x=-1773,y=44,z=-298,distance=..1,tag=shoot_spider] MaxLeftArmArmor 50
scoreboard players set @e[x=-1773,y=44,z=-298,distance=..1,tag=shoot_spider] MaxLegsArmor 40
scoreboard players set @e[x=-1773,y=44,z=-298,distance=..1,tag=shoot_spider] HeadPower 42
scoreboard players set @e[x=-1773,y=44,z=-298,distance=..1,tag=shoot_spider] RightArmPower 15
scoreboard players set @e[x=-1773,y=44,z=-298,distance=..1,tag=shoot_spider] LeftArmPower 16
scoreboard players set @e[x=-1773,y=44,z=-298,distance=..1,tag=shoot_spider] LegsDefense 40
scoreboard players operation @e[x=-1773,y=44,z=-298,distance=..1,tag=shoot_spider] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[x=-1773,y=44,z=-298,distance=..1,tag=shoot_spider] MedabotNr 1
execute as @e[x=-1773,y=44,z=-298,distance=..1,tag=shoot_spider] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1773,y=44,z=-298,distance=..1,tag=shoot_spider] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1773,y=44,z=-298,distance=..1,tag=shoot_spider] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1773,y=44,z=-298,distance=..1,tag=shoot_spider] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1773,y=44,z=-298,distance=..1,tag=shoot_spider] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand -1773 44 -298 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","medabot_model"],CustomName:"{\"translate\":\"medabots_server:entity.medabot_model\"}",ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:18,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.shoot_spider_multi_leg\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.multi_legged\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.multi_legged.description\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"40\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.shoot_spider\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.shoot_spider_multi_leg.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.shoot_spider_multi_leg.model\"}"]},medabots_server:{id:"medabots_server:shoot_spider_multi_leg",gender:0b,move:"multi_legged",part:"legs",armor:40,defense:40,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1773 44 -298 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","medabot_model"],CustomName:"{\"translate\":\"medabots_server:entity.medabot_model\"}",ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:4,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.grade_kabuki_acting\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.confuse\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.confuse.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"50\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.grade_kabuki\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.grade_kabuki_acting.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.grade_kabuki_acting.model\"}"]},medabots_server:{id:"medabots_server:grade_kabuki_acting",gender:0b,move:"confuse",part:"left_arm",armor:50,power:16,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1773 44 -298 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","medabot_model"],CustomName:"{\"translate\":\"medabots_server:entity.medabot_model\"}",ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:21,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.kanehachi_mk2_catch\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.hold\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.hold.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"40\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.kanehachi_mk2\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.kanehachi_mk2_catch.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.kanehachi_mk2_catch.model\"}"]},medabots_server:{id:"medabots_server:kanehachi_mk2_catch",gender:0b,move:"hold",part:"right_arm",armor:40,power:15,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1773 44 -298 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","medabot_model"],CustomName:"{\"translate\":\"medabots_server:entity.medabot_model\"}",ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:18,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.shoot_spider_spydertrap\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.melee_trap\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.melee_trap.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.more\",\"with\":[{\"text\":\"12\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"70\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.shoot_spider\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.shoot_spider_spydertrap.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.shoot_spider_spydertrap.model\"}"]},medabots_server:{id:"medabots_server:shoot_spider_spydertrap",gender:0b,move:"melee_trap",part:"head",armor:70,power:42,uses:12,activated:0b,version:1}}}]}
execute positioned -1773 44 -298 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=shoot_spider] MedabotNr