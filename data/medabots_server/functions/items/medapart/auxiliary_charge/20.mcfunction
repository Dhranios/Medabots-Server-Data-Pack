# Show particles
particle minecraft:end_rod ~ ~1 ~ 1 0 1 1 10

# Give the effect
execute unless entity @s[scores={ScoutTime=1..}] run scoreboard players set @s AuxiliaryTime 400
scoreboard players set @s[scores={ScoutTime=1..}] AuxiliaryTime 600

# Affect teammates
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=ally_medabot] run scoreboard players set @a[distance=..16,tag=ally_medabot] AuxiliaryTime 400
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=enemy_medabot] run scoreboard players set @e[distance=..16,tag=enemy_medabot] AuxiliaryTime 400
execute if entity @s[scores={ScoutTime=1..},tag=ally_medabot] run scoreboard players set @a[distance=..16,tag=ally_medabot] AuxiliaryTime 600
execute if entity @s[scores={ScoutTime=1..},tag=enemy_medabot] run scoreboard players set @e[distance=..16,tag=enemy_medabot] AuxiliaryTime 600

# Remove from head uses if this was the head part
execute unless entity @s[gamemode=creative] run scoreboard players remove @s[tag=head_activated] HeadUses 1