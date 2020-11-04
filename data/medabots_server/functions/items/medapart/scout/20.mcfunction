# Show particles
particle minecraft:happy_villager ~ ~1 ~ 1 0 1 1 10

# Apply the effect
scoreboard players set @s ScoutTime 400

# Affect teammates
execute if entity @s[tag=ally_medabot] run scoreboard players set @a[distance=..16,tag=ally_medabot] ScoutTime 400
execute if entity @s[tag=enemy_medabot] run scoreboard players set @e[distance=..16,tag=enemy_medabot] ScoutTime 400

# Remove from head uses if this was the head part
execute unless entity @s[gamemode=creative] run scoreboard players remove @s[tag=head_activated] HeadUses 1