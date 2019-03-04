# Set dead
tag @s[tag=!dead,nbt={AbsorptionAmount:0.0f}] add dead

# new guards need a new guard number
execute unless entity @s[scores={Time=-30..}] run function medabots_server:entities/guard/scores

# Attack
scoreboard players remove @s[scores={Time=1..}] Time 1
execute if entity @s[scores={Time=0},tag=!alarm_ringing] positioned ^ ^ ^1 if entity @a[tag=hostile,distance=..1.05,tag=!enemy_medabot,scores={Battle=1}] run function medabots_server:entities/guard/attack

# Walk to target or random location
execute if entity @s[scores={Time=0},tag=!alarm_ringing] run function medabots_server:entities/guard/wander

# Fall
execute if block ~ ~-0.2 ~ minecraft:air run teleport @s ~ ~-0.2 ~

# Attacked by melee trap
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run effect give @s minecraft:instant_damage 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run playsound medabots_server:entity.medabot.attack.trap_hit player @a ~ ~ ~ 1
kill @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap]

# Prevent death animation if stage clean up
teleport @s[tag=dead,nbt=!{AbsorptionAmount:0.0f}] ~ -1000 ~

# Play death sound
execute if entity @s[tag=dead] as @e[scores={GuardNr=1..}] if score @s GuardNr > @e[distance=..0.7,tag=guard,limit=1] GuardNr run scoreboard players remove @s GuardNr 1
execute if entity @s[tag=dead] at @s run playsound medabots_server:entity.guard.death hostile @a ~ ~ ~ 1