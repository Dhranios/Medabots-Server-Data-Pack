# Bluesdog
summon minecraft:skeleton -1889 29 -577 {CustomName:"{\"translate\":\"medabots_server:entity.bluesdog\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/boxer/first_go/bluesdog",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["bluesdog","enemy_medabot","killerable","hostile","two_legged_legs","rifle_left_arm","rifle_right_arm","rifle_head","kabuto_medal"],AbsorptionAmount:100.0f}
scoreboard players set @e[x=-1889,y=29,z=-577,distance=..1,tag=bluesdog] Stage 79
scoreboard players set @e[x=-1889,y=29,z=-577,distance=..1,tag=bluesdog] Medabot 8
scoreboard players set @e[x=-1889,y=29,z=-577,distance=..1,tag=bluesdog] MaxHeadUses 18
scoreboard players set @e[x=-1889,y=29,z=-577,distance=..1,tag=bluesdog] MaxHeadArmor 60
scoreboard players set @e[x=-1889,y=29,z=-577,distance=..1,tag=bluesdog] MaxRightArmArmor 40
scoreboard players set @e[x=-1889,y=29,z=-577,distance=..1,tag=bluesdog] MaxLeftArmArmor 40
scoreboard players set @e[x=-1889,y=29,z=-577,distance=..1,tag=bluesdog] MaxLegsArmor 45
scoreboard players set @e[x=-1889,y=29,z=-577,distance=..1,tag=bluesdog] HeadPower 40
scoreboard players set @e[x=-1889,y=29,z=-577,distance=..1,tag=bluesdog] RightArmPower 16
scoreboard players set @e[x=-1889,y=29,z=-577,distance=..1,tag=bluesdog] LeftArmPower 20
scoreboard players set @e[x=-1889,y=29,z=-577,distance=..1,tag=bluesdog] LegsDefense 36
execute as @e[x=-1889,y=29,z=-577,distance=..1,tag=bluesdog] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1889,y=29,z=-577,distance=..1,tag=bluesdog] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1889,y=29,z=-577,distance=..1,tag=bluesdog] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1889,y=29,z=-577,distance=..1,tag=bluesdog] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1889,y=29,z=-577,distance=..1,tag=bluesdog] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor

# Keithturtle
summon minecraft:skeleton -1891 29 -577 {CustomName:"{\"translate\":\"medabots_server:entity.keithturtle\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/boxer/first_go/keithturtle",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["keithturtle","enemy_medabot","killerable","hostile","tank_legs","laser_left_arm","laser_right_arm","laser_head","kabuto_medal"],AbsorptionAmount:100.0f}
scoreboard players set @e[x=-1891,y=29,z=-577,distance=..1,tag=keithturtle] Stage 79
scoreboard players set @e[x=-1891,y=29,z=-577,distance=..1,tag=keithturtle] Medabot 1
scoreboard players set @e[x=-1891,y=29,z=-577,distance=..1,tag=keithturtle] MaxHeadUses 5
scoreboard players set @e[x=-1891,y=29,z=-577,distance=..1,tag=keithturtle] MaxHeadArmor 50
scoreboard players set @e[x=-1891,y=29,z=-577,distance=..1,tag=keithturtle] MaxRightArmArmor 35
scoreboard players set @e[x=-1891,y=29,z=-577,distance=..1,tag=keithturtle] MaxLeftArmArmor 35
scoreboard players set @e[x=-1891,y=29,z=-577,distance=..1,tag=keithturtle] MaxLegsArmor 85
scoreboard players set @e[x=-1891,y=29,z=-577,distance=..1,tag=keithturtle] HeadPower 48
scoreboard players set @e[x=-1891,y=29,z=-577,distance=..1,tag=keithturtle] RightArmPower 23
scoreboard players set @e[x=-1891,y=29,z=-577,distance=..1,tag=keithturtle] LeftArmPower 29
scoreboard players set @e[x=-1891,y=29,z=-577,distance=..1,tag=keithturtle] LegsDefense 48
execute as @e[x=-1891,y=29,z=-577,distance=..1,tag=keithturtle] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1891,y=29,z=-577,distance=..1,tag=keithturtle] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1891,y=29,z=-577,distance=..1,tag=keithturtle] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1891,y=29,z=-577,distance=..1,tag=keithturtle] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1891,y=29,z=-577,distance=..1,tag=keithturtle] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor

# Peppercat
summon minecraft:skeleton -1893 29 -577 {CustomName:"{\"translate\":\"medabots_server:entity.peppercat\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/boxer/first_go/peppercat",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["peppercat","enemy_medabot","killerable","hostile","two_legged_legs","paralyze_left_arm","paralyze_right_arm","paralyze_head","kuwagata_medal"],AbsorptionAmount:100.0f}
scoreboard players set @e[x=-1893,y=29,z=-577,distance=..1,tag=peppercat] Stage 79
scoreboard players set @e[x=-1893,y=29,z=-577,distance=..1,tag=peppercat] Medabot 27
scoreboard players set @e[x=-1893,y=29,z=-577,distance=..1,tag=peppercat] MaxHeadUses 7
scoreboard players set @e[x=-1893,y=29,z=-577,distance=..1,tag=peppercat] MaxHeadArmor 60
scoreboard players set @e[x=-1893,y=29,z=-577,distance=..1,tag=peppercat] MaxRightArmArmor 40
scoreboard players set @e[x=-1893,y=29,z=-577,distance=..1,tag=peppercat] MaxLeftArmArmor 40
scoreboard players set @e[x=-1893,y=29,z=-577,distance=..1,tag=peppercat] MaxLegsArmor 40
scoreboard players set @e[x=-1893,y=29,z=-577,distance=..1,tag=peppercat] HeadPower 44
scoreboard players set @e[x=-1893,y=29,z=-577,distance=..1,tag=peppercat] RightArmPower 24
scoreboard players set @e[x=-1893,y=29,z=-577,distance=..1,tag=peppercat] LeftArmPower 28
scoreboard players set @e[x=-1893,y=29,z=-577,distance=..1,tag=peppercat] LegsDefense 40
execute as @e[x=-1893,y=29,z=-577,distance=..1,tag=peppercat] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1893,y=29,z=-577,distance=..1,tag=peppercat] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1893,y=29,z=-577,distance=..1,tag=peppercat] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1893,y=29,z=-577,distance=..1,tag=peppercat] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1893,y=29,z=-577,distance=..1,tag=peppercat] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor

# Aimflash
summon minecraft:skeleton -1895 29 -577 {CustomName:"{\"translate\":\"medabots_server:entity.aimflash\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/boxer/first_go/aimflash",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["aimflash","enemy_medabot","killerable","hostile","wheel_legs","gatling_left_arm","laser_right_arm","falling_head","monkey_medal"],AbsorptionAmount:100.0f}
scoreboard players set @e[x=-1895,y=29,z=-577,distance=..1,tag=aimflash] Stage 79
scoreboard players set @e[x=-1895,y=29,z=-577,distance=..1,tag=aimflash] Medabot 26
scoreboard players set @e[x=-1895,y=29,z=-577,distance=..1,tag=aimflash] MaxHeadUses 8
scoreboard players set @e[x=-1895,y=29,z=-577,distance=..1,tag=aimflash] MaxHeadArmor 65
scoreboard players set @e[x=-1895,y=29,z=-577,distance=..1,tag=aimflash] MaxRightArmArmor 20
scoreboard players set @e[x=-1895,y=29,z=-577,distance=..1,tag=aimflash] MaxLeftArmArmor 45
scoreboard players set @e[x=-1895,y=29,z=-577,distance=..1,tag=aimflash] MaxLegsArmor 50
scoreboard players set @e[x=-1895,y=29,z=-577,distance=..1,tag=aimflash] HeadPower 20
scoreboard players set @e[x=-1895,y=29,z=-577,distance=..1,tag=aimflash] RightArmPower 27
scoreboard players set @e[x=-1895,y=29,z=-577,distance=..1,tag=aimflash] LeftArmPower 20
scoreboard players set @e[x=-1895,y=29,z=-577,distance=..1,tag=aimflash] LegsDefense 28
execute as @e[x=-1895,y=29,z=-577,distance=..1,tag=aimflash] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1895,y=29,z=-577,distance=..1,tag=aimflash] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1895,y=29,z=-577,distance=..1,tag=aimflash] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1895,y=29,z=-577,distance=..1,tag=aimflash] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1895,y=29,z=-577,distance=..1,tag=aimflash] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor

# Sailor-Multi
summon minecraft:skeleton -1897 29 -577 {CustomName:"{\"translate\":\"medabots_server:entity.sailor_multi\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/boxer/first_go/sailor_multi",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["sailor_multi","enemy_medabot","killerable","hostile","two_legged_legs","rifle_left_arm","gatling_right_arm","scout_head","spider_medal"],AbsorptionAmount:100.0f}
scoreboard players set @e[x=-1897,y=29,z=-577,distance=..1,tag=sailor_multi] Stage 79
scoreboard players set @e[x=-1897,y=29,z=-577,distance=..1,tag=sailor_multi] Medabot 39
scoreboard players set @e[x=-1897,y=29,z=-577,distance=..1,tag=sailor_multi] MaxHeadUses 7
scoreboard players set @e[x=-1897,y=29,z=-577,distance=..1,tag=sailor_multi] MaxHeadArmor 75
scoreboard players set @e[x=-1897,y=29,z=-577,distance=..1,tag=sailor_multi] MaxRightArmArmor 35
scoreboard players set @e[x=-1897,y=29,z=-577,distance=..1,tag=sailor_multi] MaxLeftArmArmor 35
scoreboard players set @e[x=-1897,y=29,z=-577,distance=..1,tag=sailor_multi] MaxLegsArmor 40
scoreboard players set @e[x=-1897,y=29,z=-577,distance=..1,tag=sailor_multi] HeadPower 50
scoreboard players set @e[x=-1897,y=29,z=-577,distance=..1,tag=sailor_multi] RightArmPower 20
scoreboard players set @e[x=-1897,y=29,z=-577,distance=..1,tag=sailor_multi] LeftArmPower 24
scoreboard players set @e[x=-1897,y=29,z=-577,distance=..1,tag=sailor_multi] LegsDefense 40
execute as @e[x=-1897,y=29,z=-577,distance=..1,tag=sailor_multi] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1897,y=29,z=-577,distance=..1,tag=sailor_multi] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1897,y=29,z=-577,distance=..1,tag=sailor_multi] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1897,y=29,z=-577,distance=..1,tag=sailor_multi] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1897,y=29,z=-577,distance=..1,tag=sailor_multi] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor

# Dorcus
summon minecraft:skeleton -1899 29 -577 {CustomName:"{\"translate\":\"medabots_server:entity.dorcus\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/boxer/first_go/dorcus",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["dorcus","enemy_medabot","killerable","hostile","two_legged_legs","hammer_left_arm","sword_right_arm","scout_head","kuwagata_medal"],AbsorptionAmount:100.0f}
scoreboard players set @e[x=-1899,y=29,z=-577,distance=..1,tag=dorcus] Stage 79
scoreboard players set @e[x=-1899,y=29,z=-577,distance=..1,tag=dorcus] Medabot 32
scoreboard players set @e[x=-1899,y=29,z=-577,distance=..1,tag=dorcus] MaxHeadUses 6
scoreboard players set @e[x=-1899,y=29,z=-577,distance=..1,tag=dorcus] MaxHeadArmor 85
scoreboard players set @e[x=-1899,y=29,z=-577,distance=..1,tag=dorcus] MaxRightArmArmor 45
scoreboard players set @e[x=-1899,y=29,z=-577,distance=..1,tag=dorcus] MaxLeftArmArmor 45
scoreboard players set @e[x=-1899,y=29,z=-577,distance=..1,tag=dorcus] MaxLegsArmor 50
scoreboard players set @e[x=-1899,y=29,z=-577,distance=..1,tag=dorcus] HeadPower 72
scoreboard players set @e[x=-1899,y=29,z=-577,distance=..1,tag=dorcus] RightArmPower 32
scoreboard players set @e[x=-1899,y=29,z=-577,distance=..1,tag=dorcus] LeftArmPower 52
scoreboard players set @e[x=-1899,y=29,z=-577,distance=..1,tag=dorcus] LegsDefense 52
execute as @e[x=-1899,y=29,z=-577,distance=..1,tag=dorcus] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1899,y=29,z=-577,distance=..1,tag=dorcus] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1899,y=29,z=-577,distance=..1,tag=dorcus] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1899,y=29,z=-577,distance=..1,tag=dorcus] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1899,y=29,z=-577,distance=..1,tag=dorcus] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor

# Potato-Insect
summon minecraft:skeleton -1901 29 -577 {CustomName:"{\"translate\":\"medabots_server:entity.potato_insect\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/boxer/first_go/potato_insect",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["potato_insect","enemy_medabot","killerable","hostile","wheel_legs","paralyze_left_arm","freeze_right_arm","bug_head","monkey_medal"],AbsorptionAmount:100.0f}
scoreboard players set @e[x=-1901,y=29,z=-577,distance=..1,tag=potato_insect] Stage 79
scoreboard players set @e[x=-1901,y=29,z=-577,distance=..1,tag=potato_insect] Medabot 0
scoreboard players set @e[x=-1901,y=29,z=-577,distance=..1,tag=potato_insect] MaxHeadUses 7
scoreboard players set @e[x=-1901,y=29,z=-577,distance=..1,tag=potato_insect] MaxHeadArmor 90
scoreboard players set @e[x=-1901,y=29,z=-577,distance=..1,tag=potato_insect] MaxRightArmArmor 25
scoreboard players set @e[x=-1901,y=29,z=-577,distance=..1,tag=potato_insect] MaxLeftArmArmor 40
scoreboard players set @e[x=-1901,y=29,z=-577,distance=..1,tag=potato_insect] MaxLegsArmor 55
scoreboard players set @e[x=-1901,y=29,z=-577,distance=..1,tag=potato_insect] HeadPower 25
scoreboard players set @e[x=-1901,y=29,z=-577,distance=..1,tag=potato_insect] RightArmPower 28
scoreboard players set @e[x=-1901,y=29,z=-577,distance=..1,tag=potato_insect] LeftArmPower 28
scoreboard players set @e[x=-1901,y=29,z=-577,distance=..1,tag=potato_insect] LegsDefense 28
execute as @e[x=-1901,y=29,z=-577,distance=..1,tag=potato_insect] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1901,y=29,z=-577,distance=..1,tag=potato_insect] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1901,y=29,z=-577,distance=..1,tag=potato_insect] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1901,y=29,z=-577,distance=..1,tag=potato_insect] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1901,y=29,z=-577,distance=..1,tag=potato_insect] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor

# Blackbeetle
summon minecraft:skeleton -1903 29 -577 {CustomName:"{\"translate\":\"medabots_server:entity.blackbeetle\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/battle_enemies/blackbeetle",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["blackbeetle","enemy_medabot","killerable","hostile","two_legged_legs","gating_left_arm","rifle_right_arm","missile_head","kabuto_medal"],AbsorptionAmount:100.0f}
scoreboard players set @e[x=-1903,y=29,z=-577,distance=..1,tag=blackbeetle] Stage 79
scoreboard players set @e[x=-1903,y=29,z=-577,distance=..1,tag=blackbeetle] Medabot 24
scoreboard players set @e[x=-1903,y=29,z=-577,distance=..1,tag=blackbeetle] MaxHeadUses 6
scoreboard players set @e[x=-1903,y=29,z=-577,distance=..1,tag=blackbeetle] MaxHeadArmor 65
scoreboard players set @e[x=-1903,y=29,z=-577,distance=..1,tag=blackbeetle] MaxRightArmArmor 35
scoreboard players set @e[x=-1903,y=29,z=-577,distance=..1,tag=blackbeetle] MaxLeftArmArmor 35
scoreboard players set @e[x=-1903,y=29,z=-577,distance=..1,tag=blackbeetle] MaxLegsArmor 40
scoreboard players set @e[x=-1903,y=29,z=-577,distance=..1,tag=blackbeetle] HeadPower 31
scoreboard players set @e[x=-1903,y=29,z=-577,distance=..1,tag=blackbeetle] RightArmPower 40
scoreboard players set @e[x=-1903,y=29,z=-577,distance=..1,tag=blackbeetle] LeftArmPower 28
scoreboard players set @e[x=-1903,y=29,z=-577,distance=..1,tag=blackbeetle] LegsDefense 44
execute as @e[x=-1903,y=29,z=-577,distance=..1,tag=blackbeetle] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1903,y=29,z=-577,distance=..1,tag=blackbeetle] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1903,y=29,z=-577,distance=..1,tag=blackbeetle] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1903,y=29,z=-577,distance=..1,tag=blackbeetle] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1903,y=29,z=-577,distance=..1,tag=blackbeetle] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor