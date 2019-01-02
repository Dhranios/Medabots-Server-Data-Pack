# Increase time by 1
scoreboard players add @s Time 1

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=3,NoDefend=1}] Time 19
scoreboard players set @s[scores={Time=3,NoDefend=3}] Time 27

# Show particles
execute if entity @s[scores={Time=32}] run particle minecraft:smoke ~ ~1 ~ 1 0 1 1 10

# Stop defending players from defending
execute if entity @s[scores={Time=32},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile] unless entity @s[scores={Time=32,NoDefend=1..3}] run scoreboard players set @s NoDefendTime 200
execute if entity @s[scores={Time=32},tag=ally_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Time=32,NoDefend=1..3}] run scoreboard players set @s NoDefendTime 200
execute if entity @s[scores={Time=32},tag=enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Time=32,NoDefend=1..3}] run scoreboard players set @s NoDefendTime 200

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={NoDefend=2,Time=32}] HeadUses 1

# Finish the move
scoreboard players reset @s[scores={Time=42..}] NoDefend
scoreboard players set @s[scores={Time=42..}] Time 1