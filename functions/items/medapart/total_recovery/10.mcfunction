execute if entity @s[scores={Time=10}] run function medabots_server:items/medapart/total_recovery/20
execute if entity @s[scores={Time=20..}] run function medabots_server:items/medapart/total_recovery/20..

# Show particles at user
particle minecraft:heart ~ ~1.55 ~ 0 0 0 1

# MedapartID user
scoreboard players add @s HeadArmor 20
execute if score @s HeadArmor > @s MaxHeadArmor run scoreboard players operation @s HeadArmor = @s MaxHeadArmor

# Affect teammates
execute if entity @s[tag=ally_medabot] run scoreboard players add @a[distance=..16,tag=ally_medabot] HeadArmor 10
execute if entity @s[tag=ally_medabot] as @a[distance=..16,tag=ally_medabot] if score @s HeadArmor > @s MaxHeadArmor run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute if entity @s[tag=enemy_medabot] run scoreboard players add @e[distance=..16,tag=enemy_medabot] HeadArmor 10
execute if entity @s[tag=enemy_medabot] as @e[distance=..16,tag=enemy_medabot] if score @s HeadArmor > @s MaxHeadArmor run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
