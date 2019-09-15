# Show particles at user
particle minecraft:witch ~ ~1.55 ~ 0 0 0 3

# Give confusion and bug effect to enemies
tag @s add me
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^10 as @e[distance=..10,tag=hostile,tag=!me] run scoreboard players set @s MedapartIDTime 1000
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^10 as @e[distance=..10,tag=hostile,tag=!me] run scoreboard players set @s MedapartIDTime 1000
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=ally_medabot] positioned ^ ^ ^10 as @e[distance=..10,tag=hostile,tag=!ally_medabot,tag=!me] run scoreboard players set @s MedapartIDTime 1000
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=ally_medabot] positioned ^ ^ ^10 as @e[distance=..10,tag=hostile,tag=!ally_medabot,tag=!me] run scoreboard players set @s MedapartIDTime 1000
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=enemy_medabot] positioned ^ ^ ^10 as @e[distance=..10,tag=hostile,tag=!enemy_medabot,tag=!me] run scoreboard players set @s MedapartIDTime 1000
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=enemy_medabot] positioned ^ ^ ^10 as @e[distance=..10,tag=hostile,tag=!enemy_medabot,tag=!me] run scoreboard players set @s MedapartIDTime 1000
execute if entity @s[scores={ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^10 as @e[distance=..10,tag=hostile,tag=!me] run scoreboard players set @s MedapartIDTime 1500
execute if entity @s[scores={ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^10 as @e[distance=..10,tag=hostile,tag=!me] run scoreboard players set @s MedapartIDTime 1500
execute if entity @s[scores={ScoutTime=1..},tag=ally_medabot] positioned ^ ^ ^10 as @e[distance=..10,tag=hostile,tag=!ally_medabot,tag=!me] run scoreboard players set @s MedapartIDTime 1500
execute if entity @s[scores={ScoutTime=1..},tag=ally_medabot] positioned ^ ^ ^10 as @e[distance=..10,tag=hostile,tag=!ally_medabot,tag=!me] run scoreboard players set @s MedapartIDTime 1500
execute if entity @s[scores={ScoutTime=1..},tag=enemy_medabot] positioned ^ ^ ^10 as @e[distance=..10,tag=hostile,tag=!enemy_medabot,tag=!me] run scoreboard players set @s MedapartIDTime 1500
execute if entity @s[scores={ScoutTime=1..},tag=enemy_medabot] positioned ^ ^ ^10 as @e[distance=..10,tag=hostile,tag=!enemy_medabot,tag=!me] run scoreboard players set @s MedapartIDTime 1500
tag @s remove me