scoreboard players add @s Time 1
tag @s[scores={Time=1}] remove idle
tag @s[scores={Time=1}] add double_punch
execute if entity @s[scores={Time=1}] at @e[tag=target,limit=1] facing entity @s feet run teleport @s ^ ^ ^6 ~-180 0
execute if entity @s[scores={Time=1}] store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute at @s[scores={Time=1}] positioned ^ ^ ^12 as @e[tag=crazy_hand] if score @s Stage = #temp Stage run teleport @s ~ ~ ~ ~-180 0

execute at @s[scores={Time=1}] run teleport @s ~ ~ ~ ~90 ~
execute at @s[scores={Time=1..20}] run teleport @s ^0.3 ^ ^
execute if entity @s[scores={Time=21..30}] run teleport @s ^-0.5 ^0.3 ^
execute at @s[scores={Time=30}] run teleport @s ~ ~ ~ ~-90 ~
execute if entity @s[scores={Time=31..35}] run teleport @s ^ ^-0.1 ^-1.25
execute if entity @s[scores={Time=36..40}] run teleport @s ^ ^-0.55 ^1.25
execute if entity @s[scores={Time=41..45}] run teleport @s ^ ^ ^1.25
execute at @s[scores={Time=36..44}] as @e[tag=potential_target,distance=..3] positioned as @s if block ^ ^ ^1 minecraft:air if block ^ ^ ^2 minecraft:air run teleport @s ^ ^ ^2
execute at @s[scores={Time=36..44}] run effect give @e[tag=potential_target,distance=..3] minecraft:instant_damage 1 0 true
execute at @s[scores={Time=45}] run effect give @e[tag=potential_target,distance=..3] minecraft:instant_damage 1 2 true
execute at @s[scores={Time=45}] as @e[tag=crazy_hand] if score @s Stage = #temp Stage run particle minecraft:explosion ~-0.25 ~0.25 ~-0.25 0.5 0.5 0.5 0 10
execute if entity @s[scores={Time=45}] as @e[tag=crazy_hand] if score @s Stage = #temp Stage run playsound medabots_server:entity.master_hand.power_punch hostile @a ~ ~ ~ 1

execute if entity @s[scores={Time=46..50}] run teleport @s ^ ^0.1 ^-1.2
execute if entity @s[scores={Time=86..90}] run teleport @s ^ ^-0.1 ^
execute if entity @s[scores={Time=65}] run playsound medabots_server:entity.master_hand.hard_hit hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=82}] run playsound medabots_server:entity.master_hand.hard_hit hostile @a ~ ~ ~ 1

tag @s[scores={Time=90}] add idle
tag @s[scores={Time=90}] remove double_punch
tag @s[scores={Time=90}] remove attack_double_punch
scoreboard players set @s[scores={Time=90}] Time 0