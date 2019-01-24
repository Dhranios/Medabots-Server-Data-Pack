# Set dead
tag @s[tag=!dead,nbt={AbsorptionAmount:0.0f}] add dead

# new guards need a new guard number
execute unless entity @s[scores={Time=-30..}] run scoreboard players operation @s GuardNr > @e[tag=guard] GuardNr
execute unless entity @s[scores={Time=-30..}] run scoreboard players add @s GuardNr 1
execute unless entity @s[scores={Time=-30..}] run scoreboard players set @s Sound 0
execute unless entity @s[scores={Time=-30..}] run scoreboard players set @s Time 0

# Attack
scoreboard players remove @s[scores={Time=1..}] Time 1
execute if entity @s[scores={Time=0}] positioned ^ ^ ^1 if entity @a[tag=hostile,distance=..1.05,tag=!enemy_medabot] run effect give @e[distance=..1,tag=hostile,tag=!guard,tag=!floor_switch] minecraft:instant_damage 1 0 true
execute if entity @s[scores={Time=0}] positioned ^ ^ ^1 if entity @a[tag=hostile,distance=..1.05,tag=!enemy_medabot] run playsound medabots_server:entity.guard.attack hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=0}] positioned ^ ^ ^1 if entity @a[tag=hostile,distance=..1.05,tag=!enemy_medabot] run scoreboard players set @s Time 60

# Walk to target or random location
effect give @s minecraft:resistance 9 1 true
execute if entity @s[scores={Time=0}] positioned ^ ^ ^5.5 run tag @a[tag=hostile,distance=..5.5,tag=!enemy_medabot] add possible_targets
execute if entity @s[scores={Time=0}] run tag @a[tag=possible_targets,sort=nearest,limit=1] add target
execute if entity @a[tag=target] facing entity @a[tag=target] feet rotated ~ 0 positioned ^ ^ ^0.4 unless entity @e[distance=..0.2,tag=!guard,tag=!floor_switch] positioned as @s if block ^ ^ ^0.4 minecraft:air if block ^ ^ ^0.4 minecraft:air if block ^ ^1 ^0.4 minecraft:air unless block ^ ^-1 ^0.4 minecraft:air unless block ^ ^-1 ^0.4 minecraft:water unless block ^ ^-1 ^0.4 minecraft:lava run tag @s add can_move
execute if entity @a[tag=target] facing entity @a[tag=target] feet rotated ~ 0 positioned ^ ^ ^0.4 unless entity @e[distance=..0.2,tag=!guard,tag=!floor_switch] positioned as @s if block ^ ^ ^0.4 #minecraft:slabs[type=bottom] if block ^ ^1 ^0.4 minecraft:air if block ^ ^2 ^0.4 minecraft:air if block ^ ^2 ^ minecraft:air run tag @s add can_move
execute if entity @a[tag=target] facing entity @a[tag=target] feet rotated ~ 0 positioned ^ ^ ^0.4 unless entity @e[distance=..0.2,tag=!guard,tag=!floor_switch] positioned as @s if block ^ ^ ^0.4 minecraft:air if block ^ ^ ^0.4 minecraft:air if block ^ ^1 ^0.4 minecraft:air if block ^ ^-1 ^0.4 minecraft:air unless block ^ ^-2 ^0.4 minecraft:air unless block ^ ^-2 ^0.4 minecraft:water unless block ^ ^-2 ^0.4 minecraft:lava run tag @s add can_move
execute if entity @s[scores={Time=0},tag=can_move,tag=slow] if entity @a[tag=target] facing entity @a[tag=target] feet rotated ~ 0 if block ^ ^ ^0.4 minecraft:air run teleport @s ^ ^ ^0.1 ~ ~
execute if entity @s[scores={Time=0},tag=can_move,tag=slow] if entity @a[tag=target] facing entity @a[tag=target] feet rotated ~ 0 if block ^ ^ ^0.4 #minecraft:slabs run teleport @s ^ ^0.5 ^0.1 ~ ~
execute if entity @s[scores={Time=0},tag=can_move,tag=!slow,tag=!fast] if entity @a[tag=target] facing entity @a[tag=target] feet rotated ~ 0 if block ^ ^ ^0.4 minecraft:air run teleport @s ^ ^ ^0.2 ~ ~
execute if entity @s[scores={Time=0},tag=can_move,tag=!slow,tag=!fast] if entity @a[tag=target] facing entity @a[tag=target] feet rotated ~ 0 if block ^ ^ ^0.4 #minecraft:slabs run teleport @s ^ ^0.5 ^0.2 ~ ~
execute if entity @s[scores={Time=0},tag=can_move,tag=fast] if entity @a[tag=target] facing entity @a[tag=target] feet rotated ~ 0 if block ^ ^ ^0.4 minecraft:air run teleport @s ^ ^ ^0.3 ~ ~
execute if entity @s[scores={Time=0},tag=can_move,tag=fast] if entity @a[tag=target] facing entity @a[tag=target] feet rotated ~ 0 if block ^ ^ ^0.4 #minecraft:slabs run teleport @s ^ ^0.5 ^0.3 ~ ~
execute if entity @s[scores={Time=0},tag=!has_move_target] unless entity @a[tag=target] store result score @s HomeY run data get entity @s Pos[1]
execute if entity @s[scores={Time=0},tag=!has_move_target] unless entity @a[tag=target] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:30,Tags:["move_target"]}
execute if entity @s[scores={Time=0},tag=!has_move_target] unless entity @a[tag=target] run scoreboard players operation @e[distance=..0.4,tag=move_target] GuardNr = @s GuardNr
execute if entity @s[scores={Time=0},tag=!has_move_target] unless entity @a[tag=target] run scoreboard players operation @e[distance=..0.4,tag=move_target] HomeY = @s HomeY
execute if entity @s[scores={Time=0},tag=!has_move_target] unless entity @a[tag=target] as @e[distance=..0.2,tag=move_target] run function medabots_server:stage/guard_move_target
execute unless entity @a[tag=target] as @e[tag=move_target] facing entity @s feet if score @s GuardNr = @e[distance=..0.1,limit=1,sort=nearest,tag=guard] GuardNr as @e[distance=..0.1,limit=1,sort=nearest,tag=guard] rotated ~ 0 positioned as @s positioned ^ ^ ^0.4 unless entity @e[distance=..0.2,tag=!guard,tag=!floor_switch] positioned as @s if block ^ ^ ^0.4 minecraft:air if block ^ ^1 ^0.4 minecraft:air unless block ^ ^-1 ^0.4 minecraft:air unless block ^ ^-1 ^0.4 minecraft:water unless block ^ ^-1 ^0.4 minecraft:lava run tag @s add can_move
execute unless entity @a[tag=target] as @e[tag=move_target] facing entity @s feet if score @s GuardNr = @e[distance=..0.1,limit=1,sort=nearest,tag=guard] GuardNr as @e[distance=..0.1,limit=1,sort=nearest,tag=guard] rotated ~ 0 positioned as @s positioned ^ ^ ^0.4 unless entity @e[distance=..0.2,tag=!guard,tag=!floor_switch] positioned as @s if block ^ ^ ^0.4 #minecraft:slabs[type=bottom] if block ^ ^1 ^0.4 minecraft:air if block ^ ^2 ^0.4 minecraft:air if block ^ ^2 ^ minecraft:air run tag @s add can_move
execute unless entity @a[tag=target] as @e[tag=move_target] facing entity @s feet if score @s GuardNr = @e[distance=..0.1,limit=1,sort=nearest,tag=guard] GuardNr as @e[distance=..0.1,limit=1,sort=nearest,tag=guard] rotated ~ 0 positioned as @s positioned ^ ^ ^0.4 unless entity @e[distance=..0.2,tag=!guard,tag=!floor_switch] positioned as @s if block ^ ^ ^0.4 minecraft:air if block ^ ^1 ^0.4 minecraft:air if block ^ ^-1 ^0.4 minecraft:air unless block ^ ^-2 ^0.4 minecraft:air unless block ^ ^-2 ^0.4 minecraft:water unless block ^ ^-2 ^0.4 minecraft:lava run tag @s add can_move
execute if entity @s[scores={Time=0},tag=can_move,tag=slow] unless entity @a[tag=target] as @e[tag=move_target] facing entity @s feet if score @s GuardNr = @e[distance=..0.1,limit=1,sort=nearest,tag=guard] GuardNr as @e[distance=..0.1,limit=1,sort=nearest,tag=guard] rotated ~ 0 positioned as @s if block ^ ^ ^0.4 minecraft:air run teleport @s ^ ^ ^0.2 ~ ~
execute if entity @s[scores={Time=0},tag=can_move,tag=slow] unless entity @a[tag=target] as @e[tag=move_target] facing entity @s feet if score @s GuardNr = @e[distance=..0.1,limit=1,sort=nearest,tag=guard] GuardNr as @e[distance=..0.1,limit=1,sort=nearest,tag=guard] rotated ~ 0 positioned as @s if block ^ ^ ^0.4 #minecraft:slabs run teleport @s ^ ^0.5 ^0.2 ~ ~
execute if entity @s[scores={Time=0},tag=can_move,tag=!slow,tag=!fast] unless entity @a[tag=target] as @e[tag=move_target] facing entity @s feet if score @s GuardNr = @e[distance=..0.1,limit=1,sort=nearest,tag=guard] GuardNr as @e[distance=..0.1,limit=1,sort=nearest,tag=guard] rotated ~ 0 positioned as @s if block ^ ^ ^0.4 minecraft:air run teleport @s ^ ^ ^0.2 ~ ~
execute if entity @s[scores={Time=0},tag=can_move,tag=!slow,tag=!fast] unless entity @a[tag=target] as @e[tag=move_target] facing entity @s feet if score @s GuardNr = @e[distance=..0.1,limit=1,sort=nearest,tag=guard] GuardNr as @e[distance=..0.1,limit=1,sort=nearest,tag=guard] rotated ~ 0 positioned as @s if block ^ ^ ^0.4 #minecraft:slabs run teleport @s ^ ^0.5 ^0.2 ~ ~
execute if entity @s[scores={Time=0},tag=can_move,tag=fast] unless entity @a[tag=target] as @e[tag=move_target] facing entity @s feet if score @s GuardNr = @e[distance=..0.1,limit=1,sort=nearest,tag=guard] GuardNr as @e[distance=..0.1,limit=1,sort=nearest,tag=guard] rotated ~ 0 positioned as @s if block ^ ^ ^0.4 minecraft:air run teleport @s ^ ^ ^0.2 ~ ~
execute if entity @s[scores={Time=0},tag=can_move,tag=fast] unless entity @a[tag=target] as @e[tag=move_target] facing entity @s feet if score @s GuardNr = @e[distance=..0.1,limit=1,sort=nearest,tag=guard] GuardNr as @e[distance=..0.1,limit=1,sort=nearest,tag=guard] rotated ~ 0 positioned as @s if block ^ ^ ^0.4 #minecraft:slabs run teleport @s ^ ^0.5 ^0.2 ~ ~
execute if entity @s[scores={Time=0},tag=!can_move] run scoreboard players set @s Time 30
execute unless entity @a[tag=target] at @e[tag=move_target,distance=..0.4] if score @s GuardNr = @e[distance=..0.2,limit=1,sort=nearest,tag=move_target] GuardNr run scoreboard players set @s Time 30
execute unless entity @a[tag=target] as @e[tag=move_target,distance=..0.4] if score @s GuardNr = @e[distance=..0.1,tag=guard,limit=1] GuardNr run kill @s
execute if entity @s[tag=!can_move] unless entity @a[tag=target] as @e[tag=move_target] if score @s GuardNr = @e[distance=..0.1,tag=guard,limit=1] GuardNr run kill @s
execute if entity @s[scores={Time=0,Sound=0},tag=can_move] if entity @a[tag=target] run playsound medabots_server:entity.guard.move hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=0,Sound=0},tag=can_move] if entity @a[tag=target] run scoreboard players set @s Sound 10
execute if entity @s[scores={Time=0,Sound=0},tag=can_move,tag=has_move_target] run playsound medabots_server:entity.guard.move hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=0,Sound=0},tag=can_move,tag=has_move_target] run scoreboard players set @s Sound 10
tag @a[tag=possible_targets] remove possible_targets
tag @a[tag=target] remove target
tag @s[tag=can_move] remove can_move
tag @s[tag=has_move_target] remove has_move_target
execute at @e[tag=move_target] if score @s GuardNr = @e[distance=..0.2,limit=1,sort=nearest,tag=move_target] GuardNr run tag @s add has_move_target

# Prevent suffocation
execute at @s unless block ~ ~ ~0.33 minecraft:air run teleport @s ~ ~ ~-0.2
execute at @s unless block ~ ~ ~-0.33 minecraft:air run teleport @s ~ ~ ~0.2
execute at @s unless block ~0.33 ~ ~ minecraft:air run teleport @s ~-0.2 ~ ~
execute at @s unless block ~-0.33 ~ ~ minecraft:air run teleport @s ~0.2 ~ ~
execute at @s unless block ~0.33 ~ ~0.33 minecraft:air run teleport @s ~-0.2 ~ ~-0.2
execute at @s unless block ~0.33 ~ ~-0.33 minecraft:air run teleport @s ~-0.2 ~ ~0.2
execute at @s unless block ~-0.33 ~ ~0.33 minecraft:air run teleport @s ~0.2 ~ ~-0.2
execute at @s unless block ~-0.33 ~ ~-0.33 minecraft:air run teleport @s ~0.2 ~ ~0.2
effect clear @s minecraft:resistance

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