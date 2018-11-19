teleport @s -1998 45 -612
tag @s add story_battle
summon minecraft:skeleton -1999 45 -605 {CustomName:"{\"translate\":\"medabots_server:entity.spyke\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/battle_enemies/spyke",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["bluesdog","enemy_medabot","killerable","hostile","two_legged_legs","rifle_left_arm","rifle_right_arm","rifle_head","kabuto_medal"],AbsorptionAmount:100.0f}
scoreboard players set @e[x=-1999,y=45,z=-605,distance=..0.7,tag=bluesdog] Stage 99
scoreboard players set @e[x=-1999,y=45,z=-605,distance=..0.7,tag=bluesdog] Medabot 8
scoreboard players set @e[x=-1999,y=45,z=-605,distance=..0.7,tag=bluesdog] MaxHeadUses 18
scoreboard players set @e[x=-1999,y=45,z=-605,distance=..0.7,tag=bluesdog] MaxHeadArmor 60
scoreboard players set @e[x=-1999,y=45,z=-605,distance=..0.7,tag=bluesdog] MaxRightArmArmor 40
scoreboard players set @e[x=-1999,y=45,z=-605,distance=..0.7,tag=bluesdog] MaxLeftArmArmor 40
scoreboard players set @e[x=-1999,y=45,z=-605,distance=..0.7,tag=bluesdog] MaxLegsArmor 45
scoreboard players set @e[x=-1999,y=45,z=-605,distance=..0.7,tag=bluesdog] HeadPower 40
scoreboard players set @e[x=-1999,y=45,z=-605,distance=..0.7,tag=bluesdog] RightArmPower 16
scoreboard players set @e[x=-1999,y=45,z=-605,distance=..0.7,tag=bluesdog] LeftArmPower 20
scoreboard players set @e[x=-1999,y=45,z=-605,distance=..0.7,tag=bluesdog] LegsDefense 36
execute as @e[x=-1999,y=45,z=-605,distance=..0.7,tag=bluesdog] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1999,y=45,z=-605,distance=..0.7,tag=bluesdog] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1999,y=45,z=-605,distance=..0.7,tag=bluesdog] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1999,y=45,z=-605,distance=..0.7,tag=bluesdog] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1999,y=45,z=-605,distance=..0.7,tag=bluesdog] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
function medabots_server:stage/create/icefield_battle/1