execute positioned ~ ~-3 ~ if entity @e[tag=hostile,type=!minecraft:item,distance=..0.7] run playsound medabots_server:block.hole.spit hostile @a ~ ~ ~ 1
execute positioned ~ ~-3 ~ as @a[tag=hostile,distance=..0.7] run scoreboard players set @s[scores={LegsArmor=..0,LeftArmArmor=..0,RightArmArmor=..0,HeadArmor=1..9}] HeadArmor 0
execute positioned ~ ~-3 ~ as @a[tag=hostile,distance=..0.7] run scoreboard players remove @s[scores={LegsArmor=..0,LeftArmArmor=..0,RightArmArmor=..0,HeadArmor=10..}] HeadArmor 10
execute positioned ~ ~-3 ~ as @a[tag=hostile,distance=..0.7] run scoreboard players set @s[scores={LegsArmor=..0,LeftArmArmor=..0,RightArmArmor=1..9}] RightArmArmor 0
execute positioned ~ ~-3 ~ as @a[tag=hostile,distance=..0.7] run scoreboard players remove @s[scores={LegsArmor=..0,LeftArmArmor=..0,RightArmArmor=10..}] RightArmArmor 10
execute positioned ~ ~-3 ~ as @a[tag=hostile,distance=..0.7] run scoreboard players set @s[scores={LegsArmor=..0,LeftArmArmor=1..9}] LeftArmArmor 0
execute positioned ~ ~-3 ~ as @a[tag=hostile,distance=..0.7] run scoreboard players remove @s[scores={LegsArmor=..0,LeftArmArmor=10..}] LeftArmArmor 10
execute positioned ~ ~-3 ~ as @a[tag=hostile,distance=..0.7] run scoreboard players set @s[scores={LegsArmor=1..9}] LegsArmor 0
execute positioned ~ ~-3 ~ as @a[tag=hostile,distance=..0.7] run scoreboard players remove @s[scores={LegsArmor=10..}] LegsArmor 10
execute positioned ~ ~-3 ~ as @e[tag=hostile,tag=enemy_medabot,distance=..0.7] run scoreboard players set @s[scores={LegsArmor=..0,LeftArmArmor=..0,RightArmArmor=..0,HeadArmor=1..9}] HeadArmor 0
execute positioned ~ ~-3 ~ as @e[tag=hostile,tag=enemy_medabot,distance=..0.7] run scoreboard players remove @s[scores={LegsArmor=..0,LeftArmArmor=..0,RightArmArmor=..0,HeadArmor=10..}] HeadArmor 10
execute positioned ~ ~-3 ~ as @e[tag=hostile,tag=enemy_medabot,distance=..0.7] run scoreboard players set @s[scores={LegsArmor=..0,LeftArmArmor=..0,RightArmArmor=1..9}] RightArmArmor 0
execute positioned ~ ~-3 ~ as @e[tag=hostile,tag=enemy_medabot,distance=..0.7] run scoreboard players remove @s[scores={LegsArmor=..0,LeftArmArmor=..0,RightArmArmor=10..}] RightArmArmor 10
execute positioned ~ ~-3 ~ as @e[tag=hostile,tag=enemy_medabot,distance=..0.7] run scoreboard players set @s[scores={LegsArmor=..0,LeftArmArmor=1..9}] LeftArmArmor 0
execute positioned ~ ~-3 ~ as @e[tag=hostile,tag=enemy_medabot,distance=..0.7] run scoreboard players remove @s[scores={LegsArmor=..0,LeftArmArmor=10..}] LeftArmArmor 10
execute positioned ~ ~-3 ~ as @e[tag=hostile,tag=enemy_medabot,distance=..0.7] run scoreboard players set @s[scores={LegsArmor=1..9}] LegsArmor 0
execute positioned ~ ~-3 ~ as @e[tag=hostile,tag=enemy_medabot,distance=..0.7] run scoreboard players remove @s[scores={LegsArmor=10..}] LegsArmor 10
execute positioned ~ ~-3 ~ as @e[tag=hostile,type=!minecraft:item,distance=..0.7] run teleport @s ~ ~5 ~
execute positioned ~ ~2 ~ if entity @e[tag=hostile,type=!minecraft:item,distance=..0.7] run scoreboard players operation @s Time = @s DelayTime
execute positioned ~ ~2 ~ unless entity @e[tag=hostile,type=!minecraft:item,distance=..0.7] run scoreboard players set @s Time 1
