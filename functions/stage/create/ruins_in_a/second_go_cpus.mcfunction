# Maxsnake
summon minecraft:skeleton -1671 29 -307 {CustomName:"{\"translate\":\"medabots_server:entity.maxsnake\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/ruins_in_a/second_go/maxsnake",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["maxsnake","enemy_medabot","killerable","hostile","multi_legged_legs","hide_left_arm","melt_right_arm","infect_head","kuwagata_medal"],AbsorptionAmount:100.0f}
scoreboard players set @e[x=-1671,y=29,z=-307,distance=..1,tag=maxsnake] Stage 24
scoreboard players set @e[x=-1671,y=29,z=-307,distance=..1,tag=maxsnake] Medabot 0
scoreboard players set @e[x=-1671,y=29,z=-307,distance=..1,tag=maxsnake] MaxHeadUses 6
scoreboard players set @e[x=-1671,y=29,z=-307,distance=..1,tag=maxsnake] MaxHeadArmor 70
scoreboard players set @e[x=-1671,y=29,z=-307,distance=..1,tag=maxsnake] MaxRightArmArmor 45
scoreboard players set @e[x=-1671,y=29,z=-307,distance=..1,tag=maxsnake] MaxLeftArmArmor 45
scoreboard players set @e[x=-1671,y=29,z=-307,distance=..1,tag=maxsnake] MaxLegsArmor 40
scoreboard players set @e[x=-1671,y=29,z=-307,distance=..1,tag=maxsnake] HeadPower 56
scoreboard players set @e[x=-1671,y=29,z=-307,distance=..1,tag=maxsnake] RightArmPower 18
scoreboard players set @e[x=-1671,y=29,z=-307,distance=..1,tag=maxsnake] LeftArmPower 59
scoreboard players set @e[x=-1671,y=29,z=-307,distance=..1,tag=maxsnake] LegsDefense 16
execute as @e[x=-1671,y=29,z=-307,distance=..1,tag=maxsnake] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1671,y=29,z=-307,distance=..1,tag=maxsnake] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1671,y=29,z=-307,distance=..1,tag=maxsnake] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1671,y=29,z=-307,distance=..1,tag=maxsnake] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1671,y=29,z=-307,distance=..1,tag=maxsnake] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor

# Frappe
summon minecraft:skeleton -1673 29 -307 {CustomName:"{\"translate\":\"medabots_server:entity.frappe\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/ruins_in_a/second_go/frappe",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["frappe","enemy_medabot","killerable","hostile","tank_legs","stop_left_arm","repair_right_arm","stop_head","kuwagata_medal"],AbsorptionAmount:100.0f}
scoreboard players set @e[x=-1673,y=29,z=-307,distance=..1,tag=frappe] Stage 24
scoreboard players set @e[x=-1673,y=29,z=-307,distance=..1,tag=frappe] Medabot 0
scoreboard players set @e[x=-1673,y=29,z=-307,distance=..1,tag=frappe] MaxHeadUses 5
scoreboard players set @e[x=-1673,y=29,z=-307,distance=..1,tag=frappe] MaxHeadArmor 55
scoreboard players set @e[x=-1673,y=29,z=-307,distance=..1,tag=frappe] MaxRightArmArmor 25
scoreboard players set @e[x=-1673,y=29,z=-307,distance=..1,tag=frappe] MaxLeftArmArmor 35
scoreboard players set @e[x=-1673,y=29,z=-307,distance=..1,tag=frappe] MaxLegsArmor 65
scoreboard players set @e[x=-1673,y=29,z=-307,distance=..1,tag=frappe] HeadPower 27
scoreboard players set @e[x=-1673,y=29,z=-307,distance=..1,tag=frappe] RightArmPower 16
scoreboard players set @e[x=-1673,y=29,z=-307,distance=..1,tag=frappe] LeftArmPower 30
scoreboard players set @e[x=-1673,y=29,z=-307,distance=..1,tag=frappe] LegsDefense 40
execute as @e[x=-1673,y=29,z=-307,distance=..1,tag=frappe] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1673,y=29,z=-307,distance=..1,tag=frappe] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1673,y=29,z=-307,distance=..1,tag=frappe] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1673,y=29,z=-307,distance=..1,tag=frappe] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1673,y=29,z=-307,distance=..1,tag=frappe] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor