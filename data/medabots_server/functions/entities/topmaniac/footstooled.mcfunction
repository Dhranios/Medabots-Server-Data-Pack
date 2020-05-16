execute store result score #temp Health run data get entity @s AbsorptionAmount 100
scoreboard players remove #temp Health 1
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

execute at @s[scores={Time=1}] unless entity @s[tag=!attack_summon,tag=!attack_blade_burst] run teleport @s ~ ~-0.2 ~
execute at @s[scores={Time=2}] unless entity @s[tag=!attack_summon,tag=!attack_blade_burst] run teleport @s ~ ~-0.4 ~
execute at @s[scores={Time=3}] unless entity @s[tag=!attack_summon,tag=!attack_blade_burst] run teleport @s ~ ~-0.6 ~
execute at @s[scores={Time=4}] unless entity @s[tag=!attack_summon,tag=!attack_blade_burst] run teleport @s ~ ~-0.8 ~
execute at @s[scores={Time=5}] unless entity @s[tag=!attack_summon,tag=!attack_blade_burst] run teleport @s ~ ~-1 ~
execute at @s[scores={Time=6}] unless entity @s[tag=!attack_summon,tag=!attack_blade_burst] run teleport @s ~ ~-0.8 ~
execute at @s[scores={Time=7}] unless entity @s[tag=!attack_summon,tag=!attack_blade_burst] run teleport @s ~ ~-0.6 ~
execute at @s[scores={Time=8}] unless entity @s[tag=!attack_summon,tag=!attack_blade_burst] run teleport @s ~ ~-0.4 ~
execute at @s[scores={Time=9}] unless entity @s[tag=!attack_summon,tag=!attack_blade_burst] run teleport @s ~ ~-0.2 ~

execute at @s[scores={Time=1},tag=attack_blade_rain] run teleport @s ~ ~-0.4 ~
execute at @s[scores={Time=2},tag=attack_blade_rain] run teleport @s ~ ~-0.8 ~
execute at @s[scores={Time=3},tag=attack_blade_rain] run teleport @s ~ ~-1.2 ~
execute at @s[scores={Time=4},tag=attack_blade_rain] run teleport @s ~ ~-1.6 ~
execute at @s[scores={Time=5},tag=attack_blade_rain] run teleport @s ~ ~-2 ~
execute at @s[scores={Time=6},tag=attack_blade_rain] run teleport @s ~ ~-2.2 ~
execute at @s[scores={Time=7},tag=attack_blade_rain] run teleport @s ~ ~-2.4 ~
execute at @s[scores={Time=8},tag=attack_blade_rain] run teleport @s ~ ~-2.6 ~
execute at @s[scores={Time=9},tag=attack_blade_rain] run teleport @s ~ ~-2.8 ~
execute at @s[scores={Time=10},tag=attack_blade_rain] run teleport @s ~ ~-3 ~
execute at @s[scores={Time=11},tag=attack_blade_rain] run teleport @s ~ ~-3.2 ~
execute at @s[scores={Time=12},tag=attack_blade_rain] run teleport @s ~ ~-3.4 ~
execute at @s[scores={Time=13},tag=attack_blade_rain] run teleport @s ~ ~-3.6 ~
execute at @s[scores={Time=14},tag=attack_blade_rain] run teleport @s ~ ~-3.8 ~
execute at @s[scores={Time=15},tag=attack_blade_rain] run teleport @s ~ ~-4 ~
execute at @s[scores={Time=16},tag=attack_blade_rain] run teleport @s ~ ~-4.2 ~
execute at @s[scores={Time=17},tag=attack_blade_rain] run teleport @s ~ ~-4.4 ~
execute at @s[scores={Time=18},tag=attack_blade_rain] run teleport @s ~ ~-4.6 ~
execute at @s[scores={Time=19},tag=attack_blade_rain] run teleport @s ~ ~-4.8 ~
execute at @s[scores={Time=20..35},tag=attack_blade_rain] run teleport @s ~ ~-5 ~
execute at @s[scores={Time=36},tag=attack_blade_rain] run teleport @s ~ ~-4.6 ~
execute at @s[scores={Time=37},tag=attack_blade_rain] run teleport @s ~ ~-4.2 ~
execute at @s[scores={Time=38},tag=attack_blade_rain] run teleport @s ~ ~-3.8 ~
execute at @s[scores={Time=39},tag=attack_blade_rain] run teleport @s ~ ~-3.4 ~
execute at @s[scores={Time=40},tag=attack_blade_rain] run teleport @s ~ ~-3 ~
execute at @s[scores={Time=41},tag=attack_blade_rain] run teleport @s ~ ~-2.6 ~
execute at @s[scores={Time=42},tag=attack_blade_rain] run teleport @s ~ ~-2.2 ~
execute at @s[scores={Time=43},tag=attack_blade_rain] run teleport @s ~ ~-1.8 ~
execute at @s[scores={Time=44},tag=attack_blade_rain] run teleport @s ~ ~-1.4 ~
execute at @s[scores={Time=45},tag=attack_blade_rain] run teleport @s ~ ~-1 ~
execute at @s[scores={Time=46},tag=attack_blade_rain] run teleport @s ~ ~-0.6 ~
execute at @s[scores={Time=47},tag=attack_blade_rain] run teleport @s ~ ~-0.2 ~

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