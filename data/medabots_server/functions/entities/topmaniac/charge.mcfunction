scoreboard players add @s Time 1
execute positioned ~-1 ~ ~-1 run effect give @e[tag=potential_target,dx=2,dy=0,dz=2] minecraft:instant_damage 1 1 true
tag @s[scores={Time=1}] remove idle

execute at @s[scores={Time=1..40}] facing entity @e[tag=target,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~

execute rotated ~ 0 positioned ^ ^ ^1 if block ~0.5 ~ ~0.5 minecraft:air if block ~-0.5 ~ ~0.5 minecraft:air if block ~0.5 ~ ~-0.5 minecraft:air if block ~-0.5 ~ ~-0.5 minecraft:air run tag @s add continue
execute rotated ~ 0 run teleport @s[tag=continue] ^ ^ ^0.3
execute rotated ~ 0 if entity @s[tag=continue] positioned ~-1 ~ ~-1 as @e[tag=potential_target,dx=2,dy=0,dz=2] positioned as @s positioned ^ ^ ^0.3 if block ~0.4 ~ ~0.4 minecraft:air if block ~-0.4 ~ ~0.4 minecraft:air if block ~0.4 ~ ~-0.4 minecraft:air if block ~-0.4 ~ ~-0.4 minecraft:air positioned as @s run teleport @s ^ ^ ^0.3
scoreboard players set @s[tag=!continue] Time 80
tag @s remove continue

tag @s[scores={Time=80}] add idle
tag @s[scores={Time=80}] remove attack_charge
scoreboard players set @s[scores={Time=80}] Time 0