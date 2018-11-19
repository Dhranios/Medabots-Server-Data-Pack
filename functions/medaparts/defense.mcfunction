# Increase time by 1
scoreboard players add @s Time 1

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=3,Defense=1}] Time 19
scoreboard players set @s[scores={Time=3,Defense=3}] Time 27

# Give a shield
scoreboard players set @s[scores={Time=32}] DefenseTime 120

# Remove from head uses if this was a head part
scoreboard players remove @s[scores={Defense=2,Time=32}] HeadUses 1

# Finish move
scoreboard players reset @s[scores={Time=70..}] Defense
scoreboard players set @s[scores={Time=70..}] Time 1