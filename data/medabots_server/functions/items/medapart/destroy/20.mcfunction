# Show particles
particle minecraft:smoke ~ ~1 ~ 1 0 1 1 10

# Remove from head uses if this was the head part
execute unless entity @s[gamemode=creative] run scoreboard players remove @s[tag=head_activated] HeadUses 1
