# Give the effect
execute unless entity @s[scores={ScoutTime=1..}] run scoreboard players set @s DefenseTime 120
scoreboard players set @s[scores={ScoutTime=1..}] DefenseTime 180

# Affect teammates
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=ally_medabot] run scoreboard players set @a[distance=..16,tag=ally_medabot] DefenseTime 120
execute unless entity @s[scores={ScoutTime=1..}] if entity @e[tag=enemy_medabot] run scoreboard players set @e[distance=..16,tag=enemy_medabot] DefenseTime 120
execute if entity @s[scores={ScoutTime=1..},tag=ally_medabot] run scoreboard players set @a[distance=..16,tag=ally_medabot] DefenseTime 180
execute if entity @e[scores={ScoutTime=1..},tag=enemy_medabot] run scoreboard players set @e[distance=..16,tag=enemy_medabot] DefenseTime 180

# Remove from head uses if this was a head part
scoreboard players remove @s[scores={Defense=2,Time=20}] HeadUses 1