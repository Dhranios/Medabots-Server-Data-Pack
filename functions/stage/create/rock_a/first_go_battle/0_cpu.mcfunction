# Poison Scorpi
summon minecraft:skeleton -1604 45 -170 {CustomName:"{\"translate\":\"medabots_server:entity.poison_scorpi\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/rock_a/first_go/poison_scorpi",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["poison_scorpi","enemy_medabot","killerable","hostile","multi_legged_legs","hide_left_arm","hammer_right_arm","melt_head","kuwagata_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
scoreboard players set @e[x=-1604,y=45,z=-170,distance=..1,tag=poison_scorpi] Stage 5
scoreboard players set @e[x=-1604,y=45,z=-170,distance=..1,tag=poison_scorpi] Medabot 0
scoreboard players set @e[x=-1604,y=45,z=-170,distance=..1,tag=poison_scorpi] Battle 2
scoreboard players set @e[x=-1604,y=45,z=-170,distance=..1,tag=poison_scorpi] MaxHeadUses 6
scoreboard players set @e[x=-1604,y=45,z=-170,distance=..1,tag=poison_scorpi] MaxHeadArmor 70
scoreboard players set @e[x=-1604,y=45,z=-170,distance=..1,tag=poison_scorpi] MaxRightArmArmor 40
scoreboard players set @e[x=-1604,y=45,z=-170,distance=..1,tag=poison_scorpi] MaxLeftArmArmor 45
scoreboard players set @e[x=-1604,y=45,z=-170,distance=..1,tag=poison_scorpi] MaxLegsArmor 40
scoreboard players set @e[x=-1604,y=45,z=-170,distance=..1,tag=poison_scorpi] HeadPower 22
scoreboard players set @e[x=-1604,y=45,z=-170,distance=..1,tag=poison_scorpi] RightArmPower 24
scoreboard players set @e[x=-1604,y=45,z=-170,distance=..1,tag=poison_scorpi] LeftArmPower 59
scoreboard players set @e[x=-1604,y=45,z=-170,distance=..1,tag=poison_scorpi] LegsDefense 20
scoreboard players operation @e[x=-1604,y=45,z=-170,distance=..1,tag=poison_scorpi] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[x=-1604,y=45,z=-170,distance=..1,tag=poison_scorpi] MedabotNr 1
execute as @e[x=-1604,y=45,z=-170,distance=..1,tag=poison_scorpi] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1604,y=45,z=-170,distance=..1,tag=poison_scorpi] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1604,y=45,z=-170,distance=..1,tag=poison_scorpi] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1604,y=45,z=-170,distance=..1,tag=poison_scorpi] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1604,y=45,z=-170,distance=..1,tag=poison_scorpi] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand -1604 45 -170 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","medabot_model"],CustomName:"{\"translate\":\"medabots_server:entity.medabot_model\"}",ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:7,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.poison_scorpi_zigzag\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.multi_legged\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.multi_legged.description\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"40\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.poison_scorpi\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.poison_scorpi_zigzag.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.poison_scorpi_zigzag.model\"}"]},medabots_server:{id:"medabots_server:poison_scorpi_zigzag",gender:0b,move:"multi_legged",part:"legs",armor:40,defense:20,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1604 45 -170 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","medabot_model"],CustomName:"{\"translate\":\"medabots_server:entity.medabot_model\"}",ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:28,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.seven_colors_invisi_arm\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.hide\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.hide.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"45\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.seven_colors\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.seven_colors_invisi_arm.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.seven_colors_invisi_arm.model\"}"]},medabots_server:{id:"medabots_server:seven_colors_invisi_arm",gender:0b,move:"hide",part:"left_arm",armor:45,power:59,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1604 45 -170 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","medabot_model"],CustomName:"{\"translate\":\"medabots_server:entity.medabot_model\"}",ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:9,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.attack_tyrano_crab_hit\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.hammer\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.hammer.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"40\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.attack_tyrano\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.attack_tyrano_crab_hit.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.attack_tyrano_crab_hit.model\"}"]},medabots_server:{id:"medabots_server:attack_tyrano_crab_hit",gender:0b,move:"hammer",part:"right_arm",armor:40,power:24,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1604 45 -170 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","medabot_model"],CustomName:"{\"translate\":\"medabots_server:entity.medabot_model\"}",ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:7,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.poison_scorpi_scorpion_dog\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.melt\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.melt.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.more\",\"with\":[{\"text\":\"6\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"70\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.poison_scorpi\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.poison_scorpi_scorpion_dog.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.poison_scorpi_scorpion_dog.model\"}"]},medabots_server:{id:"medabots_server:poison_scorpi_scorpion_dog",gender:0b,move:"melt",part:"head",armor:70,power:22,uses:6,activated:0b,version:1}}}]}
execute positioned -1604 45 -170 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..0.1,limit=1,tag=poison_scorpi] MedabotNr