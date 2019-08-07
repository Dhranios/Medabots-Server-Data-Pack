# Set dead
tag @s[tag=!dying,nbt={AbsorptionAmount:0.0f}] add dying
execute if entity @s[tag=dying,tag=!dead] run function medabots_server:animations/guard/death

# Count down the freeze timer
scoreboard players remove @s[scores={Time=1..}] Time 1

# If hurt, freezes
scoreboard players set @s[nbt={HurtTime:9s}] Time 40

# Effects
scoreboard players set @s[scores={FreezeTime=1..}] Time 40
scoreboard players set @s[scores={ParalyzeTime=1..}] Time 40
scoreboard players set @s[scores={ChaosTime=1..}] Time 40
scoreboard players set @s[scores={BugTimer=40,ConfuseTime=..20}] ConfuseTime 20
execute unless entity @s[scores={ConfuseTime=1..}] run scoreboard players set @s[scores={BugTimer=40}] ConfuseTime 20
scoreboard players set @s[scores={ConfuseTime=1..}] Time 40
teleport @s[tag=!dying,scores={ConfuseTime=1..}] ~ ~ ~ ~-18 ~

# Attack
execute if entity @s[scores={Time=0},tag=!alarm_ringing,tag=!dying] unless entity @s[scores={IneffectiveTime=1..}] positioned ^ ^ ^1 if entity @a[tag=hostile,distance=..1.05,tag=!enemy_medabot,tag=!dying,scores={Battle=1}] run function medabots_server:entities/guard/attack

# Walk to target or random location
execute at @s[scores={Time=0},tag=!alarm_ringing,tag=!dying] run function medabots_server:entities/guard/wander

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

# Attacked by melee trap
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run function medabots_server:items/medapart/melee_trap/hit

# Clean up
teleport @s[tag=dead] ~ -1000 ~
execute if entity @s[tag=dead] as @e[scores={GuardNr=1..}] if score @s GuardNr > @e[distance=..0.7,tag=guard,limit=1] GuardNr run scoreboard players remove @s GuardNr 1