# Show particles
particle minecraft:firework ~ ~1 ~ 1 0 1 1 10

# Give the effect
execute unless entity @s[scores={ScoutTime=1..}] run scoreboard players set @s PerfectGuardTime 200
scoreboard players set @s[scores={ScoutTime=1..}] PerfectGuardTime 300

# Affect teammates
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=ally_medabot] run scoreboard players set @a[distance=..16,tag=ally_medabot] PerfectGuardTime 200
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=enemy_medabot] run scoreboard players set @e[distance=..16,tag=enemy_medabot] PerfectGuardTime 200
execute if entity @s[scores={ScoutTime=1..},tag=ally_medabot] run scoreboard players set @a[distance=..16,tag=ally_medabot] PerfectGuardTime 300
execute if entity @s[scores={ScoutTime=1..},tag=enemy_medabot] run scoreboard players set @e[distance=..16,tag=enemy_medabot] PerfectGuardTime 300

# Remove from head uses if this was the head
execute unless entity @s[gamemode=creative] run scoreboard players remove @s[tag=head_activated] HeadUses 1