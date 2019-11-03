# Show particles
particle minecraft:large_smoke ~ ~1 ~ 0 0 0 1 10

# give the effect
tag @s add me
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=!ally_medabot,tag=!enemy_medabot] as @e[distance=..8,tag=hostile,tag=!me] run scoreboard players set @s ChaosTime 200
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=ally_medabot] as @e[distance=..8,tag=hostile,tag=!ally_medabot,tag=!me] run scoreboard players set @s ChaosTime 200
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=enemy_medabot] as @e[distance=..8,tag=hostile,tag=!enemy_medabot,tag=!me] run scoreboard players set @s ChaosTime 200
execute if entity @s[scores={ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] as @e[distance=..8,tag=hostile,tag=!me] run scoreboard players set @s ChaosTime 300
execute if entity @s[scores={ScoutTime=1..},tag=ally_medabot] as @e[distance=..8,tag=hostile,tag=!ally_medabot,tag=!me] run scoreboard players set @s ChaosTime 300
execute if entity @s[scores={ScoutTime=1..},tag=enemy_medabot] as @e[distance=..8,tag=hostile,tag=!enemy_medabot,tag=!me] run scoreboard players set @s ChaosTime 300
tag @s remove me