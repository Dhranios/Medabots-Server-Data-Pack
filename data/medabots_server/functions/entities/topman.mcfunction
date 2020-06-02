# Set dead
tag @s[tag=!dying,nbt={AbsorptionAmount:0.0f}] add dying
execute if entity @s[tag=dying,tag=!dead] run function medabots_server:animations/topman/death

# Count down the freeze timer
scoreboard players remove @s[scores={Time=1..}] Time 1
scoreboard players add @s[scores={Time=..-1}] Time 1

# If hurt, freezes
tag @s[nbt=!{HurtTime:0s},tag=!has_hurt] add hurt
execute if entity @s[tag=hurt,tag=!has_hurt] run function medabots_server:entities/topman/hurt
tag @s[nbt=!{HurtTime:0s}] add has_hurt
tag @s[nbt={HurtTime:0s}] remove has_hurt

# Effects
scoreboard players set @s[scores={FreezeTime=1..}] Time 40
scoreboard players set @s[scores={ParalyzeTime=1..}] Time 40
scoreboard players set @s[scores={ChaosTime=1..}] Time 40
scoreboard players set @s[scores={BugTimer=40,ConfuseTime=..20}] ConfuseTime 20
execute unless entity @s[scores={ConfuseTime=1..}] run scoreboard players set @s[scores={BugTimer=40}] ConfuseTime 20
scoreboard players set @s[scores={ConfuseTime=1..}] Time 40
teleport @s[tag=!dying,scores={ConfuseTime=1..}] ~ ~ ~ ~-18 ~

# Walk to target or random location
tag @s remove walking
execute at @s[scores={Time=..0},tag=!dying] run function medabots_server:entities/topman/wander

# Hit
execute if entity @e[distance=..0.7,tag=footstool] positioned ~ ~1 ~ run effect give @e[tag=medabot,dy=1] minecraft:instant_damage 2 0 true
execute positioned ~-0.5 ~-1 ~-0.5 as @e[tag=medabot,dx=0,dy=1,dz=0] run playsound medabots_server:entity.topman.attack hostile @a ~ ~ ~ 1
execute positioned ~-0.5 ~-1 ~-0.5 run effect give @e[tag=medabot,dx=0,dy=1,dz=0] minecraft:instant_damage 1 0 true
execute positioned ~-0.5 ~-1 ~-0.5 as @e[tag=medabot,dx=0,dy=1,dz=0] positioned ~0.3 ~1 ~0.3 facing entity @s feet rotated ~ 0 positioned as @s if block ^ ^ ^1 minecraft:air if block ^ ^1 ^1 minecraft:air run teleport @s ^ ^0.5 ^1

# Fall
execute at @s if block ~ ~-0.2 ~ minecraft:air run tag @s add fall
execute at @s if block ~ ~-0.2 ~ minecraft:lava run tag @s add fall
execute at @s if block ~ ~-0.2 ~ minecraft:water run tag @s add fall
execute at @s if block ~ ~-0.2 ~ minecraft:bubble_column run tag @s add fall
execute at @s if block ~ ~0.2 ~ minecraft:water run tag @s add dying
execute at @s if block ~ ~0.2 ~ minecraft:bubble_column run tag @s add dying
execute at @s[tag=fall,tag=!dying] run teleport @s ~ ~-0.2 ~
execute at @s[tag=!fall] align y unless block ~ ~ ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~ ~
execute at @s[tag=!fall] align y if block ~ ~ ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~0.5 ~
tag @s remove fall
execute at @s if entity @s[y=0,dy=1] run tag @s add dead

# Attacked by melee trap
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run function medabots_server:items/medapart/melee_trap/hit

# Clean up
teleport @s[tag=dead] ~ -1000 ~
execute if entity @s[tag=dead] run scoreboard players operation #temp TopmanNr = @s TopmanNr
execute if entity @s[tag=dead] as @e[tag=topman_model,type=minecraft:armor_stand] if score @s TopmanNr = #temp TopmanNr run kill @s
execute if entity @s[tag=dead] as @e[scores={TopmanNr=1..}] if score @s TopmanNr > #temp TopmanNr run scoreboard players remove @s TopmanNr 1
execute if entity @s[tag=dead] run scoreboard players reset #temp TopmanNr

# Model
execute if entity @s[tag=!dead] run function medabots_server:animations/topman
data merge entity @s {Invulnerable:0b}