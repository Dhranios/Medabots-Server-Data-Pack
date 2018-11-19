# Set dead
tag @s[tag=!dead,nbt={AbsorptionAmount:0.0f}] add dead

# Attack
execute unless entity @s[scores={Time=0..60}] run scoreboard players set @s Time 0
scoreboard players remove @s[scores={Time=1..}] Time 1
execute if entity @s[scores={Time=0},nbt=!{NoAI:1b}] positioned ^ ^ ^1 if entity @a[tag=hostile,distance=..1] run effect give @e[distance=..2,tag=hostile] minecraft:instant_damage 1 0 true
execute if entity @s[scores={Time=0},nbt=!{NoAI:1b}] positioned ^ ^ ^1 if entity @a[tag=hostile,distance=..1] run playsound medabots_server:entity.guard.attack hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=0},nbt=!{NoAI:1b}] positioned ^ ^ ^1 if entity @a[tag=hostile,distance=..1] run data merge entity @s {NoAI:1b}
execute if entity @s[scores={Time=0},nbt=!{NoAI:1b}] positioned ^ ^ ^1 if entity @a[tag=hostile,distance=..1] run scoreboard players set @s Time 60
execute if entity @s[scores={Time=0},nbt={NoAI:1b}] run data merge entity @s {NoAI:0b}

# Play walking sound
execute unless entity @e[distance=..0.001,type=minecraft:area_effect_cloud,tag=guard_walk_detection] run scoreboard players set @s Walk 1
kill @e[distance=..1,type=minecraft:area_effect_cloud,tag=guard_walk_detection]
execute if entity @s[scores={Walk=1,Sound=0}] run playsound medabots_server:entity.guard.move hostile @a ~ ~ ~ 1
scoreboard players set @s[scores={Walk=1,Sound=0},tag=!dead] Sound 10
execute if entity @s[scores={Walk=1},tag=!dead] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"guard Walk Detection\"}",Tags:["guard_walk_detection"],Duration:2}
scoreboard players set @s Walk 0

# Attacked by melee trap
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run effect give @s minecraft:instant_damage 1 0 true
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run playsound medabots_server:entity.medabot.attack.trap_hit player @a ~ ~ ~ 1
kill @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap]


# Prevent death animation if stage clean up
teleport @s[tag=dead,nbt=!{AbsorptionAmount:0.0f}] ~ -1000 ~

# Play death sound
execute if entity @s[tag=dead] at @s run playsound medabots_server:entity.guard.death hostile @a ~ ~ ~ 1