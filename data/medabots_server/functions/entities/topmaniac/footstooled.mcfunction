execute store result score #temp Health run data get entity @s AbsorptionAmount 100
scoreboard players remove #temp Health 10
execute store result entity @s AbsorptionAmount float 0.01 run scoreboard players get #temp Health
scoreboard players reset #temp Health

execute at @s[scores={Time=71,State=4}] run teleport @s ~ ~-0.2 ~
execute at @s[scores={Time=72,State=4}] run teleport @s ~ ~-0.4 ~
execute at @s[scores={Time=73,State=4}] run teleport @s ~ ~-0.6 ~
execute at @s[scores={Time=74,State=4}] run teleport @s ~ ~-0.8 ~
execute at @s[scores={Time=75,State=4}] run teleport @s ~ ~-1 ~
execute at @s[scores={Time=76,State=4}] run teleport @s ~ ~-0.8 ~
execute at @s[scores={Time=77,State=4}] run teleport @s ~ ~-0.6 ~
execute at @s[scores={Time=78,State=4}] run teleport @s ~ ~-0.4 ~
execute at @s[scores={Time=79,State=4}] run teleport @s ~ ~-0.2 ~

scoreboard players set @s State 2
scoreboard players set @s Time 0
scoreboard players set @s Dialog 0
tag @s add idle
tag @s[tag=detach_blades] add detach_blade_0
tag @s[tag=detach_blades] add detach_blade_1
tag @s[tag=detach_blades] add detach_blade_2
tag @s[tag=detach_blades] add detach_blade_3
tag @s[tag=detach_blades] add detach_blade_4
tag @s[tag=detach_blades] add detach_blade_5
tag @s[tag=detach_blades] add detach_blade_6
tag @s[tag=detach_blades] add detach_blade_7
tag @s[tag=detach_blades] add detach_blade_8
tag @s remove detach_blades
tag @s remove attack_charge
tag @s remove attack_roll
tag @s remove attack_chain_blade_shot
tag @s remove attack_blade_burst
tag @s remove attack_blade_rain
tag @s remove attack_summon