teleport @s -1943 45 -617
tag @s add story_battle
summon minecraft:skeleton -1954 45 -616 {CustomName:"{\"translate\":\"medabots_server:entity.erika\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/battle_enemies/practice_round",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["sailor_multi","enemy_medabot","killerable","hostile","two_legged_legs","rifle_left_arm","gatling_right_arm","scout_head","kabuto_medal"],AbsorptionAmount:100.0f}
scoreboard players set @e[x=-1954,y=45,z=-616,distance=..0.7,tag=sailor_multi] Stage 98
scoreboard players set @e[x=-1954,y=45,z=-616,distance=..0.7,tag=sailor_multi] Medabot 39
scoreboard players set @e[x=-1954,y=45,z=-616,distance=..0.7,tag=sailor_multi] MaxHeadUses 7
scoreboard players set @e[x=-1954,y=45,z=-616,distance=..0.7,tag=sailor_multi] MaxHeadArmor 75
scoreboard players set @e[x=-1954,y=45,z=-616,distance=..0.7,tag=sailor_multi] MaxRightArmArmor 35
scoreboard players set @e[x=-1954,y=45,z=-616,distance=..0.7,tag=sailor_multi] MaxLeftArmArmor 35
scoreboard players set @e[x=-1954,y=45,z=-616,distance=..0.7,tag=sailor_multi] MaxLegsArmor 40
scoreboard players set @e[x=-1954,y=45,z=-616,distance=..0.7,tag=sailor_multi] HeadPower 50
scoreboard players set @e[x=-1954,y=45,z=-616,distance=..0.7,tag=sailor_multi] RightArmPower 20
scoreboard players set @e[x=-1954,y=45,z=-616,distance=..0.7,tag=sailor_multi] LeftArmPower 24
scoreboard players set @e[x=-1954,y=45,z=-616,distance=..0.7,tag=sailor_multi] LegsDefense 40
execute as @e[x=-1954,y=45,z=-616,distance=..0.7,tag=sailor_multi] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1954,y=45,z=-616,distance=..0.7,tag=sailor_multi] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1954,y=45,z=-616,distance=..0.7,tag=sailor_multi] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1954,y=45,z=-616,distance=..0.7,tag=sailor_multi] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1954,y=45,z=-616,distance=..0.7,tag=sailor_multi] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
function medabots_server:stage/create/woods_battle/1