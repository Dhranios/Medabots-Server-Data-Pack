# Increase time by 1
scoreboard players add @s Time 1

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=2,Scout=1}] Time 10
scoreboard players set @s[scores={Time=2,Scout=3}] Time 20

# Show particles
execute if entity @s[scores={Time=20}] run particle minecraft:happy_villager ~ ~1 ~ 1 0 1 1 10

# Apply the effect
scoreboard players set @s[scores={Time=20}] ScoutTime 400

# Affect teammates
execute if entity @s[scores={Time=20},tag=ally_medabot] run scoreboard players set @a[distance=..16,tag=ally_medabot] ScoutTime 400
execute if entity @s[scores={Time=20},tag=enemy_medabot] run scoreboard players set @e[distance=..16,tag=enemy_medabot] ScoutTime 400

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Scout=2,Time=22}] HeadUses 1

# Finish the move
scoreboard players reset @s[scores={Time=30..}] Scout
scoreboard players set @s[scores={Time=30..}] Time 1