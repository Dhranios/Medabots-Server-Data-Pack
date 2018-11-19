execute as @e[distance=..10,tag=enemy_medabot] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
execute as @e[distance=..10,tag=enemy_medabot] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..10,tag=enemy_medabot] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..10,tag=enemy_medabot] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..10,tag=enemy_medabot] run scoreboard players operation @s HeadUses = @s MaxHeadUses
scoreboard players set @e[distance=..10,tag=enemy_medabot,scores={Time=2..}] Time 950
tag @e[distance=7..10,tag=enemy_medabot] add teleport
execute as @e[distance=..10,tag=enemy_medabot] at @s if block ~ ~ ~ minecraft:water if block ~ ~-1 ~ minecraft:water run tag @s add teleport
execute as @e[distance=..10,tag=enemy_medabot] at @s if block ~ ~ ~ minecraft:bubble_column run tag @s add teleport
teleport @e[distance=..10,tag=enemy_medabot,tag=teleport] ~ ~ ~
tag @e[distance=..10,tag=enemy_medabot,tag=teleport] remove teleport