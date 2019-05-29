# Show particles
execute if entity @s[scores={Time=20}] run particle minecraft:enchanted_hit ~ ~1 ~ 1 0 1 1 10
execute if entity @s[scores={Time=25}] run particle minecraft:enchanted_hit ~ ~1 ~ 1 0 1 1 10

# Give the effect
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=20},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile] unless entity @s[scores={Time=20,Freeze=1..3}] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 0 false
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=20},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile] unless entity @s[scores={Time=20,Freeze=1..3}] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 0 false
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=20},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile] unless entity @s[scores={Time=20,Freeze=1..3}] run scoreboard players set @s FreezeTime 60
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=20},tag=ally_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Time=20,Freeze=1..3}] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 0 false
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=20},tag=ally_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Time=20,Freeze=1..3}] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 0 false
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=20},tag=ally_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Time=20,Freeze=1..3}] run scoreboard players set @s FreezeTime 60
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=20},tag=enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Time=20,Freeze=1..3}] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 0 false
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=20},tag=enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Time=20,Freeze=1..3}] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 0 false
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=20},tag=enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Time=20,Freeze=1..3}] run scoreboard players set @s FreezeTime 60
execute if entity @s[scores={Time=20,ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile] unless entity @s[scores={Time=20,Freeze=1..3}] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 1 false
execute if entity @s[scores={Time=20,ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile] unless entity @s[scores={Time=20,Freeze=1..3}] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 1 false
execute if entity @s[scores={Time=20,ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile] unless entity @s[scores={Time=20,Freeze=1..3}] run scoreboard players set @s FreezeTime 90
execute if entity @s[scores={Time=20,ScoutTime=1..},tag=ally_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Time=20,Freeze=1..3}] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 1 false
execute if entity @s[scores={Time=20,ScoutTime=1..},tag=ally_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Time=20,Freeze=1..3}] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 1 false
execute if entity @s[scores={Time=20,ScoutTime=1..},tag=ally_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Time=20,Freeze=1..3}] run scoreboard players set @s FreezeTime 90
execute if entity @s[scores={Time=20,ScoutTime=1..},tag=enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Time=20,Freeze=1..3}] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 1 false
execute if entity @s[scores={Time=20,ScoutTime=1..},tag=enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Time=20,Freeze=1..3}] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 1 false
execute if entity @s[scores={Time=20,ScoutTime=1..},tag=enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Time=20,Freeze=1..3}] run scoreboard players set @s FreezeTime 90

# Create thin ice
execute if entity @s[scores={Time=20}] rotated 0 ~ positioned ^ ^ ^2 if block ~ ~-1 ~ minecraft:water[level=0] unless block ~ ~ ~ minecraft:water positioned ~ ~-1 ~ run function medabots_server:set_blocks/thin_ice
execute if entity @s[scores={Time=20}] rotated 0 ~ positioned ^ ^ ^2 if block ~-1 ~-1 ~ minecraft:water[level=0] unless block ~-1 ~ ~ minecraft:water positioned ~-1 ~-1 ~ run function medabots_server:set_blocks/thin_ice
execute if entity @s[scores={Time=20}] rotated 0 ~ positioned ^ ^ ^2 if block ~1 ~-1 ~ minecraft:water[level=0] unless block ~1 ~ ~ minecraft:water positioned ~1 ~-1 ~ run function medabots_server:set_blocks/thin_ice
execute if entity @s[scores={Time=20}] rotated 0 ~ positioned ^ ^ ^2 if block ~ ~-1 ~-1 minecraft:water[level=0] unless block ~ ~ ~-1 minecraft:water positioned ~ ~-1 ~-1 run function medabots_server:set_blocks/thin_ice
execute if entity @s[scores={Time=20}] rotated 0 ~ positioned ^ ^ ^2 if block ~ ~-1 ~1 minecraft:water[level=0] unless block ~ ~ ~1 minecraft:water positioned ~ ~-1 ~1 run function medabots_server:set_blocks/thin_ice

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Freeze=2,Time=22}] HeadUses 1

# Finish the move
scoreboard players reset @s[scores={Time=30..}] Freeze
scoreboard players set @s[scores={Time=30..}] Time 0

# Increase time by 1
scoreboard players add @s[scores={Freeze=1..}] Time 1

# Attacked by melee trap
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] run function medabots_server:medaparts/melee_trap_hit
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] if entity @s[tag=!ally_team] run function medabots_server:medaparts/melee_trap_hit
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] if entity @s[tag=!enemy_team] run function medabots_server:medaparts/melee_trap_hit