effect give @s minecraft:resistance 9 1 true
tag @s[tag=can_move] remove can_move
execute positioned ^ ^ ^5.5 run tag @e[tag=medabot,distance=..5.5,tag=!enemy_medabot,tag=!dying,scores={State=1},tag=!was_hidden] add possible_targets
execute positioned ^ ^ ^5.5 run tag @e[tag=last_known_location,distance=..5.5] add possible_targets
tag @e[tag=possible_targets,sort=nearest,limit=1] add target
execute if entity @e[tag=target,limit=1] facing entity @e[tag=target,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!rotated] unless entity @e[tag=target,limit=1] run function medabots_server:entities/topman/rotate
execute at @s rotated ~ 0 positioned ^ ^ ^0.4 unless entity @e[distance=..0.2,type=!minecraft:area_effect_cloud] positioned as @s run function medabots_server:entities/topman/can_move
execute at @s rotated ~ 0 if entity @s[tag=can_move] run function medabots_server:entities/topman/move
execute if entity @e[tag=target,limit=1] run scoreboard players set @s Time 0
execute if entity @s[tag=can_move,scores={Time=-1}] run tag @s remove can_move
execute if entity @s[tag=!can_move] run tag @s remove rotated
execute if entity @s[tag=!can_move] run scoreboard players set @s Time 30
execute if entity @s[tag=can_move,scores={Time=0}] run scoreboard players set @s Time -100
execute if entity @s[tag=can_move] run tag @s add walking
tag @e[tag=possible_targets] remove possible_targets
tag @e[tag=target,limit=1] remove target

execute if entity @s[tag=walking,scores={Sound=0}] run playsound medabots_server:entity.topman.move hostile @a ~ ~ ~ 1
execute if entity @s[tag=walking,scores={Sound=0}] run scoreboard players set @s Sound 10

# Prevent suffocation
execute at @s unless block ~ ~ ~0.33 #medabots_server:topman_pathables unless block ~ ~ ~0.33 #minecraft:slabs[type=bottom] run teleport @s ~ ~ ~-0.2
execute at @s unless block ~ ~ ~-0.33 #medabots_server:topman_pathables unless block ~ ~ ~-0.33 #minecraft:slabs[type=bottom] run teleport @s ~ ~ ~0.2
execute at @s unless block ~0.33 ~ ~ #medabots_server:topman_pathables unless block ~0.33 ~ ~ #minecraft:slabs[type=bottom] run teleport @s ~-0.2 ~ ~
execute at @s unless block ~-0.33 ~ ~ #medabots_server:topman_pathables unless block ~-0.33 ~ ~ #minecraft:slabs[type=bottom] run teleport @s ~0.2 ~ ~
execute at @s unless block ~0.33 ~ ~0.33 #medabots_server:topman_pathables unless block ~0.33 ~ ~0.33 #minecraft:slabs[type=bottom] run teleport @s ~-0.2 ~ ~-0.2
execute at @s unless block ~0.33 ~ ~-0.33 #medabots_server:topman_pathables unless block ~0.33 ~ ~-0.33 #minecraft:slabs[type=bottom] run teleport @s ~-0.2 ~ ~0.2
execute at @s unless block ~-0.33 ~ ~0.33 #medabots_server:topman_pathables unless block ~-0.33 ~ ~0.33 #minecraft:slabs[type=bottom] run teleport @s ~0.2 ~ ~-0.2
execute at @s unless block ~-0.33 ~ ~-0.33 #medabots_server:topman_pathables unless block ~-0.33 ~ ~-0.33 #minecraft:slabs[type=bottom] run teleport @s ~0.2 ~ ~0.2
effect clear @s minecraft:resistance