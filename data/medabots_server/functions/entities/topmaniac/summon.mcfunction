scoreboard players add @s Time 1
execute positioned ~-1 ~ ~-1 run effect give @e[tag=potential_target,dx=2,dy=0,dz=2] minecraft:instant_damage 1 1 true
tag @s[scores={Time=1}] remove idle

execute at @s[scores={Time=1..5}] run teleport @s ~ ~0.2 ~
execute at @s[scores={Time=6..10}] run teleport @s ~ ~-0.2 ~
execute at @s[scores={Time=10}] positioned ^-1 ^ ^ run function medabots_server:spawn_entities/topman
execute at @s[scores={Time=10}] positioned ^1 ^ ^ run function medabots_server:spawn_entities/topman

tag @s[scores={Time=10}] add idle
tag @s[scores={Time=10}] remove attack_summon
scoreboard players set @s[scores={Time=10}] Time 0