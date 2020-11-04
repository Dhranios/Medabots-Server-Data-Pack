# Show particles
particle minecraft:enchanted_hit ~ ~1 ~ 1 0 1 1 10

# Give the effect
tag @s add me
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!me] run scoreboard players set @s ParalyzeTime 60
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!me] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 0 false
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!me] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 0 false
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=ally_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!ally_medabot,tag=!me] run scoreboard players set @s ParalyzeTime 60
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=ally_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!ally_medabot,tag=!me] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 0 false
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=ally_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!ally_medabot,tag=!me] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 0 false
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!enemy_medabot,tag=!me] run scoreboard players set @s ParalyzeTime 60
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!enemy_medabot,tag=!me] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 0 false
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!enemy_medabot,tag=!me] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 0 false
execute if entity @s[scores={ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!me] run scoreboard players set @s ParalyzeTime 90
execute if entity @s[scores={ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!me] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 1 false
execute if entity @s[scores={ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!me] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 1 false
execute if entity @s[scores={ScoutTime=1..},tag=ally_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!ally_medabot,tag=!me] run scoreboard players set @s ParalyzeTime 90
execute if entity @s[scores={ScoutTime=1..},tag=ally_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!ally_medabot,tag=!me] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 1 false
execute if entity @s[scores={ScoutTime=1..},tag=ally_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!ally_medabot,tag=!me] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 1 false
execute if entity @s[scores={ScoutTime=1..},tag=enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!enemy_medabot,tag=!me] run scoreboard players set @s ParalyzeTime 90
execute if entity @s[scores={ScoutTime=1..},tag=enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!enemy_medabot,tag=!me] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 1 false
execute if entity @s[scores={ScoutTime=1..},tag=enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!enemy_medabot,tag=!me] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 1 false
tag @s remove me

# Remove from head uses if this was the head part
execute unless entity @s[gamemode=creative] run scoreboard players remove @s[tag=head_activated] HeadUses 1