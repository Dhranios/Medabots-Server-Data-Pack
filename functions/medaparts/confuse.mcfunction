# Increase time by 1
scoreboard players add @s Time 1

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=3,Confuse=1}] Time 19
scoreboard players set @s[scores={Time=3,Confuse=3}] Time 27

# Show particles
execute if entity @s[scores={Time=32}] run particle minecraft:witch ~ ~1 ~ 1 0 1 1 10

# Give the effect
execute if entity @s[scores={Time=32},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile] unless entity @s[scores={Time=32,Confuse=1..3}] run scoreboard players set @s ConfuseTime 600
execute if entity @s[scores={Time=32},tag=ally_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Time=32,Confuse=1..3}] run scoreboard players set @s ConfuseTime 600
execute if entity @s[scores={Time=32},tag=enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Time=32,Confuse=1..3}] run scoreboard players set @s ConfuseTime 600

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Confuse=2,Time=32}] HeadUses 1

# Finish move
scoreboard players reset @s[scores={Time=34..}] Confuse
scoreboard players set @s[scores={Time=34..}] Time 1