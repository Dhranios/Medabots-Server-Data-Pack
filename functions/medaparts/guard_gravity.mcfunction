# Show particles
execute if entity @s[scores={Time=20}] run particle minecraft:barrier ~ ~1 ~ 1 0 1 1 1

# destroy gravity attacks
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=20}] positioned ^ ^ ^10 run kill @s[type=minecraft:item,tag=break,distance=..10]
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=20}] positioned ^ ^ ^10 run kill @e[type=minecraft:snowball,tag=press,distance=..10]
execute if entity @s[scores={Time=20,ScoutTime=1..}] positioned ^ ^ ^10 run kill @s[type=minecraft:item,tag=break,distance=..15]
execute if entity @s[scores={Time=20,ScoutTime=1..}] positioned ^ ^ ^10 run kill @e[type=minecraft:snowball,tag=press,distance=..15]

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={GuardGravity=2,Time=22}] HeadUses 1

# Finish move
scoreboard players reset @s[scores={Time=30..}] GuardGravity
scoreboard players set @s[scores={Time=30..}] Time 0

# Increase time by 1
scoreboard players add @s[scores={GuardGravity=1..}] Time 1