# Increase time by 1
scoreboard players add @s Time 1

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=3,Repair=1}] Time 19
scoreboard players set @s[scores={Time=3,Repair=3}] Time 27

# Show particles
execute if entity @s[scores={Time=32}] run particle minecraft:portal ~ ~1 ~ 1 0 1 1 10

# Un-break the broken parts
scoreboard players set @s[scores={Time=32,LegsArmor=..10}] LegsArmor 10
scoreboard players set @s[scores={Time=32,LeftArmArmor=..10}] LeftArmArmor 10
scoreboard players set @s[scores={Time=32,RightArmArmor=..10}] RightArmArmor 10
scoreboard players operation @s[scores={Time=32,MaxLegsArmor=..10}] LegsArmor = @s MaxLegsArmor
scoreboard players operation @s[scores={Time=32,MaxLeftArmArmor=..10}] LeftArmArmor = @s MaxLeftArmArmor
scoreboard players operation @s[scores={Time=32,MaxRightArmArmor=..10}] RightArmArmor = @s MaxRightArmArmor

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Repair=2,Time=32}] HeadUses 1

# Finish the move
scoreboard players reset @s[scores={Time=36..}] Repair
scoreboard players set @s[scores={Time=36..}] Time 1