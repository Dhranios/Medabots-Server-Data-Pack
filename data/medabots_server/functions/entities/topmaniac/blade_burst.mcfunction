scoreboard players add @s Time 1
execute if entity @s[scores={Time=..9}] positioned ~-1 ~ ~-1 run effect give @e[tag=potential_target,dx=2,dy=0,dz=2] minecraft:instant_damage 1 1 true
tag @s[scores={Time=1}] remove idle

execute at @s[scores={Time=1..5}] run teleport @s ~ ~0.2 ~
execute at @s[scores={Time=6..10}] run teleport @s ~ ~-0.2 ~

tag @s[scores={Time=10}] add detach_blades
tag @s[scores={Time=10}] add idle

scoreboard players operation #temp TopmaniacNr = @s TopmaniacNr
scoreboard players operation #temp Time = @s Time
execute as @e[type=minecraft:armor_stand,tag=blade,tag=topmaniac_model] if score @s TopmaniacNr = #temp TopmaniacNr run function medabots_server:entities/topmaniac/blade_burst_blade
scoreboard players reset #temp TopmaniacNr
scoreboard players reset #temp Time

tag @s[scores={Time=12}] remove detach_blades
tag @s[scores={Time=12}] remove attack_blade_burst
scoreboard players set @s[scores={Time=12}] Time 0