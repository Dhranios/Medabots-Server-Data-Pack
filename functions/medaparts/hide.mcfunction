# Increase time by 1
scoreboard players add @s Time 1

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=3,Hide=1}] Time 19
scoreboard players set @s[scores={Time=3,Hide=3}] Time 27

# Show particles
execute if entity @s[scores={Time=32}] run particle minecraft:cloud ~ ~1 ~ 1 0 1 1 10

# Make invisible
scoreboard players set @s[scores={Time=32}] HideTime 300

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Hide=2,Time=32}] HeadUses 1

# Finish move
scoreboard players reset @s[scores={Time=34..}] Hide
scoreboard players set @s[scores={Time=34..}] Time 1