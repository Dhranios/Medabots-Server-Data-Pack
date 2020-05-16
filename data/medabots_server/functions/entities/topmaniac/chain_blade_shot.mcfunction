scoreboard players add @s Time 1
execute if entity @s[scores={Time=..1}] positioned ~-1 ~ ~-1 run effect give @e[tag=potential_target,dx=2,dy=0,dz=2] minecraft:instant_damage 1 1 true

tag @s[scores={Time=2}] add detach_blade_0
tag @s[scores={Time=18}] add detach_blade_1
tag @s[scores={Time=34}] add detach_blade_2
tag @s[scores={Time=50}] add detach_blade_3
tag @s[scores={Time=66}] add detach_blade_4
tag @s[scores={Time=82}] add detach_blade_5
tag @s[scores={Time=98}] add detach_blade_6
tag @s[scores={Time=114}] add detach_blade_7
tag @s[scores={Time=130}] add detach_blade_8

scoreboard players operation #temp TopmaniacNr = @s TopmaniacNr
scoreboard players operation #temp Time = @s Time
execute facing entity @e[tag=target,limit=1] feet as @e[type=minecraft:armor_stand,tag=blade,tag=topmaniac_model] if score @s TopmaniacNr = #temp TopmaniacNr run function medabots_server:entities/topmaniac/chain_blade_shot_blade
scoreboard players reset #temp TopmaniacNr
scoreboard players reset #temp Time

tag @s[scores={Time=133}] remove detach_blade_0
tag @s[scores={Time=133}] remove detach_blade_1
tag @s[scores={Time=133}] remove detach_blade_2
tag @s[scores={Time=133}] remove detach_blade_3
tag @s[scores={Time=133}] remove detach_blade_4
tag @s[scores={Time=133}] remove detach_blade_5
tag @s[scores={Time=133}] remove detach_blade_6
tag @s[scores={Time=133}] remove detach_blade_7
tag @s[scores={Time=133}] remove detach_blade_8
tag @s[scores={Time=133}] remove attack_chain_blade_shot
scoreboard players set @s[scores={Time=133}] Time 0