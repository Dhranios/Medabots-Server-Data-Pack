teleport @s -1997 45 -564
tag @s add story_battle
summon minecraft:skeleton -1996 45 -557 {CustomName:"{\"translate\":\"medabots_server:entity.squidguts\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/battle_enemies/squidguts",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["abyss_greater","enemy_medabot","killerable","hostile","swim_legs","sacrifice_left_arm","sacrifice_right_arm","missile_head","kabuto_medal"],AbsorptionAmount:100.0f}
scoreboard players set @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] Stage 100
scoreboard players set @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] Medabot 22
scoreboard players set @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] MaxHeadUses 5
scoreboard players set @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] MaxHeadArmor 75
scoreboard players set @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] MaxRightArmArmor 50
scoreboard players set @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] MaxLeftArmArmor 50
scoreboard players set @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] MaxLegsArmor 55
scoreboard players set @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] HeadPower 29
scoreboard players set @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] RightArmPower 42
scoreboard players set @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] LeftArmPower 54
scoreboard players set @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] LegsDefense 56
execute as @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
function medabots_server:stage/create/ruins_battle/1