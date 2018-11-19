# Poison Scorpi
summon minecraft:skeleton -1592 37 -140 {CustomName:"{\"translate\":\"medabots_server:entity.poison_scorpi\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/rock_a/first_go/poison_scorpi",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["poison_scorpi","enemy_medabot","killerable","hostile","multi_legged_legs","hide_left_arm","hammer_right_arm","melt_head","kuwagata_medal"],AbsorptionAmount:100.0f}
scoreboard players set @e[x=-1592,y=37,z=-140,distance=..1,tag=poison_scorpi] Stage 5
scoreboard players set @e[x=-1592,y=37,z=-140,distance=..1,tag=poison_scorpi] Medabot 0
scoreboard players set @e[x=-1592,y=37,z=-140,distance=..1,tag=poison_scorpi] MaxHeadUses 6
scoreboard players set @e[x=-1592,y=37,z=-140,distance=..1,tag=poison_scorpi] MaxHeadArmor 70
scoreboard players set @e[x=-1592,y=37,z=-140,distance=..1,tag=poison_scorpi] MaxRightArmArmor 40
scoreboard players set @e[x=-1592,y=37,z=-140,distance=..1,tag=poison_scorpi] MaxLeftArmArmor 45
scoreboard players set @e[x=-1592,y=37,z=-140,distance=..1,tag=poison_scorpi] MaxLegsArmor 40
scoreboard players set @e[x=-1592,y=37,z=-140,distance=..1,tag=poison_scorpi] HeadPower 22
scoreboard players set @e[x=-1592,y=37,z=-140,distance=..1,tag=poison_scorpi] RightArmPower 24
scoreboard players set @e[x=-1592,y=37,z=-140,distance=..1,tag=poison_scorpi] LeftArmPower 59
scoreboard players set @e[x=-1592,y=37,z=-140,distance=..1,tag=poison_scorpi] LegsDefense 20
execute as @e[x=-1592,y=37,z=-140,distance=..1,tag=poison_scorpi] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1592,y=37,z=-140,distance=..1,tag=poison_scorpi] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1592,y=37,z=-140,distance=..1,tag=poison_scorpi] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1592,y=37,z=-140,distance=..1,tag=poison_scorpi] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1592,y=37,z=-140,distance=..1,tag=poison_scorpi] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor