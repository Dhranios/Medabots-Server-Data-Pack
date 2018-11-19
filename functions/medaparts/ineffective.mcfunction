# Increase time by 1
scoreboard players add @s Time 1

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=3,Ineffective=1}] Time 19
scoreboard players set @s[scores={Time=3,Ineffective=3}] Time 27

# Show particles
execute if entity @s[scores={Time=32}] run particle minecraft:angry_villager ~ ~1 ~ 1 0 1 1 30

# Disable a random part for the hit enemies
execute if entity @s[scores={Time=32}] positioned ^ ^ ^2 as @e[distance=..2] unless entity @s[scores={Time=32,Ineffective=1..3}] run scoreboard players set @s[tag=hostile] IneffectiveTime 600

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Ineffective=2,Time=32}] HeadUses 1

# Finish move
scoreboard players reset @s[scores={Time=37..}] Ineffective
scoreboard players set @s[scores={Time=37..}] Time 1