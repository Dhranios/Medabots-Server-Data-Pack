# Show particles
particle minecraft:barrier ~ ~1 ~ 1 0 1 1 1

# destroy gravity attacks
execute unless entity @s[scores={ScoutTime=1..}] positioned ^ ^ ^10 run kill @s[type=minecraft:item,tag=break,distance=..10]
execute unless entity @s[scores={ScoutTime=1..}] positioned ^ ^ ^10 run kill @e[type=minecraft:snowball,tag=press,distance=..10]
execute if entity @s[scores={ScoutTime=1..}] positioned ^ ^ ^10 run kill @s[type=minecraft:item,tag=break,distance=..15]
execute if entity @s[scores={ScoutTime=1..}] positioned ^ ^ ^10 run kill @e[type=minecraft:snowball,tag=press,distance=..15]

# Remove from head uses if this was the head part
execute unless entity @s[gamemode=creative] run scoreboard players remove @s[tag=head_selected] HeadUses 1