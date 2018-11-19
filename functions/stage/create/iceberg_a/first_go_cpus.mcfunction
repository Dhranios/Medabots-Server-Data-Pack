# Pastel Fairy
summon minecraft:skeleton -1729 29 -217 {CustomName:"{\"translate\":\"medabots_server:entity.pastel_fairy\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/iceberg_a/second_go/pastel_fairy",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["pastel_fairy","enemy_medabot","killerable","hostile","float_legs","heal_left_arm","stop_right_arm","shooting_trap_head","ghost_medal"],AbsorptionAmount:100.0f}
scoreboard players set @e[x=-1729,y=29,z=-217,distance=..1,tag=pastel_fairy] Stage 17
scoreboard players set @e[x=-1729,y=29,z=-217,distance=..1,tag=pastel_fairy] Medabot 0
scoreboard players set @e[x=-1729,y=29,z=-217,distance=..1,tag=pastel_fairy] MaxHeadUses 12
scoreboard players set @e[x=-1729,y=29,z=-217,distance=..1,tag=pastel_fairy] MaxHeadArmor 70
scoreboard players set @e[x=-1729,y=29,z=-217,distance=..1,tag=pastel_fairy] MaxRightArmArmor 35
scoreboard players set @e[x=-1729,y=29,z=-217,distance=..1,tag=pastel_fairy] MaxLeftArmArmor 40
scoreboard players set @e[x=-1729,y=29,z=-217,distance=..1,tag=pastel_fairy] MaxLegsArmor 55
scoreboard players set @e[x=-1729,y=29,z=-217,distance=..1,tag=pastel_fairy] HeadPower 43
scoreboard players set @e[x=-1729,y=29,z=-217,distance=..1,tag=pastel_fairy] RightArmPower 26
scoreboard players set @e[x=-1729,y=29,z=-217,distance=..1,tag=pastel_fairy] LeftArmPower 50
scoreboard players set @e[x=-1729,y=29,z=-217,distance=..1,tag=pastel_fairy] LegsDefense 29
execute as @e[x=-1729,y=29,z=-217,distance=..1,tag=pastel_fairy] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1729,y=29,z=-217,distance=..1,tag=pastel_fairy] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1729,y=29,z=-217,distance=..1,tag=pastel_fairy] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1729,y=29,z=-217,distance=..1,tag=pastel_fairy] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1729,y=29,z=-217,distance=..1,tag=pastel_fairy] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor