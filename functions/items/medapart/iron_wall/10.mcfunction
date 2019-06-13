# Give the effect
execute unless entity @s[scores={ScoutTime=1..}] run scoreboard players set @s DefenseTime 600
scoreboard players set @s[scores={ScoutTime=1..}] DefenseTime 900

# Affect teammates
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=ally_medabot] run scoreboard players set @a[distance=..16,tag=ally_medabot] DefenseTime 600
execute unless entity @s[scores={ScoutTime=1..}] if entity @e[tag=enemy_medabot] run scoreboard players set @e[distance=..16,tag=enemy_medabot] DefenseTime 600
execute if entity @s[scores={ScoutTime=1..},tag=ally_medabot] run scoreboard players set @a[distance=..16,tag=ally_medabot] DefenseTime 900
execute if entity @e[scores={ScoutTime=1..},tag=enemy_medabot] run scoreboard players set @e[distance=..16,tag=enemy_medabot] DefenseTime 900