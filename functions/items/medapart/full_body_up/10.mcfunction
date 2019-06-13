# Show particles at user
particle minecraft:portal ~ ~1.55 ~ 0 0 0 10

# Fully repair user
scoreboard players operation @s HeadUses = @s MaxHeadUses
execute unless entity @s[scores={ScoutTime=1..}] run scoreboard players set @s[scores={LegsArmor=..10}] LegsArmor 10
execute unless entity @s[scores={ScoutTime=1..}] run scoreboard players set @s[scores={LeftArmArmor=..10}] LeftArmArmor 10
execute unless entity @s[scores={ScoutTime=1..}] run scoreboard players set @s[scores={RightArmArmor=..10}] RightArmArmor 10
execute unless entity @s[scores={ScoutTime=1..}] run scoreboard players operation @s[scores={MaxLegsArmor=..10}] LegsArmor = @s MaxLegsArmor
execute unless entity @s[scores={ScoutTime=1..}] run scoreboard players operation @s[scores={MaxLeftArmArmor=..10}] LeftArmArmor = @s MaxLeftArmArmor
execute unless entity @s[scores={ScoutTime=1..}] run scoreboard players operation @s[scores={MaxRightArmArmor=..10}] RightArmArmor = @s MaxRightArmArmor
scoreboard players set @s[scores={LegsArmor=..15,ScoutTime=1..}] LegsArmor 15
scoreboard players set @s[scores={LeftArmArmor=..15,ScoutTime=1..}] LeftArmArmor 15
scoreboard players set @s[scores={RightArmArmor=..15,ScoutTime=1..}] RightArmArmor 15
scoreboard players operation @s[scores={MaxLegsArmor=..15,ScoutTime=1..}] LegsArmor = @s MaxLegsArmor
scoreboard players operation @s[scores={MaxLeftArmArmor=..15,ScoutTime=1..}] LeftArmArmor = @s MaxLeftArmArmor
scoreboard players operation @s[scores={MaxRightArmArmor=..15,ScoutTime=1..}] RightArmArmor = @s MaxRightArmArmor

# Affect teammates
execute if entity @s[tag=ally_medabot] as @a[distance=..16,tag=ally_medabot] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute if entity @s[tag=enemy_medabot] as @e[distance=..16,tag=enemy_medabot] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=ally_medabot] run scoreboard players set @a[scores={LegsArmor=..10},distance=..16,tag=ally_medabot] LegsArmor 10
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=ally_medabot] run scoreboard players set @a[scores={LeftArmArmor=..10},distance=..16,tag=ally_medabot] LeftArmArmor 10
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=ally_medabot] run scoreboard players set @a[scores={RightArmArmor=..10},distance=..16,tag=ally_medabot] RightArmArmor 10
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=ally_medabot] as @a[scores={MaxLegsArmor=..10},distance=..16,tag=ally_medabot] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=ally_medabot] as @a[scores={MaxLeftArmArmor=..10},distance=..16,tag=ally_medabot] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=ally_medabot] as @a[scores={MaxRightArmArmor=..10},distance=..16,tag=ally_medabot] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=enemy_medabot] run scoreboard players set @e[scores={LegsArmor=..10},distance=..16,tag=enemy_medabot] LegsArmor 10
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=enemy_medabot] run scoreboard players set @e[scores={LeftArmArmor=..10},distance=..16,tag=enemy_medabot] LeftArmArmor 10
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=enemy_medabot] run scoreboard players set @e[scores={RightArmArmor=..10},distance=..16,tag=enemy_medabot] RightArmArmor 10
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=enemy_medabot] as @e[scores={MaxLegsArmor=..10},distance=..16,tag=enemy_medabot] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=enemy_medabot] as @e[scores={MaxLeftArmArmor=..10},distance=..16,tag=enemy_medabot] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=enemy_medabot] as @e[scores={MaxRightArmArmor=..10},distance=..16,tag=enemy_medabot] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute if entity @s[scores={ScoutTime=1..},tag=ally_medabot] run scoreboard players set @a[scores={LegsArmor=..15},distance=..16,tag=ally_medabot] LegsArmor 15
execute if entity @s[scores={ScoutTime=1..},tag=ally_medabot] run scoreboard players set @a[scores={LeftArmArmor=..15},distance=..16,tag=ally_medabot] LeftArmArmor 15
execute if entity @s[scores={ScoutTime=1..},tag=ally_medabot] run scoreboard players set @a[scores={RightArmArmor=..15},distance=..16,tag=ally_medabot] RightArmArmor 15
execute if entity @s[scores={ScoutTime=1..},tag=ally_medabot] as @a[scores={MaxLegsArmor=..15},distance=..16,tag=ally_medabot] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
execute if entity @s[scores={ScoutTime=1..},tag=ally_medabot] as @a[scores={MaxLeftArmArmor=..15},distance=..16,tag=ally_medabot] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute if entity @s[scores={ScoutTime=1..},tag=ally_medabot] as @a[scores={MaxRightArmArmor=..15},distance=..16,tag=ally_medabot] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute if entity @s[scores={ScoutTime=1..},tag=enemy_medabot] run scoreboard players set @e[scores={LegsArmor=..15},distance=..16,tag=enemy_medabot] LegsArmor 15
execute if entity @s[scores={ScoutTime=1..},tag=enemy_medabot] run scoreboard players set @e[scores={LeftArmArmor=..15},distance=..16,tag=enemy_medabot] LeftArmArmor 15
execute if entity @s[scores={ScoutTime=1..},tag=enemy_medabot] run scoreboard players set @e[scores={RightArmArmor=..15},distance=..16,tag=enemy_medabot] RightArmArmor 15
execute if entity @s[scores={ScoutTime=1..},tag=enemy_medabot] as @e[scores={MaxLegsArmor=..15},distance=..16,tag=enemy_medabot] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
execute if entity @s[scores={ScoutTime=1..},tag=enemy_medabot] as @e[scores={MaxLeftArmArmor=..15},distance=..16,tag=enemy_medabot] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute if entity @s[scores={ScoutTime=1..},tag=enemy_medabot] as @e[scores={MaxRightArmArmor=..15},distance=..16,tag=enemy_medabot] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor