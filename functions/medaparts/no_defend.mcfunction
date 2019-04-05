# Show particles
execute if entity @s[scores={Time=20}] run particle minecraft:smoke ~ ~1 ~ 1 0 1 1 10

# Stop defending players from defending
execute if entity @s[scores={Time=20},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile] unless entity @s[scores={Time=20,NoDefend=1..3}] run scoreboard players set @s NoDefendTime 200
execute if entity @s[scores={Time=20},tag=ally_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Time=20,NoDefend=1..3}] run scoreboard players set @s NoDefendTime 200
execute if entity @s[scores={Time=20},tag=enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Time=20,NoDefend=1..3}] run scoreboard players set @s NoDefendTime 200

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={NoDefend=2,Time=22}] HeadUses 1

# Finish the move
scoreboard players reset @s[scores={Time=30..}] NoDefend
scoreboard players set @s[scores={Time=30..}] Time 0

# Increase time by 1
scoreboard players add @s Time 1