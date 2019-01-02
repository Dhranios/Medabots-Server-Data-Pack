# Increase time by 1
scoreboard players add @s Time 1

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=3,AuxiliaryCharge=1}] Time 19
scoreboard players set @s[scores={Time=3,AuxiliaryCharge=3}] Time 27

# Show particles
execute if entity @s[scores={Time=32}] run particle minecraft:end_rod ~ ~1 ~ 1 0 1 1 10

# Give the effect
scoreboard players set @s[scores={Time=32}] AuxilaryTime 400

# Affect teammates
execute if entity @s[scores={Time=32},tag=ally_medabot] run scoreboard players set @a[distance=..16,tag=ally_medabot] AuxilaryTime 400
execute if entity @s[scores={Time=32},tag=enemy_medabot] run scoreboard players set @e[distance=..16,tag=enemy_medabot] AuxilaryTime 400

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={AuxiliaryCharge=2,Time=32}] HeadUses 1

# Finish move
scoreboard players reset @s[scores={Time=34..}] AuxiliaryCharge
scoreboard players set @s[scores={Time=34..}] Time 1