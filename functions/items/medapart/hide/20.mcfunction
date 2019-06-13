# Show particles
particle minecraft:cloud ~ ~1 ~ 1 0 1 1 10

# Give the effect
execute unless entity @s[scores={ScoutTime=1..}] run scoreboard players set @s HideTime 300
scoreboard players set @s[scores={ScoutTime=1..}] HideTime 450

# Affect teammates
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=ally_medabot] run scoreboard players set @a[distance=..16,tag=ally_medabot] HideTime 300
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=enemy_medabot] run scoreboard players set @e[distance=..16,tag=enemy_medabot] HideTime 300
execute if entity @s[scores={ScoutTime=1..},tag=ally_medabot] run scoreboard players set @a[distance=..16,tag=ally_medabot] HideTime 450
execute if entity @s[scores={ScoutTime=1..},tag=enemy_medabot] run scoreboard players set @e[distance=..16,tag=enemy_medabot] HideTime 450

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Hide=2}] HeadUses 1