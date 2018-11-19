# Increase time by 1
scoreboard players add @s Time 1

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=3,PerfectGuard=1}] Time 19
scoreboard players set @s[scores={Time=3,PerfectGuard=3}] Time 27

# Show particles
execute if entity @s[scores={Time=32}] run particle minecraft:firework ~ ~1 ~ 1 0 1 1 10

# Give resistance 10 and slowness 3
scoreboard players set @s[scores={Time=34}] PerfectGuardTime 200

# Remove from head uses if this was the head
scoreboard players remove @s[scores={PerfectGuard=2,Time=32}] HeadUses 1

# Finish the move
scoreboard players reset @s[scores={Time=36..}] PerfectGuard
scoreboard players set @s[scores={Time=36..}] Time 1