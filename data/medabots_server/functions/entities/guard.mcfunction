# Set dead
tag @s[tag=!dying,nbt={AbsorptionAmount:0.0f},tag=!disabled] add dying
execute if entity @s[tag=dying,tag=!dead,tag=!disabled] run function medabots_server:animations/guard/death
execute if entity @s[tag=dead,tag=!disabled] run function medabots_server:blocks/action_floor/reenable_spawning

# Count down the freeze timer
scoreboard players remove @s[scores={Time=1..},tag=!disabled] Time 1

# If hurt, freezes
tag @s[nbt=!{HurtTime:0s},tag=!disabled,tag=!has_hurt] add hurt
tag @s[nbt=!{HurtTime:0s},tag=!disabled] add has_hurt
tag @s[nbt={HurtTime:0s},tag=!disabled] remove has_hurt

# Effects
scoreboard players set @s[scores={FreezeTime=1..},tag=!disabled] Time 40
scoreboard players set @s[scores={ParalyzeTime=1..},tag=!disabled] Time 40
scoreboard players set @s[scores={ChaosTime=1..},tag=!disabled] Time 40
scoreboard players set @s[scores={BugTimer=40,ConfuseTime=..20},tag=!disabled] ConfuseTime 20
execute unless entity @s[scores={ConfuseTime=1..}] run scoreboard players set @s[scores={BugTimer=40},tag=!disabled] ConfuseTime 20
scoreboard players set @s[scores={ConfuseTime=1..},tag=!disabled] Time 40
teleport @s[tag=!dying,scores={ConfuseTime=1..},tag=!disabled] ~ ~ ~ ~-18 ~

# Attack
execute unless block ~ ~ ~ minecraft:water unless predicate medabots_server:entities/guard/can_move_check run tag @s[tag=!disabled] add cannot_move
execute if block ~ ~ ~ minecraft:water positioned ~ ~1 ~ unless predicate medabots_server:entities/guard/can_move_check run tag @s[tag=!disabled] add cannot_move
execute if entity @s[scores={Time=0},tag=!hurt,tag=!alarm_ringing,tag=!dying,tag=!cannot_move,tag=!disabled] unless entity @s[scores={IneffectiveTime=1..}] positioned ^ ^ ^0.5 if entity @e[tag=medabot,distance=..0.55,tag=!enemy_medabot,tag=!dying,scores={State=1}] run tag @s add attack
execute if entity @s[scores={Time=0},tag=!hurt,tag=!alarm_ringing,tag=!dying,tag=!cannot_move,tag=!disabled] unless entity @s[scores={IneffectiveTime=1..}] positioned ^ ^1.1 ^0.5 if entity @e[tag=medabot,distance=..0.55,tag=!enemy_medabot,tag=!dying,scores={State=1}] run tag @s add attack

# Walk to target or random location
tag @s remove walking
execute at @s[scores={Time=0},tag=!hurt,tag=!alarm_ringing,tag=!dying,tag=!cannot_move,tag=!attack,tag=!disabled] run function medabots_server:entities/guard/wander

# Fall
execute at @s[tag=!disabled] positioned ~ ~-0.2 ~ if block ~ ~ ~ #medabots_server:entities/can_fall_in positioned ~ ~-0.5 ~ unless entity @e[tag=raft,type=minecraft:area_effect_cloud,distance=..0.7] run tag @s add fall
execute at @s[tag=fall,tag=!disabled] run teleport @s ~ ~-0.2 ~
execute at @s[tag=!fall,tag=!disabled] align y unless block ~ ~ ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~ ~
execute at @s[tag=!fall,tag=!disabled] align y if block ~ ~ ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~0.5 ~
tag @s[tag=!disabled] remove fall
execute at @s[tag=!disabled] if entity @s[y=0,dy=1] run tag @s add dead
tag @s[tag=!disabled] remove cannot_move

# Attacked by melee trap
execute if entity @s[tag=attack,tag=!disabled] at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run function medabots_server:items/medapart/melee_trap/hit

# Clean up
teleport @s[tag=dead] ~ -1000 ~
execute if entity @s[tag=dead] run scoreboard players operation #temp GuardNr = @s GuardNr
execute if entity @s[tag=dead] as @e[tag=guard_model,type=minecraft:armor_stand] if score @s GuardNr = #temp GuardNr run kill @s
execute if entity @s[tag=dead] run scoreboard players reset #temp GuardNr

tag @s remove alarm_ringing

# Model
execute if entity @s[tag=!dead] run function medabots_server:animations/guard
data merge entity @s {Invulnerable:0b}