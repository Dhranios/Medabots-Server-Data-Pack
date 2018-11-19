# Doctor Study
summon minecraft:skeleton -1668 37 -141 {CustomName:"{\"translate\":\"medabots_server:entity.doctor_study\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/jungle_a/second_go/doctor_study",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["doctor_study","enemy_medabot","killerable","hostile","wheel_legs","guard_gravity_left_arm","infect_right_arm","scout_head","ghost_medal"],AbsorptionAmount:100.0f}
scoreboard players set @e[x=-1668,y=37,z=-141,distance=..1,tag=doctor_study] Stage 9
scoreboard players set @e[x=-1668,y=37,z=-141,distance=..1,tag=doctor_study] Medabot 0
scoreboard players set @e[x=-1668,y=37,z=-141,distance=..1,tag=doctor_study] MaxHeadUses 5
scoreboard players set @e[x=-1668,y=37,z=-141,distance=..1,tag=doctor_study] MaxHeadArmor 100
scoreboard players set @e[x=-1668,y=37,z=-141,distance=..1,tag=doctor_study] MaxRightArmArmor 45
scoreboard players set @e[x=-1668,y=37,z=-141,distance=..1,tag=doctor_study] MaxLeftArmArmor 55
scoreboard players set @e[x=-1668,y=37,z=-141,distance=..1,tag=doctor_study] MaxLegsArmor 60
scoreboard players set @e[x=-1668,y=37,z=-141,distance=..1,tag=doctor_study] HeadPower 56
scoreboard players set @e[x=-1668,y=37,z=-141,distance=..1,tag=doctor_study] RightArmPower 30
scoreboard players set @e[x=-1668,y=37,z=-141,distance=..1,tag=doctor_study] LeftArmPower 0
scoreboard players set @e[x=-1668,y=37,z=-141,distance=..1,tag=doctor_study] LegsDefense 28
execute as @e[x=-1668,y=37,z=-141,distance=..1,tag=doctor_study] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1668,y=37,z=-141,distance=..1,tag=doctor_study] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1668,y=37,z=-141,distance=..1,tag=doctor_study] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1668,y=37,z=-141,distance=..1,tag=doctor_study] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1668,y=37,z=-141,distance=..1,tag=doctor_study] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor

# Nin-Ninja
summon minecraft:skeleton -1670 37 -141 {CustomName:"{\"translate\":\"medabots_server:entity.nin_ninja\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/jungle_a/second_go/nin_ninja",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["nin_ninja","enemy_medabot","killerable","hostile","two_legged_legs","melt_left_arm","destroy_right_arm","melee_trap_head","monkey_medal"],AbsorptionAmount:100.0f}
scoreboard players set @e[x=-1670,y=37,z=-141,distance=..1,tag=nin_ninja] Stage 9
scoreboard players set @e[x=-1670,y=37,z=-141,distance=..1,tag=nin_ninja] Medabot 0
scoreboard players set @e[x=-1670,y=37,z=-141,distance=..1,tag=nin_ninja] MaxHeadUses 8
scoreboard players set @e[x=-1670,y=37,z=-141,distance=..1,tag=nin_ninja] MaxHeadArmor 70
scoreboard players set @e[x=-1670,y=37,z=-141,distance=..1,tag=nin_ninja] MaxRightArmArmor 35
scoreboard players set @e[x=-1670,y=37,z=-141,distance=..1,tag=nin_ninja] MaxLeftArmArmor 45
scoreboard players set @e[x=-1670,y=37,z=-141,distance=..1,tag=nin_ninja] MaxLegsArmor 45
scoreboard players set @e[x=-1670,y=37,z=-141,distance=..1,tag=nin_ninja] HeadPower 22
scoreboard players set @e[x=-1670,y=37,z=-141,distance=..1,tag=nin_ninja] RightArmPower 46
scoreboard players set @e[x=-1670,y=37,z=-141,distance=..1,tag=nin_ninja] LeftArmPower 28
scoreboard players set @e[x=-1670,y=37,z=-141,distance=..1,tag=nin_ninja] LegsDefense 60
execute as @e[x=-1670,y=37,z=-141,distance=..1,tag=nin_ninja] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1670,y=37,z=-141,distance=..1,tag=nin_ninja] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1670,y=37,z=-141,distance=..1,tag=nin_ninja] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1670,y=37,z=-141,distance=..1,tag=nin_ninja] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1670,y=37,z=-141,distance=..1,tag=nin_ninja] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor