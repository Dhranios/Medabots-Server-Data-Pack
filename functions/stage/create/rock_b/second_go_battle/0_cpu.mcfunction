# Seven Colors
summon minecraft:skeleton -1586 45 -344 {CustomName:"{\"translate\":\"medabots_server:entity.seven_colors\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/rock_b/second_go/seven_colors",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["seven_colors","enemy_medabot","killerable","hostile","multi_legged_legs","melt_left_arm","melt_right_arm","hide_head","chameloen_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
scoreboard players set @e[x=-1586,y=45,z=-344,distance=..1,tag=seven_colors] Stage 32
scoreboard players set @e[x=-1586,y=45,z=-344,distance=..1,tag=seven_colors] Medabot 0
scoreboard players set @e[x=-1586,y=45,z=-344,distance=..1,tag=seven_colors] Battle 2
scoreboard players set @e[x=-1586,y=45,z=-344,distance=..1,tag=seven_colors] MaxHeadUses 5
scoreboard players set @e[x=-1586,y=45,z=-344,distance=..1,tag=seven_colors] MaxHeadArmor 70
scoreboard players set @e[x=-1586,y=45,z=-344,distance=..1,tag=seven_colors] MaxRightArmArmor 45
scoreboard players set @e[x=-1586,y=45,z=-344,distance=..1,tag=seven_colors] MaxLeftArmArmor 45
scoreboard players set @e[x=-1586,y=45,z=-344,distance=..1,tag=seven_colors] MaxLegsArmor 40
scoreboard players set @e[x=-1586,y=45,z=-344,distance=..1,tag=seven_colors] HeadPower 82
scoreboard players set @e[x=-1586,y=45,z=-344,distance=..1,tag=seven_colors] RightArmPower 22
scoreboard players set @e[x=-1586,y=45,z=-344,distance=..1,tag=seven_colors] LeftArmPower 28
scoreboard players set @e[x=-1586,y=45,z=-344,distance=..1,tag=seven_colors] LegsDefense 52
scoreboard players operation @e[x=-1586,y=45,z=-344,distance=..1,tag=seven_colors] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[x=-1586,y=45,z=-344,distance=..1,tag=seven_colors] MedabotNr 1
execute as @e[x=-1586,y=45,z=-344,distance=..1,tag=seven_colors] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1586,y=45,z=-344,distance=..1,tag=seven_colors] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1586,y=45,z=-344,distance=..1,tag=seven_colors] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1586,y=45,z=-344,distance=..1,tag=seven_colors] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1586,y=45,z=-344,distance=..1,tag=seven_colors] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand -1586 45 -344 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","medabot_model"],CustomName:"{\"translate\":\"medabots_server:entity.medabot_model\"}",ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:28,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.seven_colors_twirl\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.multi_legged\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.multi_legged.description\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"40\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.seven_colors\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.seven_colors_twirl.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.seven_colors_twirl.model\"}"]},medabots_server:{id:"medabots_server:seven_colors_twirl",gender:0b,move:"multi_legged",part:"legs",armor:40,defense:52,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1586 45 -344 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","medabot_model"],CustomName:"{\"translate\":\"medabots_server:entity.medabot_model\"}",ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:7,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.poison_scorpi_scorpion_rat\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.melt\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.melt.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"45\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.poison_scorpi\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.poison_scorpi_scorpion_rat.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.poison_scorpi_scorpion_rat.model\"}"]},medabots_server:{id:"medabots_server:poison_scorpi_scorpion_rat",gender:0b,move:"melt",part:"left_arm",armor:45,power:28,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1586 45 -344 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","medabot_model"],CustomName:"{\"translate\":\"medabots_server:entity.medabot_model\"}",ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:7,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.poison_scorpi_scorpion_cat\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.melt\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.melt.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"45\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.poison_scorpi\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.poison_scorpi_scorpion_cat.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.poison_scorpi_scorpion_cat.model\"}"]},medabots_server:{id:"medabots_server:poison_scorpi_scorpion_cat",gender:0b,move:"melt",part:"right_arm",armor:45,power:22,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1586 45 -344 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","medabot_model"],CustomName:"{\"translate\":\"medabots_server:entity.medabot_model\"}",ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:28,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.seven_colors_invisi_body\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.hide\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.hide.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.more\",\"with\":[{\"text\":\"5\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"70\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.seven_colors\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.seven_colors_invisi_body.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.seven_colors_invisi_body.model\"}"]},medabots_server:{id:"medabots_server:seven_colors_invisi_body",gender:0b,move:"hide",part:"head",armor:70,power:82,uses:5,activated:0b,version:1}}}]}
execute positioned -1586 45 -344 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=seven_colors] MedabotNr