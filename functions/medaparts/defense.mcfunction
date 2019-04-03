# Increase time by 1
scoreboard players add @s Time 1

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=2,Defense=1}] Time 10
scoreboard players set @s[scores={Time=2,Defense=3}] Time 20

# Give the effect
scoreboard players set @s[scores={Time=20}] DefenseTime 120

# Affect teammates
execute if entity @s[scores={Time=20},tag=ally_medabot] run scoreboard players set @a[distance=..16,tag=ally_medabot] DefenseTime 120
execute if entity @e[scores={Time=20},tag=enemy_medabot] run scoreboard players set @e[distance=..16,tag=enemy_medabot] DefenseTime 120

# Remove from head uses if this was a head part
scoreboard players remove @s[scores={Defense=2,Time=22}] HeadUses 1

# Finish move
scoreboard players reset @s[scores={Time=30..}] Defense
scoreboard players set @s[scores={Time=30..}] Time 1