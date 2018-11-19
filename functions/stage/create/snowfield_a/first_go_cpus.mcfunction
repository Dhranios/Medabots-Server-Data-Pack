# Kanehachi Mk2
summon minecraft:skeleton -1613 37 -220 {CustomName:"{\"translate\":\"medabots_server:entity.kanehachi_mk2\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/snowfield_a/first_go/kanehachi_mk2",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["kanehachi_mk2","enemy_medabot","killerable","hostile","multi_legged_legs","destroy_left_arm","melt_right_arm","hold_head","kuwagata_medal"],AbsorptionAmount:100.0f}
scoreboard players set @e[x=-1613,y=37,z=-220,distance=..1,tag=kanehachi_mk2] Stage 14
scoreboard players set @e[x=-1613,y=37,z=-220,distance=..1,tag=kanehachi_mk2] Medabot 0
scoreboard players set @e[x=-1613,y=37,z=-220,distance=..1,tag=kanehachi_mk2] MaxHeadUses 9
scoreboard players set @e[x=-1613,y=37,z=-220,distance=..1,tag=kanehachi_mk2] MaxHeadArmor 55
scoreboard players set @e[x=-1613,y=37,z=-220,distance=..1,tag=kanehachi_mk2] MaxRightArmArmor 45
scoreboard players set @e[x=-1613,y=37,z=-220,distance=..1,tag=kanehachi_mk2] MaxLeftArmArmor 35
scoreboard players set @e[x=-1613,y=37,z=-220,distance=..1,tag=kanehachi_mk2] MaxLegsArmor 40
scoreboard players set @e[x=-1613,y=37,z=-220,distance=..1,tag=kanehachi_mk2] HeadPower 28
scoreboard players set @e[x=-1613,y=37,z=-220,distance=..1,tag=kanehachi_mk2] RightArmPower 18
scoreboard players set @e[x=-1613,y=37,z=-220,distance=..1,tag=kanehachi_mk2] LeftArmPower 59
scoreboard players set @e[x=-1613,y=37,z=-220,distance=..1,tag=kanehachi_mk2] LegsDefense 40
execute as @e[x=-1613,y=37,z=-220,distance=..1,tag=kanehachi_mk2] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1613,y=37,z=-220,distance=..1,tag=kanehachi_mk2] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1613,y=37,z=-220,distance=..1,tag=kanehachi_mk2] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1613,y=37,z=-220,distance=..1,tag=kanehachi_mk2] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1613,y=37,z=-220,distance=..1,tag=kanehachi_mk2] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor

# Hellphoenix
summon minecraft:skeleton -1615 37 -220 {CustomName:"{\"translate\":\"medabots_server:entity.hellphoenix\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/snowfield_a/first_go/hellphoenix",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["hellphoenix","enemy_medabot","killerable","hostile","fly_legs","napalm_left_arm","hold_right_arm","melt_head","kuwagata_medal"],AbsorptionAmount:100.0f}
scoreboard players set @e[x=-1615,y=37,z=-220,distance=..1,tag=hellphoenix] Stage 14
scoreboard players set @e[x=-1615,y=37,z=-220,distance=..1,tag=hellphoenix] Medabot 0
scoreboard players set @e[x=-1615,y=37,z=-220,distance=..1,tag=hellphoenix] MaxHeadUses 7
scoreboard players set @e[x=-1615,y=37,z=-220,distance=..1,tag=hellphoenix] MaxHeadArmor 65
scoreboard players set @e[x=-1615,y=37,z=-220,distance=..1,tag=hellphoenix] MaxRightArmArmor 40
scoreboard players set @e[x=-1615,y=37,z=-220,distance=..1,tag=hellphoenix] MaxLeftArmArmor 50
scoreboard players set @e[x=-1615,y=37,z=-220,distance=..1,tag=hellphoenix] MaxLegsArmor 35
scoreboard players set @e[x=-1615,y=37,z=-220,distance=..1,tag=hellphoenix] HeadPower 23
scoreboard players set @e[x=-1615,y=37,z=-220,distance=..1,tag=hellphoenix] RightArmPower 15
scoreboard players set @e[x=-1615,y=37,z=-220,distance=..1,tag=hellphoenix] LeftArmPower 24
scoreboard players set @e[x=-1615,y=37,z=-220,distance=..1,tag=hellphoenix] LegsDefense 36
execute as @e[x=-1615,y=37,z=-220,distance=..1,tag=hellphoenix] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1615,y=37,z=-220,distance=..1,tag=hellphoenix] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1615,y=37,z=-220,distance=..1,tag=hellphoenix] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1615,y=37,z=-220,distance=..1,tag=hellphoenix] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1615,y=37,z=-220,distance=..1,tag=hellphoenix] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor