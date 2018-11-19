# Kasou Touchu
summon minecraft:skeleton -1575 37 -282 {CustomName:"{\"translate\":\"medabots_server:entity.kasou_touchu\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/ruins_out_a/second_go/kasou_touchu",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["kasou_touchu","enemy_medabot","killerable","hostile","wheel_legs","infect_left_arm","scout_right_arm","no_defend_head","alien_medal"],AbsorptionAmount:100.0f}
scoreboard players set @e[x=-1575,y=37,z=-282,distance=..1,tag=kasou_touchu] Stage 21
scoreboard players set @e[x=-1575,y=37,z=-282,distance=..1,tag=kasou_touchu] Medabot 0
scoreboard players set @e[x=-1575,y=37,z=-282,distance=..1,tag=kasou_touchu] MaxHeadUses 8
scoreboard players set @e[x=-1575,y=37,z=-282,distance=..1,tag=kasou_touchu] MaxHeadArmor 80
scoreboard players set @e[x=-1575,y=37,z=-282,distance=..1,tag=kasou_touchu] MaxRightArmArmor 65
scoreboard players set @e[x=-1575,y=37,z=-282,distance=..1,tag=kasou_touchu] MaxLeftArmArmor 45
scoreboard players set @e[x=-1575,y=37,z=-282,distance=..1,tag=kasou_touchu] MaxLegsArmor 35
scoreboard players set @e[x=-1575,y=37,z=-282,distance=..1,tag=kasou_touchu] HeadPower 20
scoreboard players set @e[x=-1575,y=37,z=-282,distance=..1,tag=kasou_touchu] RightArmPower 31
scoreboard players set @e[x=-1575,y=37,z=-282,distance=..1,tag=kasou_touchu] LeftArmPower 38
scoreboard players set @e[x=-1575,y=37,z=-282,distance=..1,tag=kasou_touchu] LegsDefense 28
execute as @e[x=-1575,y=37,z=-282,distance=..1,tag=kasou_touchu] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1575,y=37,z=-282,distance=..1,tag=kasou_touchu] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1575,y=37,z=-282,distance=..1,tag=kasou_touchu] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1575,y=37,z=-282,distance=..1,tag=kasou_touchu] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1575,y=37,z=-282,distance=..1,tag=kasou_touchu] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor