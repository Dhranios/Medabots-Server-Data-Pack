# Show particles
particle minecraft:angry_villager ~ ~1 ~ 1 0 1 1 10

# Set to toggle allowing medaforce
tag @s add me
execute unless entity @s[scores={ScoutTime=1..}] run execute if entity @s[tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^3.5 as @e[distance=..3.5,tag=hostile,tag=!me] run tag @s[tag=!medaforce_block] add medaforce_block
execute unless entity @s[scores={ScoutTime=1..}] run execute if entity @s[tag=ally_medabot] positioned ^ ^ ^3.5 as @e[distance=..3.5,tag=hostile,tag=!ally_medabot,tag=!me] run tag @s[tag=!medaforce_block] add medaforce_block
execute unless entity @s[scores={ScoutTime=1..}] run execute if entity @s[tag=enemy_medabot] positioned ^ ^ ^3.5 as @e[distance=..3.5,tag=hostile,tag=!enemy_medabot,tag=!me] run tag @s[tag=!medaforce_block] add medaforce_block
execute if entity @s[scores={ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^3.5 as @e[distance=..3.5,tag=hostile,tag=!me] run tag @s[tag=!blocked_medaforce] add blocked_medaforce
execute if entity @s[scores={ScoutTime=1..},tag=ally_medabot] positioned ^ ^ ^3.5 as @e[distance=..3.5,tag=hostile,tag=!ally_medabot,tag=!me] run tag @s[tag=!blocked_medaforce] add blocked_medaforce
execute if entity @s[scores={ScoutTime=1..},tag=enemy_medabot] positioned ^ ^ ^3.5 as @e[distance=..3.5,tag=hostile,tag=!enemy_medabot,tag=!me] run tag @s[tag=!blocked_medaforce] add blocked_medaforce
tag @s remove me

# Remove from head uses if this was the head part
execute unless entity @s[gamemode=creative] run scoreboard players remove @s[tag=head_activated] HeadUses 1