execute if entity @s[scores={Time=0}] positioned ~-1 ~ ~-1 run effect give @e[tag=potential_target,dx=2,dy=0,dz=2] minecraft:instant_damage 1 1 true
execute if entity @s[scores={Time=0}] at @e[tag=target,limit=1] facing entity @s feet rotated ~5 0 positioned ^ ^ ^8 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["move_target"],Duration:1}
execute facing entity @e[tag=move_target,limit=1] feet rotated ~ 0 positioned ^ ^ ^1 if block ~0.5 ~ ~0.5 minecraft:air if block ~-0.5 ~ ~0.5 minecraft:air if block ~0.5 ~ ~-0.5 minecraft:air if block ~-0.5 ~ ~-0.5 minecraft:air unless block ~ ~-1 ~ minecraft:air run tag @s add continue
execute facing entity @e[tag=move_target,limit=1] feet rotated ~ 0 run teleport @s[tag=continue] ^ ^ ^0.15
execute facing entity @e[tag=move_target,limit=1] feet rotated ~ 0 if entity @s[tag=continue] positioned ~-1 ~ ~-1 as @e[tag=potential_target,dx=2,dy=0,dz=2] positioned as @s positioned ^ ^ ^0.3 if block ~0.4 ~ ~0.4 minecraft:air if block ~-0.4 ~ ~0.4 minecraft:air if block ~0.4 ~ ~-0.4 minecraft:air if block ~-0.4 ~ ~-0.4 minecraft:air positioned as @s run teleport @s ^ ^ ^0.3
tag @s remove continue
kill @e[tag=move_target,limit=1,type=minecraft:area_effect_cloud]

# Select random attack
scoreboard players set @s[scores={Dialog=30}] Dialog 0
execute unless entity @s[scores={Dialog=0..}] run scoreboard players add @s Dialog 0
execute if entity @a[distance=..30,tag=target] run scoreboard players add @s[scores={Time=0,Dialog=0}] Dialog 1
scoreboard players add @s[scores={Dialog=1..29}] Dialog 1
execute if entity @s[scores={Dialog=30}] if entity @e[distance=..20,tag=topman] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","charge"],Duration:1}
execute if entity @s[scores={Dialog=30}] if entity @e[distance=..20,tag=topman] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","roll"],Duration:1}
execute if entity @s[scores={Dialog=30}] if entity @e[distance=..20,tag=topman] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","chain_blade_shot"],Duration:1}
execute if entity @s[scores={Dialog=30}] if entity @e[distance=..20,tag=topman] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","blade_burst"],Duration:1}
execute if entity @s[scores={Dialog=30}] if entity @e[distance=..20,tag=topman] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","blade_rain"],Duration:1}
execute if entity @s[scores={Dialog=30}] run tag @e[sort=random,limit=1,type=minecraft:area_effect_cloud,tag=random_select] add selected
execute if entity @s[scores={Dialog=30}] if entity @e[distance=..1,tag=random_select,tag=selected,tag=charge] run tag @s add attack_charge
execute if entity @s[scores={Dialog=30}] if entity @e[distance=..1,tag=random_select,tag=selected,tag=roll] run tag @s add attack_roll
execute if entity @s[scores={Dialog=30}] if entity @e[distance=..1,tag=random_select,tag=selected,tag=chain_blade_shot] run tag @s add attack_chain_blade_shot
execute if entity @s[scores={Dialog=30}] if entity @e[distance=..1,tag=random_select,tag=selected,tag=blade_burst] run tag @s add attack_blade_burst
execute if entity @s[scores={Dialog=30}] if entity @e[distance=..1,tag=random_select,tag=selected,tag=blade_rain] run tag @s add attack_blade_rain
execute if entity @s[scores={Dialog=30}] unless entity @e[distance=..20,tag=topman] run tag @s add attack_summon
kill @e[type=minecraft:area_effect_cloud,tag=random_select]

scoreboard players operation #temp TopmaniacNr = @s TopmaniacNr
execute if entity @s[scores={Time=0}] as @e[type=minecraft:armor_stand,tag=blade,tag=detached,tag=topmaniac_model] if score @s TopmaniacNr = #temp TopmaniacNr run function medabots_server:entities/topmaniac/wake_blade
scoreboard players reset #temp TopmaniacNr

# Execute attack
execute if entity @s[tag=attack_charge] run function medabots_server:entities/topmaniac/charge
execute if entity @s[tag=attack_roll] run function medabots_server:entities/topmaniac/roll
execute if entity @s[tag=attack_chain_blade_shot] run function medabots_server:entities/topmaniac/chain_blade_shot
execute if entity @s[tag=attack_blade_burst] run function medabots_server:entities/topmaniac/blade_burst
execute if entity @s[tag=attack_blade_rain] run function medabots_server:entities/topmaniac/blade_rain
execute if entity @s[tag=attack_summon] run function medabots_server:entities/topmaniac/summon