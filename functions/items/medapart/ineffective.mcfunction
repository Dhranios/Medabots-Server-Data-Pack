# Show particles
execute if entity @s[scores={Time=20}] run particle minecraft:angry_villager ~ ~1 ~ 1 0 1 1 30

# Give the effect
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=20},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile] unless entity @s[scores={Time=22,Ineffective=1..3}] run scoreboard players set @s IneffectiveTime 600
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=20},tag=ally_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Time=22,Ineffective=1..3}] run scoreboard players set @s IneffectiveTime 600
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=20},tag=enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Time=22,Ineffective=1..3}] run scoreboard players set @s IneffectiveTime 600
execute if entity @s[scores={Time=20,ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile] unless entity @s[scores={Time=22,Ineffective=1..3}] run scoreboard players set @s IneffectiveTime 900
execute if entity @s[scores={Time=20,ScoutTime=1..},tag=ally_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Time=22,Ineffective=1..3}] run scoreboard players set @s IneffectiveTime 900
execute if entity @s[scores={Time=20,ScoutTime=1..},tag=enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Time=22,Ineffective=1..3}] run scoreboard players set @s IneffectiveTime 900

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Ineffective=2,Time=22}] HeadUses 1

# Finish move
scoreboard players reset @s[scores={Time=30..}] Ineffective
scoreboard players set @s[scores={Time=30..}] Time 0

# Increase time by 1
scoreboard players add @s[scores={Ineffective=1..}] Time 1