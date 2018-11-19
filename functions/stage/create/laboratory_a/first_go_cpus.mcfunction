# Dragonbeetle
summon minecraft:skeleton -1773 29 -287 {CustomName:"{\"translate\":\"medabots_server:entity.dragonbeetle\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/laboratory_a/first_go/dragonbeetle",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["dragonbeetle","enemy_medabot","killerable","hostile","fly_legs","sword_left_arm","guard_optical_right_arm","press_head","kabuto_medal"],AbsorptionAmount:100.0f}
scoreboard players set @e[x=-1773,y=29,z=-287,distance=..1,tag=dragonbeetle] Stage 27
scoreboard players set @e[x=-1773,y=29,z=-287,distance=..1,tag=dragonbeetle] Medabot 0
scoreboard players set @e[x=-1773,y=29,z=-287,distance=..1,tag=dragonbeetle] MaxHeadUses 15
scoreboard players set @e[x=-1773,y=29,z=-287,distance=..1,tag=dragonbeetle] MaxHeadArmor 105
scoreboard players set @e[x=-1773,y=29,z=-287,distance=..1,tag=dragonbeetle] MaxRightArmArmor 50
scoreboard players set @e[x=-1773,y=29,z=-287,distance=..1,tag=dragonbeetle] MaxLeftArmArmor 40
scoreboard players set @e[x=-1773,y=29,z=-287,distance=..1,tag=dragonbeetle] MaxLegsArmor 40
scoreboard players set @e[x=-1773,y=29,z=-287,distance=..1,tag=dragonbeetle] HeadPower 25
scoreboard players set @e[x=-1773,y=29,z=-287,distance=..1,tag=dragonbeetle] RightArmPower 0
scoreboard players set @e[x=-1773,y=29,z=-287,distance=..1,tag=dragonbeetle] LeftArmPower 28
scoreboard players set @e[x=-1773,y=29,z=-287,distance=..1,tag=dragonbeetle] LegsDefense 28
execute as @e[x=-1773,y=29,z=-287,distance=..1,tag=dragonbeetle] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1773,y=29,z=-287,distance=..1,tag=dragonbeetle] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1773,y=29,z=-287,distance=..1,tag=dragonbeetle] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1773,y=29,z=-287,distance=..1,tag=dragonbeetle] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1773,y=29,z=-287,distance=..1,tag=dragonbeetle] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor

# Knight Armor
summon minecraft:skeleton -1775 29 -287 {CustomName:"{\"translate\":\"medabots_server:entity.knight_armor\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/laboratory_a/first_go/knight_armor",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["knight_armor","enemy_medabot","killerable","hostile","wheel_legs","scout_left_arm","sword_right_arm","defense_head","ghost_medal"],AbsorptionAmount:100.0f}
scoreboard players set @e[x=-1775,y=29,z=-287,distance=..1,tag=knight_armor] Stage 27
scoreboard players set @e[x=-1775,y=29,z=-287,distance=..1,tag=knight_armor] Medabot 0
scoreboard players set @e[x=-1775,y=29,z=-287,distance=..1,tag=knight_armor] MaxHeadUses 8
scoreboard players set @e[x=-1775,y=29,z=-287,distance=..1,tag=knight_armor] MaxHeadArmor 100
scoreboard players set @e[x=-1775,y=29,z=-287,distance=..1,tag=knight_armor] MaxRightArmArmor 40
scoreboard players set @e[x=-1775,y=29,z=-287,distance=..1,tag=knight_armor] MaxLeftArmArmor 65
scoreboard players set @e[x=-1775,y=29,z=-287,distance=..1,tag=knight_armor] MaxLegsArmor 60
scoreboard players set @e[x=-1775,y=29,z=-287,distance=..1,tag=knight_armor] HeadPower 52
scoreboard players set @e[x=-1775,y=29,z=-287,distance=..1,tag=knight_armor] RightArmPower 20
scoreboard players set @e[x=-1775,y=29,z=-287,distance=..1,tag=knight_armor] LeftArmPower 41
scoreboard players set @e[x=-1775,y=29,z=-287,distance=..1,tag=knight_armor] LegsDefense 32
execute as @e[x=-1775,y=29,z=-287,distance=..1,tag=knight_armor] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1775,y=29,z=-287,distance=..1,tag=knight_armor] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1775,y=29,z=-287,distance=..1,tag=knight_armor] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1775,y=29,z=-287,distance=..1,tag=knight_armor] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1775,y=29,z=-287,distance=..1,tag=knight_armor] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor

# Shoot-Spider
summon minecraft:skeleton -1777 29 -287 {CustomName:"{\"translate\":\"medabots_server:entity.shoot_spider\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/laboratory_a/first_go/shoot_spider",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["shoot_spider","enemy_medabot","killerable","hostile","multi_legged_legs","confuse_left_arm","hold_right_arm","melee_trap_head","ghost_medal"],AbsorptionAmount:100.0f}
scoreboard players set @e[x=-1777,y=29,z=-287,distance=..1,tag=shoot_spider] Stage 27
scoreboard players set @e[x=-1777,y=29,z=-287,distance=..1,tag=shoot_spider] Medabot 0
scoreboard players set @e[x=-1777,y=29,z=-287,distance=..1,tag=shoot_spider] MaxHeadUses 12
scoreboard players set @e[x=-1777,y=29,z=-287,distance=..1,tag=shoot_spider] MaxHeadArmor 70
scoreboard players set @e[x=-1777,y=29,z=-287,distance=..1,tag=shoot_spider] MaxRightArmArmor 40
scoreboard players set @e[x=-1777,y=29,z=-287,distance=..1,tag=shoot_spider] MaxLeftArmArmor 50
scoreboard players set @e[x=-1777,y=29,z=-287,distance=..1,tag=shoot_spider] MaxLegsArmor 40
scoreboard players set @e[x=-1777,y=29,z=-287,distance=..1,tag=shoot_spider] HeadPower 42
scoreboard players set @e[x=-1777,y=29,z=-287,distance=..1,tag=shoot_spider] RightArmPower 15
scoreboard players set @e[x=-1777,y=29,z=-287,distance=..1,tag=shoot_spider] LeftArmPower 16
scoreboard players set @e[x=-1777,y=29,z=-287,distance=..1,tag=shoot_spider] LegsDefense 40
execute as @e[x=-1777,y=29,z=-287,distance=..1,tag=shoot_spider] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1777,y=29,z=-287,distance=..1,tag=shoot_spider] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1777,y=29,z=-287,distance=..1,tag=shoot_spider] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1777,y=29,z=-287,distance=..1,tag=shoot_spider] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1777,y=29,z=-287,distance=..1,tag=shoot_spider] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor