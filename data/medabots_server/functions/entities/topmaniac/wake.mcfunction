scoreboard players add @s Time 1

scoreboard players set @s[scores={Time=20}] State 3
scoreboard players set @s[scores={Time=60}] State 4
execute at @s[scores={Time=71..75}] run teleport @s ~ ~0.2 ~
execute at @s[scores={Time=76..80}] run teleport @s ~ ~-0.2 ~
scoreboard players set @s[scores={Time=80}] State 1

scoreboard players set @s[scores={Time=80}] Time 0

execute if entity @s[scores={Time=1..5}] rotated ~ 0 positioned ^ ^ ^-1 if block ~0.5 ~ ~0.5 minecraft:air if block ~-0.5 ~ ~0.5 minecraft:air if block ~0.5 ~ ~-0.5 minecraft:air if block ~-0.5 ~ ~-0.5 minecraft:air at @s run teleport @s ^ ^ ^-0.5
execute if entity @s[scores={Time=10..70}] rotated ~ 0 positioned ^ ^ ^-1 if block ~0.5 ~ ~0.5 minecraft:air if block ~-0.5 ~ ~0.5 minecraft:air if block ~0.5 ~ ~-0.5 minecraft:air if block ~-0.5 ~ ~-0.5 minecraft:air at @s run teleport @s ^ ^ ^-0.1

scoreboard players operation #temp TopmaniacNr = @s TopmaniacNr
execute as @e[type=minecraft:armor_stand,tag=blade,tag=detached,tag=topmaniac_model] if score @s TopmaniacNr = #temp TopmaniacNr run function medabots_server:entities/topmaniac/wake_blade
scoreboard players reset #temp TopmaniacNr