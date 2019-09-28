execute store result score #temp GuardNr run scoreboard players get @s GuardNr
execute as @e[tag=move_target] if score @s GuardNr = #temp GuardNr run tag @s add this_move_target
execute if entity @e[tag=this_move_target,limit=1] run tag @s add has_move_target
effect give @s minecraft:resistance 9 1 true
tag @s[tag=can_move] remove can_move
execute positioned ^ ^ ^5.5 run tag @e[tag=medabot,distance=..5.5,tag=!enemy_medabot,tag=!dying,scores={Battle=1}] add possible_targets
tag @e[tag=possible_targets,sort=nearest,limit=1] add target
execute if entity @e[tag=target,limit=1] facing entity @e[tag=target,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.4 unless entity @e[distance=..0.2,type=!minecraft:area_effect_cloud] positioned as @s run function medabots_server:entities/guard/can_move_start
execute if entity @s[tag=can_move] if entity @e[tag=target,limit=1] facing entity @e[tag=target,limit=1] feet rotated ~ 0 run function medabots_server:entities/guard/move
execute if entity @s[tag=!has_move_target] unless entity @e[tag=target,limit=1] run function medabots_server:entities/guard/spawn_move_target
execute unless entity @e[tag=target,limit=1] facing entity @e[tag=this_move_target,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.4 unless entity @e[distance=..0.2,type=!minecraft:area_effect_cloud,limit=1] positioned as @s run function medabots_server:entities/guard/can_move_start
execute if entity @s[tag=can_move] unless entity @e[tag=target,limit=1] facing entity @e[tag=this_move_target,limit=1] feet rotated ~ 0 run function medabots_server:entities/guard/move
execute if entity @s[tag=!can_move] run scoreboard players set @s Time 30
execute unless entity @e[tag=target,limit=1] if entity @e[tag=this_move_target,limit=1,distance=..1.1] run scoreboard players set @s Time 30
execute unless entity @e[tag=target,limit=1] run kill @e[tag=this_move_target,limit=1,distance=..1.1]
execute if entity @s[tag=!can_move] unless entity @e[tag=target,limit=1] run kill @e[tag=this_move_target,limit=1]
execute if entity @s[tag=can_move] if entity @e[tag=target,limit=1] run tag @s add walking
execute if entity @s[tag=can_move,tag=has_move_target] run tag @s add walking
tag @e[tag=possible_targets] remove possible_targets
tag @e[tag=target,limit=1] remove target
tag @e[tag=this_move_target,limit=1] remove this_move_target
tag @s[tag=has_move_target] remove has_move_target
scoreboard players reset #temp GuardNr

execute if entity @s[tag=walking,scores={Sound=0}] run playsound medabots_server:entity.guard.move hostile @a ~ ~ ~ 1
execute if entity @s[tag=walking,scores={Sound=0}] run scoreboard players set @s Sound 10

# Prevent suffocation
execute at @s unless block ~ ~ ~0.33 #medabots_server:guard_pathables unless block ~ ~ ~0.33 #minecraft:slabs[type=bottom] run teleport @s ~ ~ ~-0.2
execute at @s unless block ~ ~ ~-0.33 #medabots_server:guard_pathables unless block ~ ~ ~-0.33 #minecraft:slabs[type=bottom] run teleport @s ~ ~ ~0.2
execute at @s unless block ~0.33 ~ ~ #medabots_server:guard_pathables unless block ~0.33 ~ ~ #minecraft:slabs[type=bottom] run teleport @s ~-0.2 ~ ~
execute at @s unless block ~-0.33 ~ ~ #medabots_server:guard_pathables unless block ~-0.33 ~ ~ #minecraft:slabs[type=bottom] run teleport @s ~0.2 ~ ~
execute at @s unless block ~0.33 ~ ~0.33 #medabots_server:guard_pathables unless block ~0.33 ~ ~0.33 #minecraft:slabs[type=bottom] run teleport @s ~-0.2 ~ ~-0.2
execute at @s unless block ~0.33 ~ ~-0.33 #medabots_server:guard_pathables unless block ~0.33 ~ ~-0.33 #minecraft:slabs[type=bottom] run teleport @s ~-0.2 ~ ~0.2
execute at @s unless block ~-0.33 ~ ~0.33 #medabots_server:guard_pathables unless block ~-0.33 ~ ~0.33 #minecraft:slabs[type=bottom] run teleport @s ~0.2 ~ ~-0.2
execute at @s unless block ~-0.33 ~ ~-0.33 #medabots_server:guard_pathables unless block ~-0.33 ~ ~-0.33 #minecraft:slabs[type=bottom] run teleport @s ~0.2 ~ ~0.2
execute at @s unless block ~ ~1 ~0.33 #medabots_server:guard_pathables run teleport @s ~ ~ ~-0.2
execute at @s unless block ~ ~1 ~-0.33 #medabots_server:guard_pathables run teleport @s ~ ~ ~0.2
execute at @s unless block ~0.33 ~1 ~ #medabots_server:guard_pathables run teleport @s ~-0.2 ~ ~
execute at @s unless block ~-0.33 ~1 ~ #medabots_server:guard_pathables run teleport @s ~0.2 ~ ~
execute at @s unless block ~0.33 ~1 ~0.33 #medabots_server:guard_pathables run teleport @s ~-0.2 ~ ~-0.2
execute at @s unless block ~0.33 ~1 ~-0.33 #medabots_server:guard_pathables run teleport @s ~-0.2 ~ ~0.2
execute at @s unless block ~-0.33 ~1 ~0.33 #medabots_server:guard_pathables run teleport @s ~0.2 ~ ~-0.2
execute at @s unless block ~-0.33 ~1 ~-0.33 #medabots_server:guard_pathables run teleport @s ~0.2 ~ ~0.2
effect clear @s minecraft:resistance