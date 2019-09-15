# Show particles
particle minecraft:barrier ~ ~1 ~ 1 0 1 1 1

# destroy optical attacks
execute unless entity @s[scores={ScoutTime=1..}] positioned ^ ^ ^10 run kill @e[type=minecraft:arrow,tag=laser,distance=..10]
execute unless entity @s[scores={ScoutTime=1..}] positioned ^ ^ ^10 run kill @e[type=minecraft:arrow,tag=beam,distance=..10]
execute if entity @s[scores={ScoutTime=1..}] positioned ^ ^ ^10 run kill @e[type=minecraft:arrow,tag=laser,distance=..15]
execute if entity @s[scores={ScoutTime=1..}] positioned ^ ^ ^10 run kill @e[type=minecraft:arrow,tag=beam,distance=..15]

# Remove from head uses if this was the head part
scoreboard players remove @s[tag=head_selected] HeadUses 1