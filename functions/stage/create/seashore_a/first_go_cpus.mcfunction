# Pure Mermaid
summon minecraft:skeleton -1545 37 -215 {CustomName:"{\"translate\":\"medabots_server:entity.pure_mermaid\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/seashore_a/first_go/pure_mermaid",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["pure_mermaid","enemy_medabot","killerable","hostile","swim_legs","shooting_trap_left_arm","feeze_right_arm","heal_head","mermaid_medal"],AbsorptionAmount:100.0f}
scoreboard players set @e[x=-1545,y=37,z=-215,distance=..1,tag=pure_mermaid] Stage 11
scoreboard players set @e[x=-1545,y=37,z=-215,distance=..1,tag=pure_mermaid] Medabot 0
scoreboard players set @e[x=-1545,y=37,z=-215,distance=..1,tag=pure_mermaid] MaxHeadUses 10
scoreboard players set @e[x=-1545,y=37,z=-215,distance=..1,tag=pure_mermaid] MaxHeadArmor 65
scoreboard players set @e[x=-1545,y=37,z=-215,distance=..1,tag=pure_mermaid] MaxRightArmArmor 35
scoreboard players set @e[x=-1545,y=37,z=-215,distance=..1,tag=pure_mermaid] MaxLeftArmArmor 45
scoreboard players set @e[x=-1545,y=37,z=-215,distance=..1,tag=pure_mermaid] MaxLegsArmor 50
scoreboard players set @e[x=-1545,y=37,z=-215,distance=..1,tag=pure_mermaid] HeadPower 10
scoreboard players set @e[x=-1545,y=37,z=-215,distance=..1,tag=pure_mermaid] RightArmPower 36
scoreboard players set @e[x=-1545,y=37,z=-215,distance=..1,tag=pure_mermaid] LeftArmPower 32
scoreboard players set @e[x=-1545,y=37,z=-215,distance=..1,tag=pure_mermaid] LegsDefense 64
execute as @e[x=-1545,y=37,z=-215,distance=..1,tag=pure_mermaid] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1545,y=37,z=-215,distance=..1,tag=pure_mermaid] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1545,y=37,z=-215,distance=..1,tag=pure_mermaid] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1545,y=37,z=-215,distance=..1,tag=pure_mermaid] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1545,y=37,z=-215,distance=..1,tag=pure_mermaid] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor