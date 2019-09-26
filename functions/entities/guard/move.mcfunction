execute unless block ~ ~ ~ minecraft:water if entity @s[tag=slow] unless block ~ ~ ~ #minecraft:slabs[type=bottom] if block ^ ^ ^0.4 #medabots_server:guard_pathables run teleport @s ^ ^ ^0.1 ~ ~
execute unless block ~ ~ ~ minecraft:water if entity @s[tag=slow] unless block ~ ~ ~ #minecraft:slabs[type=bottom] if block ^ ^ ^0.4 #minecraft:slabs[type=bottom] align y run teleport @s ^ ^0.5 ^0.1 ~ ~
execute unless block ~ ~ ~ minecraft:water if entity @s[tag=slow] if block ~ ~ ~ #minecraft:slabs[type=bottom] if block ^ ^ ^0.4 #medabots_server:guard_pathables run teleport @s ^ ^ ^0.1 ~ ~
execute unless block ~ ~ ~ minecraft:water if entity @s[tag=slow] if block ~ ~ ~ #minecraft:slabs[type=bottom] if block ^ ^ ^0.4 #minecraft:slabs[type=bottom] run teleport @s ^ ^ ^0.1 ~ ~
execute unless block ~ ~ ~ minecraft:water if entity @s[tag=slow] if block ~ ~ ~ #minecraft:slabs[type=bottom] unless block ^ ^ ^0.4 #minecraft:slabs[type=bottom] unless block ^ ^ ^0.4 #medabots_server:guard_pathables if block ^ ^0.5 ^0.4 #medabots_server:guard_pathables align y run teleport @s ^ ^1 ^0.1 ~ ~
execute unless block ~ ~ ~ minecraft:water if entity @s[tag=!slow,tag=!fast] unless block ~ ~ ~ #minecraft:slabs[type=bottom] if block ^ ^ ^0.4 #medabots_server:guard_pathables run teleport @s ^ ^ ^0.2 ~ ~
execute unless block ~ ~ ~ minecraft:water if entity @s[tag=!slow,tag=!fast] unless block ~ ~ ~ #minecraft:slabs[type=bottom] if block ^ ^ ^0.4 #minecraft:slabs[type=bottom] align y run teleport @s ^ ^0.5 ^0.2 ~ ~
execute unless block ~ ~ ~ minecraft:water if entity @s[tag=!slow,tag=!fast] if block ~ ~ ~ #minecraft:slabs[type=bottom] if block ^ ^ ^0.4 #medabots_server:guard_pathables run teleport @s ^ ^ ^0.2 ~ ~
execute unless block ~ ~ ~ minecraft:water if entity @s[tag=!slow,tag=!fast] if block ~ ~ ~ #minecraft:slabs[type=bottom] if block ^ ^ ^0.4 #minecraft:slabs[type=bottom] run teleport @s ^ ^ ^0.2 ~ ~
execute unless block ~ ~ ~ minecraft:water if entity @s[tag=!slow,tag=!fast] if block ~ ~ ~ #minecraft:slabs[type=bottom] unless block ^ ^ ^0.4 #minecraft:slabs[type=bottom] unless block ^ ^ ^0.4 #medabots_server:guard_pathables if block ^ ^0.5 ^0.4 #medabots_server:guard_pathables align y run teleport @s ^ ^1 ^0.2 ~ ~
execute unless block ~ ~ ~ minecraft:water if entity @s[tag=fast] unless block ~ ~ ~ #minecraft:slabs[type=bottom] if block ^ ^ ^0.4 #medabots_server:guard_pathables run teleport @s ^ ^ ^0.4 ~ ~
execute unless block ~ ~ ~ minecraft:water if entity @s[tag=fast] unless block ~ ~ ~ #minecraft:slabs[type=bottom] if block ^ ^ ^0.4 #minecraft:slabs[type=bottom] align y run teleport @s ^ ^0.5 ^0.4 ~ ~
execute unless block ~ ~ ~ minecraft:water if entity @s[tag=fast] if block ~ ~ ~ #minecraft:slabs[type=bottom] if block ^ ^ ^0.4 #medabots_server:guard_pathables run teleport @s ^ ^ ^0.4 ~ ~
execute unless block ~ ~ ~ minecraft:water if entity @s[tag=fast] if block ~ ~ ~ #minecraft:slabs[type=bottom] if block ^ ^ ^0.4 #minecraft:slabs[type=bottom] run teleport @s ^ ^ ^0.4 ~ ~
execute unless block ~ ~ ~ minecraft:water if entity @s[tag=fast] if block ~ ~ ~ #minecraft:slabs[type=bottom] unless block ^ ^ ^0.4 #minecraft:slabs[type=bottom] unless block ^ ^ ^0.4 #medabots_server:guard_pathables if block ^ ^0.5 ^0.4 #medabots_server:guard_pathables align y run teleport @s ^ ^1 ^0.4 ~ ~

execute if block ~ ~ ~ minecraft:water positioned ~ ~1 ~ if entity @s[tag=slow] if block ^ ^ ^0.4 #medabots_server:guard_pathables run teleport @s ^ ^ ^0.05 ~ ~
execute if block ~ ~ ~ minecraft:water positioned ~ ~1 ~ if entity @s[tag=slow] if block ^ ^ ^0.4 #minecraft:slabs[type=bottom] align y run teleport @s ^ ^0.5 ^0.05 ~ ~
execute if block ~ ~ ~ minecraft:water positioned ~ ~1 ~ if entity @s[tag=!slow,tag=!fast] if block ^ ^ ^0.4 #medabots_server:guard_pathables run teleport @s ^ ^ ^0.1 ~ ~
execute if block ~ ~ ~ minecraft:water positioned ~ ~1 ~ if entity @s[tag=!slow,tag=!fast] if block ^ ^ ^0.4 #minecraft:slabs[type=bottom] align y run teleport @s ^ ^0.5 ^0.1 ~ ~
execute if block ~ ~ ~ minecraft:water positioned ~ ~1 ~ if entity @s[tag=fast] if block ^ ^ ^0.4 #medabots_server:guard_pathables run teleport @s ^ ^ ^0.2 ~ ~
execute if block ~ ~ ~ minecraft:water positioned ~ ~1 ~ if entity @s[tag=fast] if block ^ ^ ^0.4 #minecraft:slabs[type=bottom] align y run teleport @s ^ ^0.5 ^0.2 ~ ~

execute at @s if block ~ ~ ~ minecraft:air positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:water unless entity @e[tag=raft,distance=..0.7] run teleport @s ~ ~ ~ ~ ~