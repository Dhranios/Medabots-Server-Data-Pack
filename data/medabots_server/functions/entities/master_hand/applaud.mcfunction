scoreboard players add @s Time 1
tag @s[scores={Time=1}] remove idle
tag @s[scores={Time=1}] add applaud
execute if entity @s[scores={Time=1}] at @e[tag=target,limit=1] facing entity @s feet run teleport @s ^ ^ ^6 ~-180 0
execute if entity @s[scores={Time=1}] store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute at @s[scores={Time=1}] positioned ^ ^ ^12 as @e[tag=crazy_hand] if score @s Stage = #temp Stage run teleport @s ~ ~ ~ ~-180 0

execute at @s[scores={Time=1}] run teleport @s ~ ~ ~ ~90 ~
execute at @s[scores={Time=1..20}] run teleport @s ^0.3 ^ ^
execute if entity @s[scores={Time=21..30}] run teleport @s ^-0.8 ^ ^
execute if entity @s[scores={Time=31..35}] run teleport @s ^2 ^ ^
execute if entity @s[scores={Time=36..40}] run teleport @s ^-2 ^ ^
execute if entity @s[scores={Time=41..45}] run teleport @s ^2 ^ ^
execute if entity @s[scores={Time=46..50}] run teleport @s ^-2 ^ ^
execute if entity @s[scores={Time=51..55}] run teleport @s ^2 ^ ^
execute if entity @s[scores={Time=56..60}] run teleport @s ^-2 ^ ^
execute if entity @s[scores={Time=61..65}] run teleport @s ^2 ^ ^
execute if entity @s[scores={Time=66..70}] run teleport @s ^-1.8 ^ ^
execute at @s[scores={Time=31..35}] as @e[tag=potential_target,distance=..3] positioned as @s if block ^1 ^ ^ minecraft:air if block ^2 ^ ^ minecraft:air run teleport @s ^2 ^ ^
execute at @s[scores={Time=31..35}] run effect give @e[tag=potential_target,distance=..3] minecraft:instant_damage 1 0 true
execute at @s[scores={Time=41..45}] as @e[tag=potential_target,distance=..3] positioned as @s if block ^1 ^ ^ minecraft:air if block ^2 ^ ^ minecraft:air run teleport @s ^2 ^ ^
execute at @s[scores={Time=41..45}] run effect give @e[tag=potential_target,distance=..3] minecraft:instant_damage 1 0 true
execute at @s[scores={Time=51..55}] as @e[tag=potential_target,distance=..3] positioned as @s if block ^1 ^ ^ minecraft:air if block ^2 ^ ^ minecraft:air run teleport @s ^2 ^ ^
execute at @s[scores={Time=51..55}] run effect give @e[tag=potential_target,distance=..3] minecraft:instant_damage 1 0 true
execute at @s[scores={Time=61..65}] as @e[tag=potential_target,distance=..3] positioned as @s if block ^1 ^ ^ minecraft:air if block ^2 ^ ^ minecraft:air run teleport @s ^2 ^ ^
execute at @s[scores={Time=61..65}] run effect give @e[tag=potential_target,distance=..3] minecraft:instant_damage 1 0 true
execute if entity @s[scores={Time=35}] as @e[tag=crazy_hand] if score @s Stage = #temp Stage run playsound medabots_server:entity.master_hand.fake_out_land hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=45}] as @e[tag=crazy_hand] if score @s Stage = #temp Stage run playsound medabots_server:entity.master_hand.fake_out_land hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=55}] as @e[tag=crazy_hand] if score @s Stage = #temp Stage run playsound medabots_server:entity.master_hand.fake_out_land hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=65}] as @e[tag=crazy_hand] if score @s Stage = #temp Stage run playsound medabots_server:entity.master_hand.fake_out_land hostile @a ~ ~ ~ 1

execute at @s[scores={Time=75}] run teleport @s ~ ~ ~ ~-90 ~
execute if entity @s[scores={Time=76..80}] run teleport @s ^ ^0.1 ^
execute if entity @s[scores={Time=86..90}] run teleport @s ^ ^-0.1 ^

tag @s[scores={Time=90}] add idle
tag @s[scores={Time=90}] remove applaud
tag @s[scores={Time=90}] remove attack_applaud
scoreboard players set @s[scores={Time=90}] Time 0