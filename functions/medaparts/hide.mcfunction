# Show particles
execute if entity @s[scores={Time=20}] run particle minecraft:cloud ~ ~1 ~ 1 0 1 1 10

# Give the effect
scoreboard players set @s[scores={Time=20}] HideTime 300

# Affect teammates
execute if entity @s[scores={Time=20},tag=ally_medabot] run scoreboard players set @a[distance=..16,tag=ally_medabot] HideTime 300
execute if entity @s[scores={Time=20},tag=enemy_medabot] run scoreboard players set @e[distance=..16,tag=enemy_medabot] HideTime 300

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Hide=2,Time=22}] HeadUses 1

# Finish move
scoreboard players reset @s[scores={Time=30..}] Hide
scoreboard players set @s[scores={Time=30..}] Time 0

# Increase time by 1
scoreboard players add @s Time 1