scoreboard players add @s Time 1
tag @s[scores={Time=1}] remove idle
tag @s[scores={Time=1}] add catch
execute if entity @s[scores={Time=1}] at @e[tag=target,limit=1] facing entity @s feet run teleport @s ^ ^ ^6 ~-180 0
execute if entity @s[scores={Time=1}] store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute at @s[scores={Time=1}] positioned ^ ^ ^12 as @e[tag=crazy_hand] if score @s Stage = #temp Stage run teleport @s ~ ~ ~ ~-180 0

execute if entity @s[scores={Time=8}] run playsound medabots_server:entity.master_hand.hard_hit hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=11}] run playsound medabots_server:entity.master_hand.hard_hit hostile @a ~ ~ ~ 1

execute at @s[scores={Time=40}] as @e[tag=crazy_hand] if score @s Stage = #temp Stage run particle minecraft:explosion ~-0.25 ~0.25 ~-0.25 0.5 0.5 0.5 0 10
execute if entity @s[scores={Time=40}] as @e[tag=crazy_hand] if score @s Stage = #temp Stage run playsound medabots_server:entity.master_hand.power_punch hostile @a ~ ~ ~ 1

execute if entity @s[scores={Time=62..66}] run teleport @s ^ ^0.1 ^
execute if entity @s[scores={Time=96..100}] run teleport @s ^ ^-0.1 ^
execute if entity @s[scores={Time=75}] run playsound medabots_server:entity.master_hand.hard_hit hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=92}] run playsound medabots_server:entity.master_hand.hard_hit hostile @a ~ ~ ~ 1

tag @s[scores={Time=100}] add idle
tag @s[scores={Time=100}] remove catch
tag @s[scores={Time=100}] remove attack_catch
scoreboard players set @s[scores={Time=100}] Time 0