# Set dead
tag @s[tag=!dying,nbt={AbsorptionAmount:0.0f}] add dying
execute if entity @s[tag=dying,tag=!dead] run function medabots_server:animations/guard/death

# If hurt, freezes
scoreboard players set @s[nbt={HurtTime:9s}] Time 40

# Attack
scoreboard players remove @s[scores={Time=1..}] Time 1
execute if entity @s[scores={Time=0},tag=!alarm_ringing,tag=!dying] positioned ^ ^ ^1 if entity @a[tag=hostile,distance=..1.05,tag=!enemy_medabot,tag=!dying,scores={Battle=1}] run function medabots_server:entities/guard/attack

# Walk to target or random location
execute if entity @s[scores={Time=0},tag=!alarm_ringing,tag=!dying] run function medabots_server:entities/guard/wander

# Fall
execute if block ~ ~-0.2 ~ minecraft:air run teleport @s ~ ~-0.2 ~
execute if block ~ ~-0.2 ~ minecraft:black_carpet run teleport @s ~ ~-0.2 ~
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:water unless entity @e[tag=raft,distance=..0.7] at @s run teleport @s ~ ~-0.2 ~
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:bubble_column unless entity @e[tag=raft,distance=..0.7] at @s run teleport @s ~ ~-0.2 ~
execute if block ~ ~-0.2 ~ minecraft:lava run teleport @s ~ ~-0.2 ~
execute if entity @s[y=0,dy=1] run tag @s add dead

# Attacked by melee trap
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run effect give @s[tag=!dying] minecraft:instant_damage 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run playsound medabots_server:entity.medabot.attack.trap_hit player @a[tag=!dying] ~ ~ ~ 1
execute if entity @s[tag=!dying] run kill @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap]

# Clean up
teleport @s[tag=dead] ~ -1000 ~
execute if entity @s[tag=dead] as @e[scores={GuardNr=1..}] if score @s GuardNr > @e[distance=..0.7,tag=guard,limit=1] GuardNr run scoreboard players remove @s GuardNr 1