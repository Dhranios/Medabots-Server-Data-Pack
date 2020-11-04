# Show particles
particle minecraft:barrier ~ ~1 ~ 1 0 1 1 1

# destroy all napalm attacks
execute unless entity @s[scores={ScoutTime=1..}] positioned ^ ^ ^10 run kill @e[type=minecraft:arrow,tag=missile,distance=..10]
execute unless entity @s[scores={ScoutTime=1..}] positioned ^ ^ ^10 run kill @e[type=minecraft:arrow,tag=napalm,distance=..10]
execute if entity @s[scores={ScoutTime=1..}] positioned ^ ^ ^10 run kill @e[type=minecraft:arrow,tag=missile,distance=..15]
execute if entity @s[scores={ScoutTime=1..}] positioned ^ ^ ^10 run kill @e[type=minecraft:arrow,tag=napalm,distance=..15]

# Remove from head uses if this was the head part
execute unless entity @s[gamemode=creative] run scoreboard players remove @s[tag=head_activated] HeadUses 1