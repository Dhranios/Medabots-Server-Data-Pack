execute at @e[tag=move_target] if score @s GuardNr = @e[distance=..0.2,limit=1,sort=nearest,tag=move_target] GuardNr run tag @s add has_move_target
effect give @s minecraft:resistance 9 1 true
tag @s[tag=can_move] remove can_move
execute positioned ^ ^ ^5.5 run tag @a[tag=hostile,distance=..5.5,tag=!enemy_medabot,tag=!dying,scores={Battle=1}] add possible_targets
tag @a[tag=possible_targets,sort=nearest,limit=1] add target
execute if entity @a[tag=target] facing entity @a[tag=target] feet rotated ~ 0 positioned ^ ^ ^0.4 unless entity @e[distance=..0.2,type=!minecraft:area_effect_cloud] positioned as @s unless block ~ ~ ~ minecraft:water run function medabots_server:entities/guard/can_move
execute if entity @a[tag=target] facing entity @a[tag=target] feet rotated ~ 0 positioned ^ ^ ^0.4 unless entity @e[distance=..0.2,type=!minecraft:area_effect_cloud] positioned as @s if block ~ ~ ~ minecraft:water positioned ~ ~1 ~ run function medabots_server:entities/guard/can_move
execute if entity @s[tag=can_move] if entity @a[tag=target] facing entity @a[tag=target] feet rotated ~ 0 run function medabots_server:entities/guard/move
execute if entity @s[tag=!has_move_target] unless entity @a[tag=target] run function medabots_server:entities/guard/spawn_move_target
execute unless entity @a[tag=target] as @e[tag=move_target] facing entity @s feet if score @s GuardNr = @e[distance=..0.1,limit=1,sort=nearest,tag=guard,tag=!action_floor] GuardNr as @e[distance=..0.1,limit=1,sort=nearest,tag=guard,tag=!action_floor] rotated ~ 0 positioned ^ ^ ^0.4 unless entity @e[distance=..0.2,type=!minecraft:area_effect_cloud] positioned as @s unless block ~ ~ ~ minecraft:water run function medabots_server:entities/guard/can_move
execute unless entity @a[tag=target] as @e[tag=move_target] facing entity @s feet if score @s GuardNr = @e[distance=..0.1,limit=1,sort=nearest,tag=guard,tag=!action_floor] GuardNr as @e[distance=..0.1,limit=1,sort=nearest,tag=guard,tag=!action_floor] rotated ~ 0 positioned ^ ^ ^0.4 unless entity @e[distance=..0.2,type=!minecraft:area_effect_cloud] positioned as @s if block ~ ~ ~ minecraft:water positioned ~ ~1 ~ run function medabots_server:entities/guard/can_move
execute if entity @s[tag=can_move] unless entity @a[tag=target] as @e[tag=move_target] facing entity @s feet if score @s GuardNr = @e[distance=..0.1,limit=1,sort=nearest,tag=guard,tag=!action_floor] GuardNr as @e[distance=..0.1,limit=1,sort=nearest,tag=guard,tag=!action_floor] rotated ~ 0 positioned ^ ^ ^0.4 unless entity @e[distance=..0.2,type=!minecraft:area_effect_cloud] positioned as @s run function medabots_server:entities/guard/move
execute if entity @s[tag=!can_move] run scoreboard players set @s Time 30
execute unless entity @a[tag=target] at @e[tag=move_target,distance=..1.1] if score @s GuardNr = @e[distance=..0.4,limit=1,sort=nearest,tag=move_target] GuardNr run scoreboard players set @s Time 30
execute unless entity @a[tag=target] as @e[tag=move_target,distance=..1.1] if score @s GuardNr = @e[distance=..0.1,tag=guard,limit=1,tag=!action_floor] GuardNr run kill @s
execute if entity @s[tag=!can_move] unless entity @a[tag=target] as @e[tag=move_target] if score @s GuardNr = @e[distance=..0.1,tag=guard,limit=1,tag=!action_floor] GuardNr run kill @s
execute if entity @s[scores={Sound=0},tag=can_move] if entity @a[tag=target] run playsound medabots_server:entity.guard.move hostile @a ~ ~ ~ 1
execute if entity @s[scores={Sound=0},tag=can_move] if entity @a[tag=target] run scoreboard players set @s Sound 10
execute if entity @s[scores={Sound=0},tag=can_move,tag=has_move_target] run playsound medabots_server:entity.guard.move hostile @a ~ ~ ~ 1
execute if entity @s[scores={Sound=0},tag=can_move,tag=has_move_target] run scoreboard players set @s Sound 10
tag @a[tag=possible_targets] remove possible_targets
tag @a[tag=target] remove target
tag @s[tag=has_move_target] remove has_move_target

# Prevent suffocation
execute at @s unless block ~ ~ ~0.33 minecraft:air unless block ~ ~ ~0.33 minecraft:comparator unless block ~ ~ ~0.33 minecraft:black_carpet unless block ~ ~ ~0.33 minecraft:light_gray_carpet unless block ~ ~ ~0.33 #minecraft:slabs[type=bottom] run teleport @s ~ ~ ~-0.2
execute at @s unless block ~ ~ ~-0.33 minecraft:air unless block ~ ~ ~-0.33 minecraft:comparator unless block ~ ~ ~-0.33 minecraft:black_carpet unless block ~ ~ ~-0.33 minecraft:light_gray_carpet unless block ~ ~ ~-0.33 #minecraft:slabs[type=bottom] run teleport @s ~ ~ ~0.2
execute at @s unless block ~0.33 ~ ~ minecraft:air unless block ~0.33 ~ ~ minecraft:comparator unless block ~0.33 ~ ~ minecraft:black_carpet unless block ~0.33 ~ ~ minecraft:light_gray_carpet unless block ~0.33 ~ ~ #minecraft:slabs[type=bottom] run teleport @s ~-0.2 ~ ~
execute at @s unless block ~-0.33 ~ ~ minecraft:air unless block ~-0.33 ~ ~ minecraft:comparator unless block ~-0.33 ~ ~ minecraft:black_carpet unless block ~-0.33 ~ ~ minecraft:light_gray_carpet unless block ~-0.33 ~ ~ #minecraft:slabs[type=bottom] run teleport @s ~0.2 ~ ~
execute at @s unless block ~0.33 ~ ~0.33 minecraft:air unless block ~0.33 ~ ~0.33 minecraft:comparator unless block ~0.33 ~ ~0.33 minecraft:black_carpet unless block ~0.33 ~ ~0.33 minecraft:light_gray_carpet unless block ~0.33 ~ ~0.33 #minecraft:slabs[type=bottom] run teleport @s ~-0.2 ~ ~-0.2
execute at @s unless block ~0.33 ~ ~-0.33 minecraft:air unless block ~0.33 ~ ~-0.33 minecraft:comparator unless block ~0.33 ~ ~-0.33 minecraft:black_carpet unless block ~0.33 ~ ~-0.33 minecraft:light_gray_carpet unless block ~0.33 ~ ~-0.33 #minecraft:slabs[type=bottom] run teleport @s ~-0.2 ~ ~0.2
execute at @s unless block ~-0.33 ~ ~0.33 minecraft:air unless block ~-0.33 ~ ~0.33 minecraft:comparator unless block ~-0.33 ~ ~0.33 minecraft:black_carpet unless block ~-0.33 ~ ~0.33 minecraft:light_gray_carpet unless block ~-0.33 ~ ~0.33 #minecraft:slabs[type=bottom] run teleport @s ~0.2 ~ ~-0.2
execute at @s unless block ~-0.33 ~ ~-0.33 minecraft:air unless block ~-0.33 ~ ~-0.33 minecraft:comparator unless block ~-0.33 ~ ~-0.33 minecraft:black_carpet unless block ~-0.33 ~ ~-0.33 minecraft:light_gray_carpet unless block ~-0.33 ~ ~-0.33 #minecraft:slabs[type=bottom] run teleport @s ~0.2 ~ ~0.2
execute at @s unless block ~ ~1 ~0.33 minecraft:air run teleport @s ~ ~ ~-0.2
execute at @s unless block ~ ~1 ~-0.33 minecraft:air run teleport @s ~ ~ ~0.2
execute at @s unless block ~0.33 ~1 ~ minecraft:air run teleport @s ~-0.2 ~ ~
execute at @s unless block ~-0.33 ~1 ~ minecraft:air run teleport @s ~0.2 ~ ~
execute at @s unless block ~0.33 ~1 ~0.33 minecraft:air run teleport @s ~-0.2 ~ ~-0.2
execute at @s unless block ~0.33 ~1 ~-0.33 minecraft:air run teleport @s ~-0.2 ~ ~0.2
execute at @s unless block ~-0.33 ~1 ~0.33 minecraft:air run teleport @s ~0.2 ~ ~-0.2
execute at @s unless block ~-0.33 ~1 ~-0.33 minecraft:air run teleport @s ~0.2 ~ ~0.2
effect clear @s minecraft:resistance