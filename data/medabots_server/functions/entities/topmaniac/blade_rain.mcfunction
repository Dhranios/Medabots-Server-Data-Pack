scoreboard players add @s Time 1
execute if entity @s[scores={Time=..29}] positioned ~-1 ~ ~-1 run effect give @e[tag=potential_target,dx=2,dy=0,dz=2] minecraft:instant_damage 1 1 true
tag @s[scores={Time=1}] remove idle

execute at @s[scores={Time=1..5}] run teleport @s ~ ~0.4 ~
execute at @s[scores={Time=6..20}] run teleport @s ~ ~0.2 ~

tag @s[scores={Time=30}] add detach_blades
tag @s[scores={Time=30}] add idle

execute at @s[scores={Time=36..47}] run teleport @s ~ ~-0.4 ~
execute at @s[scores={Time=48}] run teleport @s ~ ~-0.2 ~

scoreboard players operation #temp TopmaniacNr = @s TopmaniacNr
scoreboard players operation #temp Time = @s Time
execute as @e[type=minecraft:armor_stand,tag=blade,tag=topmaniac_model] if score @s TopmaniacNr = #temp TopmaniacNr run function medabots_server:entities/topmaniac/blade_rain_blade
scoreboard players reset #temp TopmaniacNr
scoreboard players reset #temp Time

tag @s[scores={Time=50}] remove detach_blades
tag @s[scores={Time=50}] remove attack_blade_rain
scoreboard players set @s[scores={Time=50}] Time 0