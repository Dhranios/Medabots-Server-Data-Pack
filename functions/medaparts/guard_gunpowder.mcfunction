# Increase time by 1
scoreboard players add @s Time 1

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=3,GuardGunpowder=1}] Time 19
scoreboard players set @s[scores={Time=3,GuardGunpowder=3}] Time 27

# Show particles
execute if entity @s[scores={Time=32}] run particle minecraft:barrier ~ ~1 ~ 1 0 1 1 1

# destroy all napalm attacks
execute if entity @s[scores={Time=32}] positioned ^ ^ ^10 run kill @e[type=minecraft:arrow,tag=missile,distance=..10]
execute if entity @s[scores={Time=32}] positioned ^ ^ ^10 run kill @e[type=minecraft:arrow,tag=napalm,distance=..10]

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={GuardGunpowder=2,Time=32}] HeadUses 1

# Finish move
scoreboard players reset @s[scores={Time=52..}] GuardGunpowder
scoreboard players set @s[scores={Time=52..}] Time 1