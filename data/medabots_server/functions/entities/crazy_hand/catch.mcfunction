scoreboard players add @s Time 1
tag @s[scores={Time=1}] remove idle
tag @s[scores={Time=1}] add catch

execute at @s[scores={Time=1..5}] run teleport @s ^ ^1.6 ^
execute if entity @s[scores={Time=27..31}] run teleport @s ^ ^-1.6 ^-1
execute if entity @s[scores={Time=32..40}] run teleport @s ^ ^ ^1.8
execute if entity @s[scores={Time=61..68}] run teleport @s ^ ^ ^-1.5
execute at @s[scores={Time=32..39}] as @e[tag=potential_target,distance=..3] positioned as @s if block ^ ^ ^1 minecraft:air if block ^ ^ ^2 minecraft:air run teleport @s ^ ^ ^2
execute at @s[scores={Time=32..39}] run effect give @e[tag=potential_target,distance=..3] minecraft:instant_damage 1 0 true
execute at @s[scores={Time=40}] run effect give @e[tag=potential_target,distance=..3] minecraft:instant_damage 1 2 true
execute at @s[scores={Time=40}] as @e[tag=crazy_hand] if score @s Stage = #temp Stage run particle minecraft:explosion ~-0.25 ~0.25 ~-0.25 0.5 0.5 0.5 0 10
execute if entity @s[scores={Time=40}] as @e[tag=crazy_hand] if score @s Stage = #temp Stage run playsound medabots_server:entity.crazy_hand.power_punch hostile @a ~ ~ ~ 1

execute at @s[scores={Time=62..66}] run teleport @s ^ ^0.1 ^
execute if entity @s[scores={Time=96..100}] run teleport @s ^ ^-0.1 ^
execute if entity @s[scores={Time=75}] run playsound medabots_server:entity.crazy_hand.hard_hit hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=92}] run playsound medabots_server:entity.crazy_hand.hard_hit hostile @a ~ ~ ~ 1

tag @s[scores={Time=100}] add idle
tag @s[scores={Time=100}] remove catch
tag @s[scores={Time=100}] remove attack_catch
scoreboard players set @s[scores={Time=100}] Time 0