# Show particles
execute if entity @s[scores={Time=20}] run particle minecraft:barrier ~ ~1 ~ 1 0 1 1 1

# destroy optical attacks
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=20}] positioned ^ ^ ^10 run kill @e[type=minecraft:arrow,tag=laser,distance=..10]
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=20}] positioned ^ ^ ^10 run kill @e[type=minecraft:arrow,tag=beam,distance=..10]
execute if entity @s[scores={Time=20,ScoutTime=1..}] positioned ^ ^ ^10 run kill @e[type=minecraft:arrow,tag=laser,distance=..15]
execute if entity @s[scores={Time=20,ScoutTime=1..}] positioned ^ ^ ^10 run kill @e[type=minecraft:arrow,tag=beam,distance=..15]

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={GuardOptical=2,Time=22}] HeadUses 1

# Finish move
scoreboard players reset @s[scores={Time=30..}] GuardOptical
scoreboard players set @s[scores={Time=30..}] Time 0

# Increase time by 1
scoreboard players add @s[scores={GuardOptical=1..}] Time 1