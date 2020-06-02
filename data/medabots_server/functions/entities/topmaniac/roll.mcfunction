scoreboard players add @s Time 1
execute positioned ~-1 ~ ~-1 run effect give @e[tag=potential_target,dx=2,dy=2,dz=2] minecraft:instant_damage 1 1 true
tag @s[scores={Time=1}] remove idle
tag @s[scores={Time=1}] add roll_start
execute at @s[scores={Time=1..5}] run teleport @s ~ ~0.2 ~
execute at @s[scores={Time=6..10}] run teleport @s ~ ~-0.1 ~
tag @s[scores={Time=10}] remove roll_start
tag @s[scores={Time=10}] add roll

execute if entity @s[scores={Time=11}] rotated ~ 0 positioned ~ ~-0.4 ~ positioned ^ ^ ^1 if block ~0.5 ~ ~0.5 minecraft:air if block ~-0.5 ~ ~0.5 minecraft:air if block ~0.5 ~ ~-0.5 minecraft:air if block ~-0.5 ~ ~-0.5 minecraft:air unless block ~ ~-1 ~ minecraft:air run tag @s add continue
execute if entity @s[scores={Time=11}] rotated ~ 0 run teleport @s[tag=continue] ^ ^ ^0.6
execute if entity @s[scores={Time=11}] rotated ~ 0 if entity @s[tag=continue] positioned ~-1 ~-0.5 ~-1 as @e[tag=potential_target,dx=2,dy=2,dz=2] positioned as @s positioned ^ ^ ^0.6 if block ~0.4 ~ ~0.4 minecraft:air if block ~-0.4 ~ ~0.4 minecraft:air if block ~0.4 ~ ~-0.4 minecraft:air if block ~-0.4 ~ ~-0.4 minecraft:air positioned as @s run teleport @s ^ ^ ^0.6
execute if entity @s[scores={Time=11}] run scoreboard players set @s[tag=continue] Time 10
tag @s remove continue

tag @s[scores={Time=12}] add roll_stop
tag @s[scores={Time=12}] remove roll
execute at @s[scores={Time=13..17}] run teleport @s ~ ~0.1 ~
execute at @s[scores={Time=18..22}] run teleport @s ~ ~-0.2 ~
tag @s[scores={Time=22}] remove roll_stop
tag @s[scores={Time=22}] add idle
tag @s[scores={Time=22}] remove attack_roll
scoreboard players set @s[scores={Time=22}] Time 0