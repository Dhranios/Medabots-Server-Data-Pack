# Show particles
execute if entity @s[scores={Time=20}] run particle minecraft:firework ~ ~1 ~ 1 0 1 1 10

# Give the effect
scoreboard players set @s[scores={Time=20}] PerfectGuardTime 200

# Affect teammates
execute if entity @s[scores={Time=20},tag=ally_medabot] run scoreboard players set @a[distance=..16,tag=ally_medabot] PerfectGuardTime 200
execute if entity @s[scores={Time=20},tag=enemy_medabot] run scoreboard players set @e[distance=..16,tag=enemy_medabot] PerfectGuardTime 200

# Remove from head uses if this was the head
scoreboard players remove @s[scores={PerfectGuard=2,Time=22}] HeadUses 1

# Finish the move
scoreboard players reset @s[scores={Time=30..}] PerfectGuard
scoreboard players set @s[scores={Time=30..}] Time 0

# Increase time by 1
scoreboard players add @s[scores={PerfectGuard=1..}] Time 1