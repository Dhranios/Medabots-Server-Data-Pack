# Set dead
tag @s[tag=!dying,nbt={AbsorptionAmount:0.0f}] add dying
execute if entity @s[tag=dying,tag=!dead] run function medabots_server:animations/guard/death
execute if entity @s[tag=dead] run function medabots_server:blocks/action_floor/reenable_spawning

# Count down the freeze timer
scoreboard players remove @s[scores={Time=1..}] Time 1

# If hurt, freezes
tag @s[nbt={HurtTime:9s}] add hurt

# Effects
scoreboard players set @s[scores={FreezeTime=1..}] Time 40
scoreboard players set @s[scores={ParalyzeTime=1..}] Time 40
scoreboard players set @s[scores={ChaosTime=1..}] Time 40
scoreboard players set @s[scores={BugTimer=40,ConfuseTime=..20}] ConfuseTime 20
execute unless entity @s[scores={ConfuseTime=1..}] run scoreboard players set @s[scores={BugTimer=40}] ConfuseTime 20
scoreboard players set @s[scores={ConfuseTime=1..}] Time 40
teleport @s[tag=!dying,scores={ConfuseTime=1..}] ~ ~ ~ ~-18 ~

# Attack
execute unless block ~ ~ ~ minecraft:water unless block ~ ~ ~1 #medabots_server:guard_pathables unless block ~ ~ ~1 #minecraft:slabs[type=bottom] unless block ~ ~ ~-1 #medabots_server:guard_pathables unless block ~ ~ ~-1 #minecraft:slabs[type=bottom] unless block ~1 ~ ~ #medabots_server:guard_pathables unless block ~1 ~ ~ #minecraft:slabs[type=bottom] unless block ~-1 ~ ~ #medabots_server:guard_pathables unless block ~-1 ~ ~ #minecraft:slabs[type=bottom] run tag @s add cannot_move
execute if entity @s[scores={Time=0},tag=!hurt,tag=!alarm_ringing,tag=!dying,tag=!cannot_move] unless entity @s[scores={IneffectiveTime=1..}] positioned ^ ^ ^0.5 if entity @a[tag=hostile,distance=..0.55,tag=!enemy_medabot,tag=!dying,scores={Battle=1}] run tag @s add attack

# Walk to target or random location
tag @s remove walking
execute at @s[scores={Time=0},tag=!hurt,tag=!alarm_ringing,tag=!dying,tag=!cannot_move,tag=!attack] run function medabots_server:entities/guard/wander

# Fall
execute at @s if block ~ ~-0.2 ~ minecraft:air run tag @s add fall
execute at @s if block ~ ~-0.2 ~ minecraft:black_carpet run tag @s add fall
execute at @s positioned ~ ~-0.2 ~ if block ~ ~ ~ minecraft:water positioned ~ ~-0.5 ~ unless entity @e[tag=raft,distance=..0.7] run tag @s add fall
execute at @s positioned ~ ~-0.2 ~ if block ~ ~ ~ minecraft:bubble_column positioned ~ ~-0.5 ~ unless entity @e[tag=raft,distance=..0.7] run tag @s add fall
execute at @s if block ~ ~-0.2 ~ minecraft:lava run tag @s add fall
execute at @s[tag=fall] run teleport @s ~ ~-0.2 ~
execute at @s[tag=!fall] align y unless block ~ ~ ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~ ~
execute at @s[tag=!fall] align y if block ~ ~ ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~0.5 ~
tag @s remove fall
execute at @s if entity @s[y=0,dy=1] run tag @s add dead
tag @s remove cannot_move

# Attacked by melee trap
execute if entity @s[tag=attack] at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run function medabots_server:items/medapart/melee_trap/hit

# Clean up
teleport @s[tag=dead] ~ -1000 ~
execute if entity @s[tag=dead] as @e[tag=guard_model] if score @s GuardNr = @e[distance=..0.1,tag=guard,limit=1] GuardNr run kill @s
execute if entity @s[tag=dead] as @e[scores={GuardNr=1..}] if score @s GuardNr > @e[distance=..0.1,tag=guard,limit=1] GuardNr run scoreboard players remove @s GuardNr 1

# Model
execute if entity @s[tag=!dead] run function medabots_server:animations/guard